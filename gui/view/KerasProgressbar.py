from tkinter import ttk

from gui.lib import BaseComponent


class KerasProgressbar(ttk.Progressbar):
    """ This is a subclass of keras.callbacks.Callback, except that importing Keras takes a while.
    To avoid that delay in opening the GUI, we make use of duck-typing here. """

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        self.model = None
        self.params = None

    def set_model(self, model):
        self.model = model

    def set_params(self, params):
        self.params = params
        self.config(maximum=params['samples'])

    def on_epoch_begin(self, epoch, logs=None):
        pass

    def on_epoch_end(self, epoch, logs=None):
        pass

    def on_batch_begin(self, batch, logs=None):
        pass

    def on_batch_end(self, _, logs=None):
        self.step(logs['size'])

    def on_train_begin(self, logs=None):
        pass

    def on_train_end(self, logs=None):
        pass

BaseComponent.register(KerasProgressbar)
