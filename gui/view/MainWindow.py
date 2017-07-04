import gui.lib
from gui import viewmodel
import tkinter as tk


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
        self.model.run_model(self.progressbar)
