
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
                priv_name = member.private_membername
                opropi_name = member.opropi_name
                opropi = ObservedPropertyInstance(member)
                setattr(self, priv_name, member.typ())
                setattr(self, opropi_name, opropi)

                def observer(*_, privname=priv_name, opi_name=opropi_name):
                    opi = getattr(self, opi_name)
                    if opi.to_model:
                        setattr(self, privname, opi.var.get())

                opropi.var.trace_add('write', observer)
