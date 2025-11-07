from .enums import *
from .monitor import *
from .window import *
import ._cffi

alias Image = _cffi.GLFWimage
alias VidMode = _cffi.GLFWvidmode
alias GammaRamp = _cffi.GLFWgammaramp


fn init() raises:
    if not _cffi.glfwInit():
        raise Error("Failed to initialize GLFW")


fn terminate():
    _cffi.glfwTerminate()


fn poll_events():
    _cffi.glfwPollEvents()
