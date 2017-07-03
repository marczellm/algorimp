from tkinter import filedialog
import gui.lib


class MainWindow(gui.lib.BaseWindow):
    def __init__(self):
        super().__init__()
        self._training_filename = ''
        self._training_set_type = ''
        self.title = 'AlgorImp'

    def browse_button_onclick(self):
        self.training_filename = filedialog.askopenfilename(filetypes=[('MIDI file', '*.mid *.smf')])

