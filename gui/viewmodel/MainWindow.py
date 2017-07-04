import os
from gui.lib import ObservedProperty, ViewModel


class MainWindow(ViewModel):
    training_set_type = ObservedProperty()
    available_input_files = ObservedProperty()
    selected_input_file = ObservedProperty()

    def __init__(self):
        super().__init__()
        midis = [os.path.splitext(x)[0] for x in os.listdir('input')]
        changes = [os.path.splitext(x)[0] for x in os.listdir('changes')]
        self.available_input_files = tuple(set(midis).intersection(set(changes)))

