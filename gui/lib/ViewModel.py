from tkinter import TclError

from gui.lib import ObservedPropertyInstance, ObservedProperty


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
                private_member_name = member.private_membername
                observed_property_name = member.instance_name
                observed_property_instance = ObservedPropertyInstance(member)
                setattr(self, private_member_name, member.default_value or member.typ())
                setattr(self, observed_property_name, observed_property_instance)

                def observer(*_, privname=private_member_name, opi_name=observed_property_name):
                    opi = getattr(self, opi_name)
                    if opi.to_model:
                        try:
                            val = opi.var.get()
                        except TclError:
                            val = opi.property.typ()
                        setattr(self, privname, val)

                observed_property_instance.var.trace_add('write', observer)
