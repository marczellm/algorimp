import copy
import os
import xml.etree.ElementTree as Xml

from typing import Union
import tkinter as tk
from tkinter import ttk
from warnings import warn

from .Binding import Binding
from .misc import path
from .ViewModel import ViewModel


class BaseComponent:
    _widget_registry = copy.copy(tk.__dict__)
    _widget_registry.update(ttk.__dict__)
    _component_registry = {}
    _windows = []
    template = ''
    template_path = ''

    @classmethod
    def register(cls, component_class: type):
        name = component_class.__name__
        if issubclass(component_class, BaseComponent):
            if not cls.template and not cls.template_path:
                template_path = os.path.join(path, name + '.xml')
                if os.path.isfile(template_path):
                    cls.template_path = template_path
            cls._component_registry[name] = component_class
        elif issubclass(component_class, tk.Widget):
            cls._widget_registry[name] = component_class

    @classmethod
    def __init_subclass__(cls):
        super().__init_subclass__()
        cls.register(cls)

    def __init__(self, parent, model: ViewModel=None, **kwargs):
        self.model = model  # type: ViewModel
        self.parent = parent
        self.named_widgets = {}
        self.root_widget = None
        self.bindings = {}
        tree = self.parsed_template()
        if isinstance(tree, Xml.ElementTree):
            tree = tree.getroot()
        if tree is not None:
            self.root_widget = tk.Frame(parent)
            self.construct(tree, self.root_widget)

    def __getattr__(self, item):
        if item in self.named_widgets:
            return self.named_widgets[item]
        else:
            raise AttributeError

    def parsed_template(self):
        if self.template:
            return Xml.fromstring(self.template)
        elif self.template_path:
            return Xml.parse(self.template_path)

    def construct(self, elem: Xml.Element, parent: Union[tk.Widget, tk.Tk]):
        init_args = {k: v for k, v in elem.attrib.items() if '-' not in k}
        pack_args = {k[5:]: v for k, v in elem.attrib.items() if 'pack-' in k}
        grid_args = {k[5:]: v for k, v in elem.attrib.items() if 'grid-' in k}
        place_args = {k[6:]: v for k, v in elem.attrib.items() if 'place-' in k}

        if elem.tag in self._widget_registry:
            cls = self._widget_registry[elem.tag]
        else:
            cls = self._component_registry[elem.tag]

        if elem.text and elem.text.strip():
            init_args['text'] = elem.text.strip()

        bindings = []

        for key, name in init_args.items():
            if 'command' in key:
                init_args[key] = getattr(self, name) if hasattr(self, name) else getattr(self.model, name)
            elif name.startswith('[') and name.endswith(']') or name.startswith('(') and name.endswith(')'):
                to_view = False
                to_model = False
                if name.startswith('[') and name.endswith(']'):
                    name = name[1:-1]
                    to_view = True
                if name.startswith('(') and name.endswith(')'):
                    name = name[1:-1]
                    to_model = True
                source_property = getattr(type(self.model), name)
                binding = Binding(source=self.model, source_prop=source_property, target_prop=key,
                                  to_model=to_model, to_view=to_view)
                if 'variable' in key:
                    init_args[key] = binding.var
                else:
                    init_args[key] = getattr(self.model, name)
                    warn('Binding to non-variable property "{}" is one-time: it will not update'.format(key))
                bindings.append(binding)
                source_property.bindings.append(binding)

        component = cls(parent, **init_args)
        widget = component.root_widget if isinstance(component, BaseComponent) else component
        for binding in bindings:
            self.bindings[str(widget) + '.' + binding.view_property_name] = binding

        if 'name' in init_args:
            self.named_widgets[init_args['name']] = component

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
        return component
