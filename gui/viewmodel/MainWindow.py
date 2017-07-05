import os
from main import Main
from gui.lib import BindableProperty, ViewModel


class MainWindow(ViewModel):
    training_set_type = BindableProperty('single')
    available_input_files = BindableProperty()
    selected_input_file = BindableProperty('Eb_therewill')
    selected_seed_file = BindableProperty()
    available_models = BindableProperty()
    selected_model = BindableProperty('Feedforward NN')
    model_order = BindableProperty(5)
    epochs = BindableProperty(20)
    choruses = BindableProperty(3)

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


