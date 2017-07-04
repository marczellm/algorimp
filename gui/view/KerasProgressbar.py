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

    def on_epoch_begin(self, epoch, logs=None):
        print('epoch_begin', epoch, logs)

    def on_epoch_end(self, epoch, logs=None):
        print('epoch_end', epoch, logs)

    def on_batch_begin(self, batch, logs=None):
        print('batch_begin', batch, logs)

    def on_batch_end(self, batch, logs=None):
        print('batch_end', batch, logs)

    def on_train_begin(self, logs=None):
        print('train_begin', logs)

    def on_train_end(self, logs=None):
        print('train_end', logs)

BaseComponent.register(KerasProgressbar)
