import .enums
from .monitor import Monitor
from .window import Window

alias GLFWglproc = fn () -> None
alias GLFWvkproc = fn () -> None

# Callback function types
alias ErrorFun = fn (enums.Error, StaticString) -> None
alias WindowPosFun = fn (var Window, Int32, Int32) -> None
alias WindowSizeFun = fn (var Window, Int32, Int32) -> None
alias WindowCloseFun = fn (var Window) -> None
alias WindowRefreshFun = fn (var Window) -> None
alias WindowFocusFun = fn (var Window, Bool) -> None
alias WindowIconifyFun = fn (var Window, Bool) -> None
alias WindowMaximizeFun = fn (var Window, Bool) -> None
alias FramebufferSizeFun = fn (var Window, Int32, Int32) -> None
alias WindowContentScaleFun = fn (var Window, Float32, Float32) -> None
alias MouseButtonFun = fn (var Window, Int32, Int32, Int32) -> None
alias CursorPosFun = fn (var Window, Float64, Float64) -> None
alias CursorEnterFun = fn (var Window, Bool) -> None
alias ScrollFun = fn (var Window, Float64, Float64) -> None
alias KeyFun = fn (
    var Window, enums.Key, Int32, enums.Action, enums.Mod
) -> None
alias CharFun = fn (var Window, Codepoint) -> None
alias CharModsFun = fn (var Window, Codepoint, enums.Mod) -> None
alias DropFun = fn (var Window, var List[StaticString]) -> None
alias MonitorFun = fn (var Monitor, MonitorEvent) -> None
alias JoystickFun = fn (Int32, Int32) -> None
