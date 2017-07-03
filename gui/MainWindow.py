from tkinter import filedialog
import gui.lib
from gui.lib import observable


class MainWindow(gui.lib.BaseWindow):
    def __init__(self):
        super().__init__()
        self._training_filename = ""
        self.title = 'AlgorImp'

    @observable(str)
    @property
    def training_filename(self) -> str:
        return self._training_filename

    @training_filename.setter
    def training_filename(self, val):
        self._training_filename = val

    def browse_button_onclick(self):
        self.training_filename = filedialog.askopenfilename(filetypes=[('MIDI file', '*.mid *.smf')])

