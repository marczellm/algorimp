from gui.lib import BaseComponent


class KerasProgressbar(BaseComponent):
    """ This is intended to be a subclass of keras.callbacks.Callback, except that importing Keras takes a while.
    To avoid that delay in opening the GUI, we make use of duck-typing here.
    The same approach is taken to make it a limited drop-in replacement to keras.utils.Progbar """

    template = '''
    <Progressbar name="progressbar"/>
    '''

    def __init__(self, parent, **kwargs):
        super().__init__(parent, **kwargs)
        self.add = self.progressbar.step
        self.target = 100
        self.model = None  # GUI uses this to stop training

    def set_model(self, model):
        self.model = model

    def set_params(self, params):
        self.target = params['samples']
        self.progressbar.config(maximum=self.target)

    def update(self, value, **_):
        self.progressbar.config(value=value)

    def on_epoch_begin(self, epoch, logs=None):
        pass

    def on_epoch_end(self, epoch, logs=None):
        pass

    def on_batch_begin(self, batch, logs=None):
        pass

    def on_batch_end(self, _, logs=None):
        self.progressbar.step(logs['size'])

    def on_train_begin(self, logs=None):
        pass

    def on_train_end(self, logs=None):
        pass

BaseComponent.register(KerasProgressbar)
