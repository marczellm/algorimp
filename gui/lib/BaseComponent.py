import copy
import os
import xml.etree.ElementTree as Xml

from typing import Union
import tkinter as tk
from tkinter import ttk
from warnings import warn

from .misc import path

_widgets = copy.copy(tk.__dict__)
_widgets.update(ttk.__dict__)


class BaseComponent:
    _registry = {}

    @classmethod
    def register(cls, typ: type, filepath=None):
        name = typ.__name__
        filepath = filepath or os.path.join(path, name + '.xml')
        if os.path.isfile(filepath):
            cls._registry[name] = [typ, filepath]
        else:
            raise Exception(filepath + ' does not exist!')

    @classmethod
    def __init_subclass__(cls, filepath=None):
        super().__init_subclass__()
        cls.register(cls, filepath)

    def __init__(self):
        self.model = None

    def construct(self, elem: Xml.Element, parent: Union[tk.Widget, tk.Tk]):
        init_args = {k: v for k, v in elem.attrib.items() if '-' not in k}
        pack_args = {k[5:]: v for k, v in elem.attrib.items() if 'pack-' in k}
        grid_args = {k[5:]: v for k, v in elem.attrib.items() if 'grid-' in k}
        place_args = {k[6:]: v for k, v in elem.attrib.items() if 'place-' in k}

        widget_class = _widgets[elem.tag]
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
                oprop = getattr(type(self.model), name)
                opropi = getattr(self.model, oprop.opropi_name)
                if opropi.to_view or opropi.to_model:
                    warn('Erasing previous binding direction settings on property "{}"'.format(name))
                opropi.to_view = to_view
                opropi.to_model = to_model
                if 'variable' in key:
                    init_args[key] = opropi.var
                else:
                    init_args[key] = getattr(self.model, name)
                    warn('Binding to non-variable property "{}" is one-time: it will not update'.format(key))

        widget = widget_class(parent, **init_args)
        for child in elem:
            self.construct(child, widget)

        if pack_args:
            widget.pack(**pack_args)
        elif grid_args:
            widget.grid(**grid_args)
        elif place_args:
            widget.place(**place_args)
        else:
            widget.pack()
        return widget
