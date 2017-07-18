from tkinter import messagebox
from tkpf import ViewModel, AutoProperty, Bindable


class KerasProgressbar(ViewModel):
    """ This is intended to be a subclass of ``keras.callbacks.Callback``, except that importing Keras takes a while.
        To avoid that delay in opening the GUI, we make use of duck-typing here.
        The same approach is taken to make it a limited drop-in replacement to ``keras.utils.Progbar`` """

    value = Bindable(AutoProperty(0))
    target = Bindable(AutoProperty(100))
    epoch = Bindable(AutoProperty(0))
    text = Bindable(AutoProperty(""))
    num_epochs = Bindable(AutoProperty(int))

    def __init__(self):
        super().__init__()
        self.model = None  # GUI uses this to stop training

    def set_text(self, text, **_):
        self.text = text

    def error(self, message):
        messagebox.showerror('Error', message)

    # region keras.utils.Progbar

    def add(self, n):
        self.value += n

    def update(self, value, **_):
        self.value = value

    # endregion

    # region keras.callbacks.Callback

    def set_model(self, model):
        self.model = model

    def set_params(self, params):
        self.target = params['samples']

    def on_epoch_begin(self, epoch, logs=None):
        self.epoch = epoch + 1
        self.value = 0

    def on_epoch_end(self, epoch, logs=None):
        pass

    def on_batch_begin(self, batch, logs=None):
        pass

    def on_batch_end(self, batch, logs=None):
        self.add(logs['size'])

    def on_train_begin(self, logs=None):
        self.text = "Training..."

    def on_train_end(self, logs=None):
        pass

    # endregion
