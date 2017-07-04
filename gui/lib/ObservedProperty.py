import tkinter as tk

_type_mapping = {
    int: tk.IntVar,
    str: tk.StringVar,
    bool: tk.BooleanVar,
    float: tk.DoubleVar
}


class ObservedProperty(property):
    def __init__(self, *args, typ=str, name=None):
        self.typ = typ
        self.name = name

        if args:
            super.__init__(*args)
        else:
            def getter(this):
                return getattr(this, self.private_membername)

            def setter(this, val):
                setattr(this, self.private_membername, val)
                opropi = getattr(this, self.opropi_name)
                if opropi.to_view:
                    opropi.var.set(val)

            super().__init__(getter, setter)

    @property
    def private_membername(self):
        return '__' + self.name

    @property
    def opropi_name(self):
        return '__opropi_' + self.name


class ObservedPropertyInstance:
    def __init__(self, prop: ObservedProperty):
        self.oprop = prop
        self.var = _type_mapping[prop.typ]()
        self.to_view = False
        self.to_model = False
