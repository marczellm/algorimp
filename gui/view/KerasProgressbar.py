from tkpf import BaseComponent


class KerasProgressbar(BaseComponent):

    template = '''
    <Progressbar name="progressbar" variable="[value]" maximum="[target]"/>
    '''

    def __init__(self, parent, model=None, **kwargs):
        super().__init__(parent, model=model, **kwargs)
