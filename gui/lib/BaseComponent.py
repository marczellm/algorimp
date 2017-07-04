import copy
import os
import xml.etree.ElementTree as Xml

from typing import Union
import tkinter as tk
from tkinter import ttk
from warnings import warn

from .misc import path


class BaseComponent:
    _widget_registry = copy.copy(tk.__dict__)
    _widget_registry.update(ttk.__dict__)
    _component_registry = {}
    _windows = []

    @classmethod
    def register(cls, typ: type, filepath=None):
        name = typ.__name__
        cls._widget_registry[name] = typ
        filepath = filepath or os.path.join(path, name + '.xml')
        if os.path.isfile(filepath):
            cls._component_registry[name] = [typ, filepath]

    @classmethod
    def __init_subclass__(cls, filepath=None):
        super().__init_subclass__()
        cls.register(cls, filepath)

    def __init__(self):
        self.model = None
        self.named_widgets = {}

    def __getattr__(self, item):
        if item in self.named_widgets:
            return self.named_widgets[item]
        else:
            raise AttributeError

    def construct(self, elem: Xml.Element, parent: Union[tk.Widget, tk.Tk]):
        init_args = {k: v for k, v in elem.attrib.items() if '-' not in k}
        pack_args = {k[5:]: v for k, v in elem.attrib.items() if 'pack-' in k}
        grid_args = {k[5:]: v for k, v in elem.attrib.items() if 'grid-' in k}
        place_args = {k[6:]: v for k, v in elem.attrib.items() if 'place-' in k}

        widget_class = self._widget_registry[elem.tag]
        if elem.text and elem.text.strip():
            init_args['text'] = elem.text.strip()

        for key, name in init_args.items():
            if 'command' in key:
                if hasattr(self, name):
                    init_args[key] = getattr(self, name)
                else:
                    init_args[key] = getattr(self.model, name)
            elif name.startswith('[') and name.endswith(']') or name.startswith('(') and name.endswith(')'):
                to_view = False
                to_model = False
                if name.startswith('[') and name.endswith(']'):
                    name = name[1:-1]
                    to_view = True
                if name.startswith('(') and name.endswith(')'):
                    name = name[1:-1]
                    to_model = True
                observable_property = getattr(type(self.model), name)
                property_instance = getattr(self.model, observable_property.instance_name)
                if 'variable' in key and (property_instance.to_view or property_instance.to_model):
                    warn('Different binding directions on the same property currently not supported. '
                         'Erasing previous binding direction settings on property "{}"'.format(name))
                property_instance.to_view = to_view
                property_instance.to_model = to_model
                if 'variable' in key:
                    init_args[key] = property_instance.var
                else:
                    init_args[key] = getattr(self.model, name)
                    warn('Binding to non-variable property "{}" is one-time: it will not update'.format(key))

        widget = widget_class(parent, **init_args)

        if 'name' in init_args:
            self.named_widgets[init_args['name']] = widget
        for child in elem:
            self.construct(child, widget)
        if widget.children and next(iter(widget.children.values())).winfo_manager() == 'grid':
            columns = widget.grid_size()
            for i in range(columns[0]):
                widget.grid_columnconfigure(i, weight=1)

        if pack_args:
            widget.pack(**pack_args)
        elif grid_args:
            widget.grid(**grid_args)
        elif place_args:
            widget.place(**place_args)
        else:
            widget.pack()
        return widget
