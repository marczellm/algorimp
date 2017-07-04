import tkinter as tk

_type_mapping = {
    int: tk.IntVar,
    str: tk.StringVar,
    bool: tk.BooleanVar,
    float: tk.DoubleVar
}


class ObservedProperty(property):
    def __init__(self, default_value=None, *args, datatype=None, name=None):
        self.dtype = datatype
        self.name = name
        self.default_value = default_value
        if default_value is not None:
            self.dtype = type(default_value)
        else:
            self.dtype = datatype or str

        if args:
            super.__init__(*args)
        else:
            def getter(this):
                return getattr(this, self.private_membername)

            def setter(this, val):
                setattr(this, self.private_membername, val)
                opropi = getattr(this, self.instance_name)
                if opropi.to_view:
                    opropi.var.set(val)

            super().__init__(getter, setter)

    @property
    def private_membername(self):
        return '__' + self.name

    @property
    def instance_name(self):
        return '__opropi_' + self.name


class ObservedPropertyInstance:
    def __init__(self, prop: ObservedProperty):
        self.property = prop
        self.var = _type_mapping[prop.dtype]()
        if prop.default_value is not None:
            self.var.set(prop.default_value)
        self.to_view = False
        self.to_model = False
