import tkinter as tk
from gui.lib import ViewModel, BindableProperty


_type_mapping = {
    int: tk.IntVar,
    str: tk.StringVar,
    bool: tk.BooleanVar,
    float: tk.DoubleVar
}


class Binding:
    def __init__(self, source: ViewModel, source_prop: BindableProperty, target_prop: str,
                 to_model: bool, to_view: bool):
        self.model = source
        self.property = source_prop
        self.var = _type_mapping[source_prop.dtype]()
        self.view_property_name = target_prop
        if source_prop.default_value is not None:
            self.var.set(source_prop.default_value)
        self.to_view = to_view
        self.to_model = to_model
        self.add_observer(self.observer)

    def add_observer(self, observer):
        self.var.trace_add('write', lambda *_: observer(self.safe_get()))

    def safe_get(self):
        try:
            return self.property.dtype(self.var.get())
        except tk.TclError:
            return self.property.dtype()

    def observer(self, val):
        if self.to_model:
            self.property.bindings.remove(self)
            self.property.fset(self.model, val)
            self.property.bindings.append(self)

