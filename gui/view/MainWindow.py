import threading
from threading import Thread
import gui.lib
from gui import viewmodel
import tkinter as tk
from tkinter import messagebox


class MainWindow(gui.lib.BaseWindow):
    def __init__(self):
        super().__init__()
        self.title = 'AlgorImp'
        self.model = viewmodel.MainWindow()

        tst_property = viewmodel.MainWindow.training_set_type
        tst_property_instance = getattr(self.model, tst_property.instance_name)

        sif_property = viewmodel.MainWindow.selected_input_file
        sif_property_instance = getattr(self.model, sif_property.instance_name)

        ssf_property = viewmodel.MainWindow.selected_seed_file
        ssf_property_instance = getattr(self.model, ssf_property.instance_name)

        def callback(*_):
            if tst_property_instance.var.get() == 'single':
                self.output_selector.config(state=tk.DISABLED, textvariable=sif_property_instance.var)
            else:
                self.output_selector.config(state=tk.NORMAL, textvariable=ssf_property_instance.var)

        tst_property_instance.var.trace_add('write', callback)

    def run_model(self):
        Thread(target=self.model.run_model_thread_body, name='UI', daemon=True, args=[self.progressbar]).start()

    def stop_thread(self):
        if self.progressbar.model is not None:
            self.progressbar.model.stop_training = True
        elif self.model.selected_model == 'Markov chain':
            tk.messagebox.showwarning('', "Stopping Markov simulation is not supported")
        elif any(t.name == 'UI' for t in threading.enumerate()):
            tk.messagebox.showwarning('', "Can't stop training in preparation phase. Please try again a bit later")
