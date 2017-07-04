import copy
import os
import xml.etree.ElementTree as Xml
import tkinter as tk
from tkinter import ttk
from typing import Union

path = 'gui/view'
_registry = {}
_widgets = copy.copy(tk.__dict__)
_widgets.update(ttk.__dict__)
_windows = []
_type_mapping = {
    int: tk.IntVar,
    str: tk.StringVar,
    bool: tk.BooleanVar,
    float: tk.DoubleVar
}


def register(cls: type, filepath=None):
    name = cls.__name__
    filepath = filepath or os.path.join(path, name + '.xml')
    if os.path.isfile(filepath):
        _registry[name] = [cls, filepath]
    else:
        raise Exception(filepath + ' does not exist!')


class BaseComponent:
    @classmethod
    def __init_subclass__(cls, filepath=None):
        super().__init_subclass__()
        register(cls, filepath)

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

        for key, membername in init_args.items():
            if 'command' in key:
                if hasattr(self, membername):
                    init_args[key] = getattr(self, membername)
                else:
                    init_args[key] = getattr(self.model, membername)
            if 'variable' in key:
                observed_property = getattr(type(self.model), membername)
                init_args[key] = getattr(self.model, observed_property.var_name)

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


def new_window():
    window = tk.Toplevel() if _windows else tk.Tk()
    _windows.append(window)
    return window


class BaseWindow(BaseComponent, filepath='gui/lib/BaseWindow.xml'):
    def __init__(self):
        super().__init__()
        self.title = ''
        self.hwnd = new_window()

    def show(self):
        name = type(self).__name__
        tree = Xml.parse(_registry[name][1])
        self.hwnd.wm_title(self.title)
        widget = self.construct(tree.getroot(), self.hwnd)
        widget.mainloop()


class ObservedProperty(property):
    def __init__(self, *args, typ=str, name=''):
        if args:
            super.__init__(*args)
        else:
            def getter(this):
                return getattr(this, self.private_membername)

            def setter(this, val):
                setattr(this, self.private_membername, val)
                getattr(this, self.var_name).set(val)

            super().__init__(getter, setter)

        self.typ = typ
        self.name = name

    @property
    def private_membername(self):
        return '__' + self.name

    @property
    def var_name(self):
        return '__var_' + self.name


class ViewModelMeta(type):
    def __new__(cls, name, bases, namespace):
        for name, member in namespace.items():
            if isinstance(member, ObservedProperty):
                member.name = name
        return super().__new__(cls, name, bases, namespace)


class ViewModel(metaclass=ViewModelMeta):
    def __init__(self):
        super().__init__()

        for name, member in type(self).__dict__.items():
            if isinstance(member, ObservedProperty):
                privname = member.private_membername
                setattr(self, privname, member.typ())
                var = _type_mapping[member.typ]()
                var.trace_add('write', lambda *_: setattr(self, privname, var.get()))
                setattr(self, member.var_name, var)
