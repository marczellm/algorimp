from tkpf import Component


class KerasProgressbar(Component):
    template = '''
    <Frame>
        <Label pack-anchor="w" text="[text]"/>
        <Frame pack-anchor="w">
            <Label pack-side="left" text="Epoch "/>
            <Label pack-side="left" text="[epoch]"/>
            <Label pack-side="left" text="/"/>
            <Label pack-side="left" text="[num_epochs]"/>
        </Frame>
        <Progressbar name="progressbar" variable="[value]" maximum="[target]"
                     pack-anchor="w"/>
    </Frame>
    '''