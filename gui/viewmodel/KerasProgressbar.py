from gui.lib import ViewModel, BindableProperty


class KerasProgressbar(ViewModel):
    """ This is intended to be a subclass of ``keras.callbacks.Callback``, except that importing Keras takes a while.
        To avoid that delay in opening the GUI, we make use of duck-typing here.
        The same approach is taken to make it a limited drop-in replacement to ``keras.utils.Progbar`` """

    value = BindableProperty(0)
    target = BindableProperty(100)

    def __init__(self):
        super().__init__()
        self.model = None  # GUI uses this to stop training

    def add(self, n):
        self.value += n

    def set_model(self, model):
        self.model = model

    def set_params(self, params):
        self.target = params['samples']

    def update(self, value, **_):
        self.value = value

    def on_epoch_begin(self, epoch, logs=None):
        self.value = 0

    def on_epoch_end(self, epoch, logs=None):
        pass

    def on_batch_begin(self, batch, logs=None):
        pass

    def on_batch_end(self, batch, logs=None):
        self.add(logs['size'])

    def on_train_begin(self, logs=None):
        pass

    def on_train_end(self, logs=None):
        pass
