import gui.lib


class MainWindow(gui.lib.BaseWindow):
    def __init__(self):
        super().__init__()
        self.title = 'AlgorImp'
        from gui import viewmodel
        self.model = viewmodel.MainWindow()
