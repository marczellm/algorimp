import copy
import os
import xml.etree.ElementTree as Xml
import tkinter as tk
from tkinter import ttk
from typing import Union

path = 'gui'
_registry = {}
_widgets = copy.copy(tk.__dict__)
_widgets.update(ttk.__dict__)


def register(cls: type):
    name = cls.__name__
    filepath = os.path.join(path, name + '.xml')
    if os.path.isfile(filepath):
        _registry[name] = filepath
    else:
        raise Exception(filepath + ' does not exist!')


class BaseComponent:
    __type_mapping = {
        int: tk.IntVar,
        str: tk.StringVar,
        bool: tk.BooleanVar,
        float: tk.DoubleVar
    }

    def __new__(cls: type):
        register(cls)
        return super().__new__(cls)

    def __init__(self):
        self.__bound_variables = {}

    def construct(self, elem: Xml.Element, parent: Union[tk.Widget, tk.Tk]):
        init_args = {k: v for k, v in elem.attrib.items() if '-' not in k}
        pack_args = {k[5:]: v for k, v in elem.attrib.items() if 'pack-' in k}
        grid_args = {k[5:]: v for k, v in elem.attrib.items() if 'grid-' in k}
        place_args = {k[6:]: v for k, v in elem.attrib.items() if 'place-' in k}

        widget_class = _widgets[elem.tag]
        if elem.text and elem.text.strip():
            init_args['text'] = elem.text.strip()

        for key, membername in init_args.items():
            if 'command' in key:
                init_args[key] = getattr(self, membername)
            if 'variable' in key:
                var = None
                if membername in self.__bound_variables:
                    var = self.__bound_variables[membername]
                else:
                    private_membername = '_' + membername
                    value = getattr(self, private_membername)
                    typ = type(value)
                    var = self.__type_mapping[typ]()
                    if typ not in self.__type_mapping.keys():
                        raise Exception('Binding to {} not supported'.format(typ))

                    def getter(this):
                        return getattr(this, private_membername)

                    def setter(this, val):
                        setattr(this, private_membername, val)
                        var.set(val)

                    setattr(type(self), membername, property(getter, setter))
                    var.trace_add('write', lambda *_: setattr(self, private_membername, var.get()))
                    self.__bound_variables[membername] = var
                init_args[key] = var

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


class BaseWindow(BaseComponent):
    def __init__(self):
        super().__init__()
        self.title = ''


def show(window: BaseWindow):
    name = type(window).__name__
    tree = Xml.parse(_registry[name])
    hwnd = tk.Tk()
    hwnd.wm_title(window.title)
    widget = window.construct(tree.getroot(), hwnd)
    widget.mainloop()
