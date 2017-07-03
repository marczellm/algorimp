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
    def __new__(cls: type):
        register(cls)
        return super().__new__(cls)


class BaseWindow(BaseComponent):
    def __init__(self):
        self.title = ''


def construct(elem: Xml.Element, parent: Union[tk.Widget, tk.Tk]):
    init_args = {k: v for k, v in elem.attrib.items() if '-' not in k}
    pack_args = {k[5:]: v for k, v in elem.attrib.items() if 'pack-' in k}
    grid_args = {k[5:]: v for k, v in elem.attrib.items() if 'grid-' in k}
    place_args = {k[6:]: v for k, v in elem.attrib.items() if 'place-' in k}

    widget_class = _widgets[elem.tag]
    if elem.text and elem.text.strip():
        init_args['text'] = elem.text.strip()

    widget = widget_class(parent, **init_args)
    for child in elem:
        construct(child, widget)

    if pack_args:
        widget.pack(**pack_args)
    elif grid_args:
        widget.grid(**grid_args)
    elif place_args:
        widget.place(**place_args)
    else:
        widget.pack()
    return widget


def show(window: BaseWindow):
    name = type(window).__name__
    tree = Xml.parse(_registry[name])
    hwnd = tk.Tk()
    hwnd.wm_title(window.title)
    widget = construct(tree.getroot(), hwnd)
    widget.mainloop()


def observable(typ):
    def ret(prop):
        return prop
    return ret
