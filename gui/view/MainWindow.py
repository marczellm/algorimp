import threading
from threading import Thread
import tkpf
from gui import viewmodel
import tkinter as tk
from tkinter import messagebox


class MainWindow(tkpf.BaseWindow):
    model: viewmodel.MainWindow

    def __init__(self):
        super().__init__(viewmodel.MainWindow())

    def run_model(self):
        Thread(target=self.model.run_model_thread_body, name='UI', daemon=True, args=[self.progressbar.model]).start()

    def stop_thread(self):
        if self.progressbar.model.model is not None:
            self.progressbar.model.model.stop_training = True
        elif self.model.selected_model == 'Markov chain':
            tk.messagebox.showwarning('', "Stopping Markov simulation is not supported")
        elif any(t.name == 'UI' for t in threading.enumerate()):
            tk.messagebox.showwarning('', "Can't stop training in preparation phase. Please try again a bit later")
