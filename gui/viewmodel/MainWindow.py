import os
from main import Main
from gui.lib import ObservedProperty, ViewModel


class MainWindow(ViewModel):
    training_set_type = ObservedProperty('single')
    available_input_files = ObservedProperty()
    selected_input_file = ObservedProperty('Eb_therewill')
    selected_seed_file = ObservedProperty()
    available_models = ObservedProperty()
    selected_model = ObservedProperty('Feedforward NN')
    model_order = ObservedProperty(5)
    epochs = ObservedProperty(20)
    choruses = ObservedProperty(3)

    def __init__(self):
        super().__init__()
        midis = [os.path.splitext(x)[0] for x in os.listdir('input')]
        changes = [os.path.splitext(x)[0] for x in os.listdir('changes')]
        self.available_input_files = tuple(set(midis).intersection(set(changes)))
        self.model_naming = {
            'Markov chain': 'markov',
            'Feedforward NN': 'neural',
            'Stateless LSTM': 'lstm_stateless',
            'Stateful LSTM': 'lstm'
        }
        self.available_models = tuple(self.model_naming.keys())

    def run_model_thread_body(self, callback=None):
        model = self.model_naming[self.selected_model]
        if self.training_set_type == 'single':
            Main.single(model, self.selected_input_file, self.choruses, self.model_order, self.epochs, callback)
        elif self.training_set_type == 'weimar':
            Main.weimar(model, self.selected_seed_file, self.choruses, self.model_order, self.epochs, callback)


