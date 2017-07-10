from tkpf import Component


class KerasProgressbar(Component):

    template = '''
    <Progressbar name="progressbar" variable="[value]" maximum="[target]"/>
    '''