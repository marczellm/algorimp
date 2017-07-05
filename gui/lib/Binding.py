import tkinter as tk
from gui.lib import ViewModel, ObservedProperty

_type_mapping = {
    int: tk.IntVar,
    str: tk.StringVar,
    bool: tk.BooleanVar,
    float: tk.DoubleVar
}


class Binding:
    def __init__(self, source: ViewModel, source_prop: ObservedProperty, target_prop: str,
                 to_model: bool, to_view: bool):
        self.model = source
        self.property = source_prop
        self.var = _type_mapping[source_prop.dtype]()
        self.view_property_name = target_prop
        if source_prop.default_value is not None:
            self.var.set(source_prop.default_value)
        self.to_view = to_view
        self.to_model = to_model
        self.var.trace_add('write', self.observer)

    def observer(self, *_):
        if self.to_model:
            try:
                val = self.property.dtype(self.var.get())
            except tk.TclError:
                val = self.property.dtype()
            self.property.bindings.remove(self)
            self.property.fset(self.model, val)
            self.property.bindings.append(self)

