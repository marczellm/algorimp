from tkpf import BaseComponent


class KerasProgressbar(BaseComponent):

    template = '''
    <Progressbar name="progressbar" variable="[value]" maximum="[target]"/>
    '''