import os

from gui import viewmodel
from main import Main
from tkpf import AutoProperty, ViewModel, Bindable


class MainWindow(ViewModel):
    training_set_type = Bindable(AutoProperty('single'))
    available_input_files = Bindable(AutoProperty())
    selected_input_file = Bindable(AutoProperty('Eb_therewill'))
    selected_seed_file = Bindable(AutoProperty())
    available_models = Bindable(AutoProperty())
    selected_model = Bindable(AutoProperty('Feedforward NN'))
    model_order = Bindable(AutoProperty(5))
    epochs = Bindable(AutoProperty(20))
    choruses = Bindable(AutoProperty(3))

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
        self.progressbar_model = viewmodel.KerasProgressbar()

    def run_model_thread_body(self, callback=None):
        model = self.model_naming[self.selected_model]
        if self.training_set_type == 'single':
            Main.single(model, self.selected_input_file, self.choruses, self.model_order, self.epochs, callback)
        elif self.training_set_type == 'weimar':
            Main.weimar(model, self.selected_seed_file, self.choruses, self.model_order, self.epochs, callback)


