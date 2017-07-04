from tkinter import filedialog

from gui.lib import ObservedProperty, ViewModel


class MainWindow(ViewModel):
    training_filename = ObservedProperty()
    training_set_type = ObservedProperty()

    def browse_button_onclick(self):
        self.training_filename = filedialog.askopenfilename(filetypes=[('MIDI file', '*.mid *.smf')])
