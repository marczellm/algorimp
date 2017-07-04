import tkinter as tk
import xml.etree.ElementTree as Xml
from gui.lib.BaseComponent import BaseComponent


class BaseWindow(BaseComponent, filepath='gui/lib/BaseWindow.xml'):
    _windows = []

    @classmethod
    def new_window(cls):
        window = tk.Toplevel() if cls._windows else tk.Tk()
        cls._windows.append(window)
        return window

    def __init__(self):
        super().__init__()
        self.title = ''
        self.hwnd = self.new_window()

    def show(self):
        name = type(self).__name__
        tree = Xml.parse(self._registry[name][1])
        self.hwnd.wm_title(self.title)
        widget = self.construct(tree.getroot(), self.hwnd)
        widget.mainloop()
