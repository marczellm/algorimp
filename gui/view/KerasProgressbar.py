from gui import viewmodel
from gui.lib import BaseComponent


class KerasProgressbar(BaseComponent):

    template = '''
    <Progressbar name="progressbar" variable="[value]" maximum="[target]"/>
    '''

    def __init__(self, parent, **kwargs):
        super().__init__(parent, model=viewmodel.KerasProgressbar(), **kwargs)
