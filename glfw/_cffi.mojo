from sys.ffi import external_call

# --------------------------------------------------------------------------
#  * GLFW API tokens
# --------------------------------------------------------------------------

alias GLFW_VERSION_MAJOR = 3
alias GLFW_VERSION_MINOR = 4
alias GLFW_VERSION_REVISION = 0
alias GLFW_TRUE = 1
alias GLFW_FALSE = 0

alias GLFW_RELEASE = 0
alias GLFW_PRESS = 1
alias GLFW_REPEAT = 2
alias GLFW_HAT_CENTERED = 0
alias GLFW_HAT_UP = 1
alias GLFW_HAT_RIGHT = 2
alias GLFW_HAT_DOWN = 4
alias GLFW_HAT_LEFT = 8
alias GLFW_HAT_RIGHT_UP = (GLFW_HAT_RIGHT | GLFW_HAT_UP)
alias GLFW_HAT_RIGHT_DOWN = (GLFW_HAT_RIGHT | GLFW_HAT_DOWN)
alias GLFW_HAT_LEFT_UP = (GLFW_HAT_LEFT | GLFW_HAT_UP)
alias GLFW_HAT_LEFT_DOWN = (GLFW_HAT_LEFT | GLFW_HAT_DOWN)

alias GLFW_KEY_UNKNOWN = -1

# Printable keys
alias GLFW_KEY_SPACE = 32
alias GLFW_KEY_APOSTROPHE = 39  # '
alias GLFW_KEY_COMMA = 44  # ,
alias GLFW_KEY_MINUS = 45  # -
alias GLFW_KEY_PERIOD = 46  # .
alias GLFW_KEY_SLASH = 47  # /
alias GLFW_KEY_0 = 48
alias GLFW_KEY_1 = 49
alias GLFW_KEY_2 = 50
alias GLFW_KEY_3 = 51
alias GLFW_KEY_4 = 52
alias GLFW_KEY_5 = 53
alias GLFW_KEY_6 = 54
alias GLFW_KEY_7 = 55
alias GLFW_KEY_8 = 56
alias GLFW_KEY_9 = 57
alias GLFW_KEY_SEMICOLON = 59  # ;
alias GLFW_KEY_EQUAL = 61  # =
alias GLFW_KEY_A = 65
alias GLFW_KEY_B = 66
alias GLFW_KEY_C = 67
alias GLFW_KEY_D = 68
alias GLFW_KEY_E = 69
alias GLFW_KEY_F = 70
alias GLFW_KEY_G = 71
alias GLFW_KEY_H = 72
alias GLFW_KEY_I = 73
alias GLFW_KEY_J = 74
alias GLFW_KEY_K = 75
alias GLFW_KEY_L = 76
alias GLFW_KEY_M = 77
alias GLFW_KEY_N = 78
alias GLFW_KEY_O = 79
alias GLFW_KEY_P = 80
alias GLFW_KEY_Q = 81
alias GLFW_KEY_R = 82
alias GLFW_KEY_S = 83
alias GLFW_KEY_T = 84
alias GLFW_KEY_U = 85
alias GLFW_KEY_V = 86
alias GLFW_KEY_W = 87
alias GLFW_KEY_X = 88
alias GLFW_KEY_Y = 89
alias GLFW_KEY_Z = 90
alias GLFW_KEY_LEFT_BRACKET = 91  # [
alias GLFW_KEY_BACKSLASH = 92  # \
alias GLFW_KEY_RIGHT_BRACKET = 93  # ]
alias GLFW_KEY_GRAVE_ACCENT = 96  # `
alias GLFW_KEY_WORLD_1 = 161  # non-US #1
alias GLFW_KEY_WORLD_2 = 162  # non-US #2

# Function keys
alias GLFW_KEY_ESCAPE = 256
alias GLFW_KEY_ENTER = 257
alias GLFW_KEY_TAB = 258
alias GLFW_KEY_BACKSPACE = 259
alias GLFW_KEY_INSERT = 260
alias GLFW_KEY_DELETE = 261
alias GLFW_KEY_RIGHT = 262
alias GLFW_KEY_LEFT = 263
alias GLFW_KEY_DOWN = 264
alias GLFW_KEY_UP = 265
alias GLFW_KEY_PAGE_UP = 266
alias GLFW_KEY_PAGE_DOWN = 267
alias GLFW_KEY_HOME = 268
alias GLFW_KEY_END = 269
alias GLFW_KEY_CAPS_LOCK = 280
alias GLFW_KEY_SCROLL_LOCK = 281
alias GLFW_KEY_NUM_LOCK = 282
alias GLFW_KEY_PRINT_SCREEN = 283
alias GLFW_KEY_PAUSE = 284
alias GLFW_KEY_F1 = 290
alias GLFW_KEY_F2 = 291
alias GLFW_KEY_F3 = 292
alias GLFW_KEY_F4 = 293
alias GLFW_KEY_F5 = 294
alias GLFW_KEY_F6 = 295
alias GLFW_KEY_F7 = 296
alias GLFW_KEY_F8 = 297
alias GLFW_KEY_F9 = 298
alias GLFW_KEY_F10 = 299
alias GLFW_KEY_F11 = 300
alias GLFW_KEY_F12 = 301
alias GLFW_KEY_F13 = 302
alias GLFW_KEY_F14 = 303
alias GLFW_KEY_F15 = 304
alias GLFW_KEY_F16 = 305
alias GLFW_KEY_F17 = 306
alias GLFW_KEY_F18 = 307
alias GLFW_KEY_F19 = 308
alias GLFW_KEY_F20 = 309
alias GLFW_KEY_F21 = 310
alias GLFW_KEY_F22 = 311
alias GLFW_KEY_F23 = 312
alias GLFW_KEY_F24 = 313
alias GLFW_KEY_F25 = 314
alias GLFW_KEY_KP_0 = 320
alias GLFW_KEY_KP_1 = 321
alias GLFW_KEY_KP_2 = 322
alias GLFW_KEY_KP_3 = 323
alias GLFW_KEY_KP_4 = 324
alias GLFW_KEY_KP_5 = 325
alias GLFW_KEY_KP_6 = 326
alias GLFW_KEY_KP_7 = 327
alias GLFW_KEY_KP_8 = 328
alias GLFW_KEY_KP_9 = 329
alias GLFW_KEY_KP_DECIMAL = 330
alias GLFW_KEY_KP_DIVIDE = 331
alias GLFW_KEY_KP_MULTIPLY = 332
alias GLFW_KEY_KP_SUBTRACT = 333
alias GLFW_KEY_KP_ADD = 334
alias GLFW_KEY_KP_ENTER = 335
alias GLFW_KEY_KP_EQUAL = 336
alias GLFW_KEY_LEFT_SHIFT = 340
alias GLFW_KEY_LEFT_CONTROL = 341
alias GLFW_KEY_LEFT_ALT = 342
alias GLFW_KEY_LEFT_SUPER = 343
alias GLFW_KEY_RIGHT_SHIFT = 344
alias GLFW_KEY_RIGHT_CONTROL = 345
alias GLFW_KEY_RIGHT_ALT = 346
alias GLFW_KEY_RIGHT_SUPER = 347
alias GLFW_KEY_MENU = 348

alias GLFW_KEY_LAST = GLFW_KEY_MENU

alias GLFW_MOD_SHIFT = 0x0001
alias GLFW_MOD_CONTROL = 0x0002
alias GLFW_MOD_ALT = 0x0004
alias GLFW_MOD_SUPER = 0x0008
alias GLFW_MOD_CAPS_LOCK = 0x0010
alias GLFW_MOD_NUM_LOCK = 0x0020

alias GLFW_MOUSE_BUTTON_1 = 0
alias GLFW_MOUSE_BUTTON_2 = 1
alias GLFW_MOUSE_BUTTON_3 = 2
alias GLFW_MOUSE_BUTTON_4 = 3
alias GLFW_MOUSE_BUTTON_5 = 4
alias GLFW_MOUSE_BUTTON_6 = 5
alias GLFW_MOUSE_BUTTON_7 = 6
alias GLFW_MOUSE_BUTTON_8 = 7
alias GLFW_MOUSE_BUTTON_LAST = GLFW_MOUSE_BUTTON_8
alias GLFW_MOUSE_BUTTON_LEFT = GLFW_MOUSE_BUTTON_1
alias GLFW_MOUSE_BUTTON_RIGHT = GLFW_MOUSE_BUTTON_2
alias GLFW_MOUSE_BUTTON_MIDDLE = GLFW_MOUSE_BUTTON_3
alias GLFW_JOYSTICK_1 = 0
alias GLFW_JOYSTICK_2 = 1
alias GLFW_JOYSTICK_3 = 2
alias GLFW_JOYSTICK_4 = 3
alias GLFW_JOYSTICK_5 = 4
alias GLFW_JOYSTICK_6 = 5
alias GLFW_JOYSTICK_7 = 6
alias GLFW_JOYSTICK_8 = 7
alias GLFW_JOYSTICK_9 = 8
alias GLFW_JOYSTICK_10 = 9
alias GLFW_JOYSTICK_11 = 10
alias GLFW_JOYSTICK_12 = 11
alias GLFW_JOYSTICK_13 = 12
alias GLFW_JOYSTICK_14 = 13
alias GLFW_JOYSTICK_15 = 14
alias GLFW_JOYSTICK_16 = 15
alias GLFW_JOYSTICK_LAST = GLFW_JOYSTICK_16
alias GLFW_GAMEPAD_BUTTON_A = 0
alias GLFW_GAMEPAD_BUTTON_B = 1
alias GLFW_GAMEPAD_BUTTON_X = 2
alias GLFW_GAMEPAD_BUTTON_Y = 3
alias GLFW_GAMEPAD_BUTTON_LEFT_BUMPER = 4
alias GLFW_GAMEPAD_BUTTON_RIGHT_BUMPER = 5
alias GLFW_GAMEPAD_BUTTON_BACK = 6
alias GLFW_GAMEPAD_BUTTON_START = 7
alias GLFW_GAMEPAD_BUTTON_GUIDE = 8
alias GLFW_GAMEPAD_BUTTON_LEFT_THUMB = 9
alias GLFW_GAMEPAD_BUTTON_RIGHT_THUMB = 10
alias GLFW_GAMEPAD_BUTTON_DPAD_UP = 11
alias GLFW_GAMEPAD_BUTTON_DPAD_RIGHT = 12
alias GLFW_GAMEPAD_BUTTON_DPAD_DOWN = 13
alias GLFW_GAMEPAD_BUTTON_DPAD_LEFT = 14
alias GLFW_GAMEPAD_BUTTON_LAST = GLFW_GAMEPAD_BUTTON_DPAD_LEFT

alias GLFW_GAMEPAD_BUTTON_CROSS = GLFW_GAMEPAD_BUTTON_A
alias GLFW_GAMEPAD_BUTTON_CIRCLE = GLFW_GAMEPAD_BUTTON_B
alias GLFW_GAMEPAD_BUTTON_SQUARE = GLFW_GAMEPAD_BUTTON_X
alias GLFW_GAMEPAD_BUTTON_TRIANGLE = GLFW_GAMEPAD_BUTTON_Y
alias GLFW_GAMEPAD_AXIS_LEFT_X = 0
alias GLFW_GAMEPAD_AXIS_LEFT_Y = 1
alias GLFW_GAMEPAD_AXIS_RIGHT_X = 2
alias GLFW_GAMEPAD_AXIS_RIGHT_Y = 3
alias GLFW_GAMEPAD_AXIS_LEFT_TRIGGER = 4
alias GLFW_GAMEPAD_AXIS_RIGHT_TRIGGER = 5
alias GLFW_GAMEPAD_AXIS_LAST = GLFW_GAMEPAD_AXIS_RIGHT_TRIGGER
alias GLFW_NO_ERROR = 0
alias GLFW_NOT_INITIALIZED = 0x00010001
alias GLFW_NO_CURRENT_CONTEXT = 0x00010002
alias GLFW_INVALID_ENUM = 0x00010003
alias GLFW_INVALID_VALUE = 0x00010004
alias GLFW_OUT_OF_MEMORY = 0x00010005
alias GLFW_API_UNAVAILABLE = 0x00010006
alias GLFW_VERSION_UNAVAILABLE = 0x00010007
alias GLFW_PLATFORM_ERROR = 0x00010008
alias GLFW_FORMAT_UNAVAILABLE = 0x00010009
alias GLFW_NO_WINDOW_CONTEXT = 0x0001000A
alias GLFW_FOCUSED = 0x00020001
alias GLFW_ICONIFIED = 0x00020002
alias GLFW_RESIZABLE = 0x00020003
alias GLFW_VISIBLE = 0x00020004
alias GLFW_DECORATED = 0x00020005
alias GLFW_AUTO_ICONIFY = 0x00020006
alias GLFW_FLOATING = 0x00020007
alias GLFW_MAXIMIZED = 0x00020008
alias GLFW_CENTER_CURSOR = 0x00020009
alias GLFW_TRANSPARENT_FRAMEBUFFER = 0x0002000A
alias GLFW_HOVERED = 0x0002000B
alias GLFW_FOCUS_ON_SHOW = 0x0002000C

alias GLFW_RED_BITS = 0x00021001
alias GLFW_GREEN_BITS = 0x00021002
alias GLFW_BLUE_BITS = 0x00021003
alias GLFW_ALPHA_BITS = 0x00021004
alias GLFW_DEPTH_BITS = 0x00021005
alias GLFW_STENCIL_BITS = 0x00021006
alias GLFW_ACCUM_RED_BITS = 0x00021007
alias GLFW_ACCUM_GREEN_BITS = 0x00021008
alias GLFW_ACCUM_BLUE_BITS = 0x00021009
alias GLFW_ACCUM_ALPHA_BITS = 0x0002100A
alias GLFW_AUX_BUFFERS = 0x0002100B
alias GLFW_STEREO = 0x0002100C
alias GLFW_SAMPLES = 0x0002100D
alias GLFW_SRGB_CAPABLE = 0x0002100E
alias GLFW_REFRESH_RATE = 0x0002100F
alias GLFW_DOUBLEBUFFER = 0x00021010

alias GLFW_CLIENT_API = 0x00022001
alias GLFW_CONTEXT_VERSION_MAJOR = 0x00022002
alias GLFW_CONTEXT_VERSION_MINOR = 0x00022003
alias GLFW_CONTEXT_REVISION = 0x00022004
alias GLFW_CONTEXT_ROBUSTNESS = 0x00022005
alias GLFW_OPENGL_FORWARD_COMPAT = 0x00022006
alias GLFW_OPENGL_DEBUG_CONTEXT = 0x00022007
alias GLFW_OPENGL_PROFILE = 0x00022008
alias GLFW_CONTEXT_RELEASE_BEHAVIOR = 0x00022009
alias GLFW_CONTEXT_NO_ERROR = 0x0002200A
alias GLFW_CONTEXT_CREATION_API = 0x0002200B
alias GLFW_SCALE_TO_MONITOR = 0x0002200C
alias GLFW_COCOA_RETINA_FRAMEBUFFER = 0x00023001
alias GLFW_COCOA_FRAME_NAME = 0x00023002
alias GLFW_COCOA_GRAPHICS_SWITCHING = 0x00023003
alias GLFW_X11_CLASS_NAME = 0x00024001
alias GLFW_X11_INSTANCE_NAME = 0x00024002
alias GLFW_NO_API = 0
alias GLFW_OPENGL_API = 0x00030001
alias GLFW_OPENGL_ES_API = 0x00030002

alias GLFW_NO_ROBUSTNESS = 0
alias GLFW_NO_RESET_NOTIFICATION = 0x00031001
alias GLFW_LOSE_CONTEXT_ON_RESET = 0x00031002

alias GLFW_OPENGL_ANY_PROFILE = 0
alias GLFW_OPENGL_CORE_PROFILE = 0x00032001
alias GLFW_OPENGL_COMPAT_PROFILE = 0x00032002

alias GLFW_CURSOR = 0x00033001
alias GLFW_STICKY_KEYS = 0x00033002
alias GLFW_STICKY_MOUSE_BUTTONS = 0x00033003
alias GLFW_LOCK_KEY_MODS = 0x00033004
alias GLFW_RAW_MOUSE_MOTION = 0x00033005

alias GLFW_CURSOR_NORMAL = 0x00034001
alias GLFW_CURSOR_HIDDEN = 0x00034002
alias GLFW_CURSOR_DISABLED = 0x00034003

alias GLFW_ANY_RELEASE_BEHAVIOR = 0
alias GLFW_RELEASE_BEHAVIOR_FLUSH = 0x00035001
alias GLFW_RELEASE_BEHAVIOR_NONE = 0x00035002

alias GLFW_NATIVE_CONTEXT_API = 0x00036001
alias GLFW_EGL_CONTEXT_API = 0x00036002
alias GLFW_OSMESA_CONTEXT_API = 0x00036003

alias GLFW_WAYLAND_PREFER_LIBDECOR = 0x00038001
alias GLFW_WAYLAND_DISABLE_LIBDECOR = 0x00038002

alias GLFW_ARROW_CURSOR = 0x00036001
alias GLFW_IBEAM_CURSOR = 0x00036002
alias GLFW_CROSSHAIR_CURSOR = 0x00036003
alias GLFW_HAND_CURSOR = 0x00036004
alias GLFW_HRESIZE_CURSOR = 0x00036005
alias GLFW_VRESIZE_CURSOR = 0x00036006
alias GLFW_CONNECTED = 0x00040001
alias GLFW_DISCONNECTED = 0x00040002

alias GLFW_JOYSTICK_HAT_BUTTONS = 0x00050001
alias GLFW_COCOA_CHDIR_RESOURCES = 0x00051001
alias GLFW_COCOA_MENUBAR = 0x00051002
alias GLFW_WAYLAND_LIBDECOR = 0x00053001
alias GLFW_DONT_CARE = -1


# --------------------------------------------------------------------------
#  * GLFW API types
# --------------------------------------------------------------------------


# Opaque struct types
struct GLFWmonitor:
    pass


struct GLFWwindow:
    pass


struct GLFWcursor:
    pass


# Function pointer types
alias GLFWglproc = fn () -> None
alias GLFWvkproc = fn () -> None

# Callback function types
alias GLFWerrorfun = fn (Int32, UnsafePointer[Int8]) -> None
alias GLFWwindowposfun = fn (UnsafePointer[GLFWwindow], Int32, Int32) -> None
alias GLFWwindowsizefun = fn (UnsafePointer[GLFWwindow], Int32, Int32) -> None
alias GLFWwindowclosefun = fn (UnsafePointer[GLFWwindow]) -> None
alias GLFWwindowrefreshfun = fn (UnsafePointer[GLFWwindow]) -> None
alias GLFWwindowfocusfun = fn (UnsafePointer[GLFWwindow], Int32) -> None
alias GLFWwindowiconifyfun = fn (UnsafePointer[GLFWwindow], Int32) -> None
alias GLFWwindowmaximizefun = fn (UnsafePointer[GLFWwindow], Int32) -> None
alias GLFWframebuffersizefun = fn (
    UnsafePointer[GLFWwindow], Int32, Int32
) -> None
alias GLFWwindowcontentscalefun = fn (
    UnsafePointer[GLFWwindow], Float32, Float32
) -> None
alias GLFWmousebuttonfun = fn (
    UnsafePointer[GLFWwindow], Int32, Int32, Int32
) -> None
alias GLFWcursorposfun = fn (
    UnsafePointer[GLFWwindow], Float64, Float64
) -> None
alias GLFWcursorenterfun = fn (UnsafePointer[GLFWwindow], Int32) -> None
alias GLFWscrollfun = fn (UnsafePointer[GLFWwindow], Float64, Float64) -> None
alias GLFWkeyfun = fn (
    UnsafePointer[GLFWwindow], Int32, Int32, Int32, Int32
) -> None
alias GLFWcharfun = fn (UnsafePointer[GLFWwindow], UInt32) -> None
alias GLFWcharmodsfun = fn (UnsafePointer[GLFWwindow], UInt32, Int32) -> None
alias GLFWdropfun = fn (
    UnsafePointer[GLFWwindow], Int32, UnsafePointer[UnsafePointer[Int8]]
) -> None
alias GLFWmonitorfun = fn (UnsafePointer[GLFWmonitor], Int32) -> None
alias GLFWjoystickfun = fn (Int32, Int32) -> None


struct GLFWvidmode(Copyable, ImplicitlyCopyable, Movable, Writable):
    var width: Int32
    var height: Int32
    var red_bits: Int32
    var green_bits: Int32
    var blue_bits: Int32
    var refresh_rate: Int32

    fn write_to(self, mut w: Some[Writer]):
        w.write(
            "GLFWvidmode(",
            "width=",
            self.width,
            ", height=",
            self.height,
            ", red_bits=",
            self.red_bits,
            ", green_bits=",
            self.green_bits,
            ", blue_bits=",
            self.blue_bits,
            ", refresh_rate=",
            self.refresh_rate,
            ")",
        )


struct GLFWgammaramp(Copyable, ImplicitlyCopyable, Movable, Writable):
    var red: UnsafePointer[UInt16]
    var green: UnsafePointer[UInt16]
    var blue: UnsafePointer[UInt16]
    var size: UInt32

    fn write_to(self, mut w: Some[Writer]):
        w.write(
            "GLFWgammaramp(",
            "red=",
            self.red,
            ", green=",
            self.green,
            ", blue=",
            self.blue,
            ", size=",
            self.size,
            ")",
        )


struct GLFWimage(Copyable, ImplicitlyCopyable, Movable, Writable):
    var width: Int32
    var height: Int32
    var pixels: UnsafePointer[Int8]

    fn write_to(self, mut w: Some[Writer]):
        w.write(
            "GLFWimage(",
            "width=",
            self.width,
            ", height=",
            self.height,
            ", pixels=",
            self.pixels,
            ")",
        )


struct GLFWgamepadstate(Copyable, ImplicitlyCopyable, Movable, Writable):
    var buttons: InlineArray[UInt8, 15]
    var axes: InlineArray[Float32, 6]

    fn write_to(self, mut w: Some[Writer]):
        w.write("GLFWimage(buttons=[")
        alias button_size = type_of(self.buttons).size

        @parameter
        for i in range(button_size):
            w.write(self.buttons[i])

            @parameter
            if i < button_size - 1:
                w.write(", ")
        w.write("], axes=[")
        alias axes_size = type_of(self.axes).size

        @parameter
        for i in range(axes_size):
            w.write(self.axes[i])

            @parameter
            if i < axes_size - 1:
                w.write(", ")
        w.write("])")


# --------------------------------------------------------------------------
#  * GLFW API functions
# --------------------------------------------------------------------------


fn glfwInit() -> Int32:
    return external_call["glfwInit", Int32]()


fn glfwTerminate():
    _ = external_call["glfwTerminate", NoneType]()


fn glfwInitHint(hint: Int32, value: Int32):
    _ = external_call["glfwInitHint", NoneType](hint, value)


fn glfwGetVersion(
    major: UnsafePointer[Int32],
    minor: UnsafePointer[Int32],
    rev: UnsafePointer[Int32],
):
    _ = external_call["glfwGetVersion", NoneType](major, minor, rev)


fn glfwGetVersionString() -> UnsafePointer[Int8]:
    return external_call["glfwGetVersionString", UnsafePointer[Int8]]()


fn glfwGetError(description: UnsafePointer[UnsafePointer[Int8]]) -> Int32:
    return external_call["glfwGetError", Int32](description)


fn glfwSetErrorCallback[
    # CallbackType: GLFWerrorfun
](callback: GLFWerrorfun) -> OpaquePointer:
    return external_call["glfwSetErrorCallback", OpaquePointer](callback)


fn glfwGetMonitors(
    count: UnsafePointer[Int32],
) -> UnsafePointer[UnsafePointer[GLFWmonitor]]:
    return external_call[
        "glfwGetMonitors", UnsafePointer[UnsafePointer[GLFWmonitor]]
    ](count)


fn glfwGetPrimaryMonitor() -> UnsafePointer[GLFWmonitor]:
    return external_call["glfwGetPrimaryMonitor", UnsafePointer[GLFWmonitor]]()


fn glfwGetMonitorPos(
    monitor: UnsafePointer[GLFWmonitor],
    xpos: UnsafePointer[Int32],
    ypos: UnsafePointer[Int32],
):
    _ = external_call["glfwGetMonitorPos", NoneType](monitor, xpos, ypos)


fn glfwGetMonitorWorkarea(
    monitor: UnsafePointer[GLFWmonitor],
    xpos: UnsafePointer[Int32],
    ypos: UnsafePointer[Int32],
    width: UnsafePointer[Int32],
    height: UnsafePointer[Int32],
):
    _ = external_call["glfwGetMonitorWorkarea", NoneType](
        monitor, xpos, ypos, width, height
    )


fn glfwGetMonitorPhysicalSize(
    monitor: UnsafePointer[GLFWmonitor],
    widthMM: UnsafePointer[Int32],
    heightMM: UnsafePointer[Int32],
):
    _ = external_call["glfwGetMonitorPhysicalSize", NoneType](
        monitor, widthMM, heightMM
    )


fn glfwGetMonitorContentScale(
    monitor: UnsafePointer[GLFWmonitor],
    xscale: UnsafePointer[Float32],
    yscale: UnsafePointer[Float32],
):
    _ = external_call["glfwGetMonitorContentScale", NoneType](
        monitor, xscale, yscale
    )


fn glfwGetMonitorName(
    monitor: UnsafePointer[GLFWmonitor],
) -> UnsafePointer[Int8]:
    return external_call["glfwGetMonitorName", UnsafePointer[Int8]](monitor)


fn glfwSetMonitorUserUnsafePointer(
    monitor: UnsafePointer[GLFWmonitor], UnsafePointer: UnsafePointer[NoneType]
):
    _ = external_call["glfwSetMonitorUserUnsafePointer", NoneType](
        monitor, UnsafePointer
    )


fn glfwGetMonitorUserPointer(
    monitor: UnsafePointer[GLFWmonitor],
) -> UnsafePointer[NoneType]:
    return external_call["glfwGetMonitorUserPointer", UnsafePointer[NoneType]](
        monitor
    )


fn glfwSetMonitorCallback[
    # CallbackType: GLFWmonitorfun
](callback: GLFWmonitorfun) -> OpaquePointer:
    return external_call["glfwSetMonitorCallback", OpaquePointer](callback)


fn glfwGetVideoModes(
    monitor: UnsafePointer[GLFWmonitor], count: UnsafePointer[Int32]
) -> UnsafePointer[GLFWvidmode]:
    return external_call["glfwGetVideoModes", UnsafePointer[GLFWvidmode]](
        monitor, count
    )


fn glfwGetVideoMode(
    monitor: UnsafePointer[GLFWmonitor],
) -> UnsafePointer[GLFWvidmode]:
    return external_call["glfwGetVideoMode", UnsafePointer[GLFWvidmode]](
        monitor
    )


fn glfwSetGamma(monitor: UnsafePointer[GLFWmonitor], gamma: Float32):
    _ = external_call["glfwSetGamma", NoneType](monitor, gamma)


fn glfwGetGammaRamp(
    monitor: UnsafePointer[GLFWmonitor],
) -> UnsafePointer[GLFWgammaramp]:
    return external_call["glfwGetGammaRamp", UnsafePointer[GLFWgammaramp]](
        monitor
    )


fn glfwSetGammaRamp(
    monitor: UnsafePointer[GLFWmonitor], ramp: UnsafePointer[GLFWgammaramp]
):
    _ = external_call["glfwSetGammaRamp", NoneType](monitor, ramp)


fn glfwDefaultWindowHints():
    _ = external_call["glfwDefaultWindowHints", NoneType]()


fn glfwWindowHint(hint: Int32, value: Int32):
    _ = external_call["glfwWindowHint", NoneType](hint, value)


fn glfwWindowHintString(hint: Int32, value: UnsafePointer[Int8]):
    _ = external_call["glfwWindowHintString", NoneType](hint, value)


fn glfwCreateWindow(
    width: Int32,
    height: Int32,
    title: UnsafePointer[Int8],
    monitor: UnsafePointer[GLFWmonitor],
    share: UnsafePointer[GLFWwindow],
) -> UnsafePointer[GLFWwindow]:
    return external_call["glfwCreateWindow", UnsafePointer[GLFWwindow]](
        width, height, title, monitor, share
    )


fn glfwDestroyWindow(window: UnsafePointer[GLFWwindow]):
    _ = external_call["glfwDestroyWindow", NoneType](window)


fn glfwWindowShouldClose(window: UnsafePointer[GLFWwindow]) -> Int32:
    return external_call["glfwWindowShouldClose", Int32](window)


fn glfwSetWindowShouldClose(window: UnsafePointer[GLFWwindow], value: Int32):
    _ = external_call["glfwSetWindowShouldClose", NoneType](window, value)


fn glfwSetWindowTitle(
    window: UnsafePointer[GLFWwindow], title: UnsafePointer[Int8]
):
    _ = external_call["glfwSetWindowTitle", NoneType](window, title)


fn glfwSetWindowIcon(
    window: UnsafePointer[GLFWwindow],
    count: Int32,
    images: UnsafePointer[GLFWimage],
):
    _ = external_call["glfwSetWindowIcon", NoneType](window, count, images)


fn glfwGetWindowPos(
    window: UnsafePointer[GLFWwindow],
    xpos: UnsafePointer[Int32],
    ypos: UnsafePointer[Int32],
):
    _ = external_call["glfwGetWindowPos", NoneType](window, xpos, ypos)


fn glfwSetWindowPos(
    window: UnsafePointer[GLFWwindow], xpos: Int32, ypos: Int32
):
    _ = external_call["glfwSetWindowPos", NoneType](window, xpos, ypos)


fn glfwGetWindowSize(
    window: UnsafePointer[GLFWwindow],
    width: UnsafePointer[Int32],
    height: UnsafePointer[Int32],
):
    _ = external_call["glfwGetWindowSize", NoneType](window, width, height)


fn glfwSetWindowSizeLimits(
    window: UnsafePointer[GLFWwindow],
    minwidth: Int32,
    minheight: Int32,
    maxwidth: Int32,
    maxheight: Int32,
):
    _ = external_call["glfwSetWindowSizeLimits", NoneType](
        window, minwidth, minheight, maxwidth, maxheight
    )


fn glfwSetWindowAspectRatio(
    window: UnsafePointer[GLFWwindow], numer: Int32, denom: Int32
):
    _ = external_call["glfwSetWindowAspectRatio", NoneType](
        window, numer, denom
    )


fn glfwSetWindowSize(
    window: UnsafePointer[GLFWwindow], width: Int32, height: Int32
):
    _ = external_call["glfwSetWindowSize", NoneType](window, width, height)


fn glfwGetFramebufferSize(
    window: UnsafePointer[GLFWwindow],
    width: UnsafePointer[Int32],
    height: UnsafePointer[Int32],
):
    _ = external_call["glfwGetFramebufferSize", NoneType](window, width, height)


fn glfwGetWindowFrameSize(
    window: UnsafePointer[GLFWwindow],
    left: UnsafePointer[Int32],
    top: UnsafePointer[Int32],
    right: UnsafePointer[Int32],
    bottom: UnsafePointer[Int32],
):
    _ = external_call["glfwGetWindowFrameSize", NoneType](
        window, left, top, right, bottom
    )


fn glfwGetWindowContentScale(
    window: UnsafePointer[GLFWwindow],
    xscale: UnsafePointer[Float32],
    yscale: UnsafePointer[Float32],
):
    _ = external_call["glfwGetWindowContentScale", NoneType](
        window, xscale, yscale
    )


fn glfwGetWindowOpacity(window: UnsafePointer[GLFWwindow]) -> Float32:
    return external_call["glfwGetWindowOpacity", Float32](window)


fn glfwSetWindowOpacity(window: UnsafePointer[GLFWwindow], opacity: Float32):
    _ = external_call["glfwSetWindowOpacity", NoneType](window, opacity)


fn glfwIconifyWindow(window: UnsafePointer[GLFWwindow]):
    _ = external_call["glfwIconifyWindow", NoneType](window)


fn glfwRestoreWindow(window: UnsafePointer[GLFWwindow]):
    _ = external_call["glfwRestoreWindow", NoneType](window)


fn glfwMaximizeWindow(window: UnsafePointer[GLFWwindow]):
    _ = external_call["glfwMaximizeWindow", NoneType](window)


fn glfwShowWindow(window: UnsafePointer[GLFWwindow]):
    _ = external_call["glfwShowWindow", NoneType](window)


fn glfwHideWindow(window: UnsafePointer[GLFWwindow]):
    _ = external_call["glfwHideWindow", NoneType](window)


fn glfwFocusWindow(window: UnsafePointer[GLFWwindow]):
    _ = external_call["glfwFocusWindow", NoneType](window)


fn glfwRequestWindowAttention(window: UnsafePointer[GLFWwindow]):
    _ = external_call["glfwRequestWindowAttention", NoneType](window)


fn glfwGetWindowMonitor(
    window: UnsafePointer[GLFWwindow],
) -> UnsafePointer[GLFWmonitor]:
    return external_call["glfwGetWindowMonitor", UnsafePointer[GLFWmonitor]](
        window
    )


fn glfwSetWindowMonitor(
    window: UnsafePointer[GLFWwindow],
    monitor: UnsafePointer[GLFWmonitor],
    xpos: Int32,
    ypos: Int32,
    width: Int32,
    height: Int32,
    refreshRate: Int32,
):
    _ = external_call["glfwSetWindowMonitor", NoneType](
        window, monitor, xpos, ypos, width, height, refreshRate
    )


fn glfwGetWindowAttrib(
    window: UnsafePointer[GLFWwindow], attrib: Int32
) -> Int32:
    return external_call["glfwGetWindowAttrib", Int32](window, attrib)


fn glfwSetWindowAttrib(
    window: UnsafePointer[GLFWwindow], attrib: Int32, value: Int32
):
    _ = external_call["glfwSetWindowAttrib", NoneType](window, attrib, value)


fn glfwSetWindowUserPointer(
    window: UnsafePointer[GLFWwindow], UnsafePointer: UnsafePointer[NoneType]
):
    _ = external_call["glfwSetWindowUserPointer", NoneType](
        window, UnsafePointer
    )


fn glfwGetWindowUserPointer(
    window: UnsafePointer[GLFWwindow],
) -> UnsafePointer[NoneType]:
    return external_call["glfwGetWindowUserPointer", UnsafePointer[NoneType]](
        window
    )


fn glfwSetWindowPosCallback[
    # CallbackType: GLFWwindowposfun
](
    window: UnsafePointer[GLFWwindow], callback: GLFWwindowposfun
) -> OpaquePointer:
    return external_call["glfwSetWindowPosCallback", OpaquePointer](
        window, callback
    )


fn glfwSetWindowSizeCallback[
    # CallbackType: GLFWwindowsizefun
](
    window: UnsafePointer[GLFWwindow], callback: GLFWwindowsizefun
) -> OpaquePointer:
    return external_call["glfwSetWindowSizeCallback", OpaquePointer](
        window, callback
    )


fn glfwSetWindowCloseCallback[
    # CallbackType: GLFWwindowclosefun
](
    window: UnsafePointer[GLFWwindow], callback: GLFWwindowclosefun
) -> OpaquePointer:
    return external_call["glfwSetWindowCloseCallback", OpaquePointer](
        window, callback
    )


fn glfwSetWindowRefreshCallback[
    # CallbackType: GLFWwindowrefreshfun
](
    window: UnsafePointer[GLFWwindow], callback: GLFWwindowrefreshfun
) -> OpaquePointer:
    return external_call["glfwSetWindowRefreshCallback", OpaquePointer](
        window, callback
    )


fn glfwSetWindowFocusCallback[
    # CallbackType: GLFWwindowfocusfun
](
    window: UnsafePointer[GLFWwindow], callback: GLFWwindowfocusfun
) -> OpaquePointer:
    return external_call["glfwSetWindowFocusCallback", OpaquePointer](
        window, callback
    )


fn glfwSetWindowIconifyCallback[
    # CallbackType: GLFWwindowiconifyfun
](
    window: UnsafePointer[GLFWwindow], callback: GLFWwindowiconifyfun
) -> OpaquePointer:
    return external_call["glfwSetWindowIconifyCallback", OpaquePointer](
        window, callback
    )


fn glfwSetWindowMaximizeCallback[
    # CallbackType: GLFWwindowmaximizefun
](
    window: UnsafePointer[GLFWwindow], callback: GLFWwindowmaximizefun
) -> OpaquePointer:
    return external_call["glfwSetWindowMaximizeCallback", OpaquePointer](
        window, callback
    )


fn glfwSetFramebufferSizeCallback[
    # CallbackType: GLFWframebuffersizefun
](
    window: UnsafePointer[GLFWwindow], callback: GLFWframebuffersizefun
) -> OpaquePointer:
    return external_call["glfwSetFramebufferSizeCallback", OpaquePointer](
        window, callback
    )


fn glfwSetWindowContentScaleCallback[
    # CallbackType: GLFWwindowcontentscalefun
](
    window: UnsafePointer[GLFWwindow], callback: GLFWwindowcontentscalefun
) -> OpaquePointer:
    return external_call["glfwSetWindowContentScaleCallback", OpaquePointer](
        window, callback
    )


fn glfwPollEvents():
    _ = external_call["glfwPollEvents", NoneType]()


fn glfwWaitEvents():
    _ = external_call["glfwWaitEvents", NoneType]()


fn glfwWaitEventsTimeout(timeout: Float64):
    _ = external_call["glfwWaitEventsTimeout", NoneType](timeout)


fn glfwPostEmptyEvent():
    _ = external_call["glfwPostEmptyEvent", NoneType]()


fn glfwGetInputMode(window: UnsafePointer[GLFWwindow], mode: Int32) -> Int32:
    return external_call["glfwGetInputMode", Int32](window, mode)


fn glfwSetInputMode(
    window: UnsafePointer[GLFWwindow], mode: Int32, value: Int32
):
    _ = external_call["glfwSetInputMode", NoneType](window, mode, value)


fn glfwRawMouseMotionSupported() -> Int32:
    return external_call["glfwRawMouseMotionSupported", Int32]()


fn glfwGetKeyName(key: Int32, scancode: Int32) -> UnsafePointer[Int8]:
    return external_call["glfwGetKeyName", UnsafePointer[Int8]](key, scancode)


fn glfwGetKeyScancode(key: Int32) -> Int32:
    return external_call["glfwGetKeyScancode", Int32](key)


fn glfwGetKey(window: UnsafePointer[GLFWwindow], key: Int32) -> Int32:
    return external_call["glfwGetKey", Int32](window, key)


fn glfwGetMouseButton(
    window: UnsafePointer[GLFWwindow], button: Int32
) -> Int32:
    return external_call["glfwGetMouseButton", Int32](window, button)


fn glfwGetCursorPos(
    window: UnsafePointer[GLFWwindow],
    xpos: UnsafePointer[Float64],
    ypos: UnsafePointer[Float64],
):
    _ = external_call["glfwGetCursorPos", NoneType](window, xpos, ypos)


fn glfwSetCursorPos(
    window: UnsafePointer[GLFWwindow], xpos: Float64, ypos: Float64
):
    _ = external_call["glfwSetCursorPos", NoneType](window, xpos, ypos)


fn glfwCreateCursor(
    image: UnsafePointer[GLFWimage], xhot: Int32, yhot: Int32
) -> UnsafePointer[GLFWcursor]:
    return external_call["glfwCreateCursor", UnsafePointer[GLFWcursor]](
        image, xhot, yhot
    )


fn glfwCreateStandardCursor(shape: Int32) -> UnsafePointer[GLFWcursor]:
    return external_call["glfwCreateStandardCursor", UnsafePointer[GLFWcursor]](
        shape
    )


fn glfwDestroyCursor(cursor: UnsafePointer[GLFWcursor]):
    _ = external_call["glfwDestroyCursor", NoneType](cursor)


fn glfwSetCursor(
    window: UnsafePointer[GLFWwindow], cursor: UnsafePointer[GLFWcursor]
):
    _ = external_call["glfwSetCursor", NoneType](window, cursor)


fn glfwSetKeyCallback[
    # CallbackType: GLFWkeyfun
](window: UnsafePointer[GLFWwindow], callback: GLFWkeyfun) -> OpaquePointer:
    return external_call["glfwSetKeyCallback", OpaquePointer](window, callback)


fn glfwSetCharCallback[
    # CallbackType: GLFWcharfun
](window: UnsafePointer[GLFWwindow], callback: GLFWcharfun) -> OpaquePointer:
    return external_call["glfwSetCharCallback", OpaquePointer](window, callback)


fn glfwSetCharModsCallback[
    # CallbackType: GLFWcharmodsfun
](
    window: UnsafePointer[GLFWwindow], callback: GLFWcharmodsfun
) -> OpaquePointer:
    return external_call["glfwSetCharModsCallback", OpaquePointer](
        window, callback
    )


fn glfwSetMouseButtonCallback[
    # CallbackType: GLFWmousebuttonfun
](
    window: UnsafePointer[GLFWwindow], callback: GLFWmousebuttonfun
) -> OpaquePointer:
    return external_call["glfwSetMouseButtonCallback", OpaquePointer](
        window, callback
    )


fn glfwSetCursorPosCallback[
    # CallbackType: GLFWcursorposfun
](
    window: UnsafePointer[GLFWwindow], callback: GLFWcursorposfun
) -> OpaquePointer:
    return external_call["glfwSetCursorPosCallback", OpaquePointer](
        window, callback
    )


fn glfwSetCursorEnterCallback[
    # CallbackType: GLFWcursorenterfun
](
    window: UnsafePointer[GLFWwindow], callback: GLFWcursorenterfun
) -> OpaquePointer:
    return external_call["glfwSetCursorEnterCallback", OpaquePointer](
        window, callback
    )


fn glfwSetScrollCallback[
    # CallbackType: GLFWscrollfun
](window: UnsafePointer[GLFWwindow], callback: GLFWscrollfun) -> OpaquePointer:
    return external_call["glfwSetScrollCallback", OpaquePointer](
        window, callback
    )


fn glfwSetDropCallback[
    # CallbackType: GLFWdropfun
](window: UnsafePointer[GLFWwindow], callback: GLFWdropfun) -> OpaquePointer:
    return external_call["glfwSetDropCallback", OpaquePointer](window, callback)


fn glfwJoystickPresent(jid: Int32) -> Int32:
    return external_call["glfwJoystickPresent", Int32](jid)


fn glfwGetJoystickAxes(
    jid: Int32, count: UnsafePointer[Int32]
) -> UnsafePointer[Float32]:
    return external_call["glfwGetJoystickAxes", UnsafePointer[Float32]](
        jid, count
    )


fn glfwGetJoystickButtons(
    jid: Int32, count: UnsafePointer[Int32]
) -> UnsafePointer[Int8]:
    return external_call["glfwGetJoystickButtons", UnsafePointer[Int8]](
        jid, count
    )


fn glfwGetJoystickHats(
    jid: Int32, count: UnsafePointer[Int32]
) -> UnsafePointer[Int8]:
    return external_call["glfwGetJoystickHats", UnsafePointer[Int8]](jid, count)


fn glfwGetJoystickName(jid: Int32) -> UnsafePointer[Int8]:
    return external_call["glfwGetJoystickName", UnsafePointer[Int8]](jid)


fn glfwGetJoystickGUID(jid: Int32) -> UnsafePointer[Int8]:
    return external_call["glfwGetJoystickGUID", UnsafePointer[Int8]](jid)


fn glfwSetJoystickUserUnsafePointer(
    jid: Int32, UnsafePointer: UnsafePointer[NoneType]
):
    _ = external_call["glfwSetJoystickUserUnsafePointer", NoneType](
        jid, UnsafePointer
    )


fn glfwGetJoystickUserUnsafePointer(jid: Int32) -> UnsafePointer[NoneType]:
    return external_call[
        "glfwGetJoystickUserUnsafePointer", UnsafePointer[NoneType]
    ](jid)


fn glfwJoystickIsGamepad(jid: Int32) -> Int32:
    return external_call["glfwJoystickIsGamepad", Int32](jid)


fn glfwSetJoystickCallback[
    # CallbackType: GLFWjoystickfun
](callback: GLFWjoystickfun) -> OpaquePointer:
    return external_call["glfwSetJoystickCallback", OpaquePointer](callback)


fn glfwUpdateGamepadMappings(string: UnsafePointer[Int8]) -> Int32:
    return external_call["glfwUpdateGamepadMappings", Int32](string)


fn glfwGetGamepadName(jid: Int32) -> UnsafePointer[Int8]:
    return external_call["glfwGetGamepadName", UnsafePointer[Int8]](jid)


fn glfwGetGamepadState(
    jid: Int32, state: UnsafePointer[GLFWgamepadstate]
) -> Int32:
    return external_call["glfwGetGamepadState", Int32](jid, state)


fn glfwSetClipboardString(
    window: UnsafePointer[GLFWwindow], string: UnsafePointer[Int8]
):
    _ = external_call["glfwSetClipboardString", NoneType](window, string)


fn glfwGetClipboardString(
    window: UnsafePointer[GLFWwindow],
) -> UnsafePointer[Int8]:
    return external_call["glfwGetClipboardString", UnsafePointer[Int8]](window)


fn glfwGetTime() -> Float64:
    return external_call["glfwGetTime", Float64]()


fn glfwSetTime(time: Float64):
    _ = external_call["glfwSetTime", NoneType](time)


fn glfwGetTimerValue() -> UInt64:
    return external_call["glfwGetTimerValue", UInt64]()


fn glfwGetTimerFrequency() -> UInt64:
    return external_call["glfwGetTimerFrequency", UInt64]()


fn glfwMakeContextCurrent(window: UnsafePointer[GLFWwindow]):
    _ = external_call["glfwMakeContextCurrent", NoneType](window)


fn glfwGetCurrentContext() -> UnsafePointer[GLFWwindow]:
    return external_call["glfwGetCurrentContext", UnsafePointer[GLFWwindow]]()


fn glfwSwapBuffers(window: UnsafePointer[GLFWwindow]):
    _ = external_call["glfwSwapBuffers", NoneType](window)


fn glfwSwapInterval(interval: Int32):
    _ = external_call["glfwSwapInterval", NoneType](interval)


fn glfwExtensionSupported(extension: UnsafePointer[Int8]) -> Int32:
    return external_call["glfwExtensionSupported", Int32](extension)


fn glfwGetProcAddress(procname: UnsafePointer[Int8]) -> GLFWglproc:
    return external_call["glfwGetProcAddress", GLFWglproc](procname)


fn glfwVulkanSupported() -> Int32:
    return external_call["glfwVulkanSupported", Int32]()


fn glfwGetRequiredInstanceExtensions(
    count: UnsafePointer[UInt32],
) -> UnsafePointer[UnsafePointer[Int8]]:
    return external_call[
        "glfwGetRequiredInstanceExtensions", UnsafePointer[UnsafePointer[Int8]]
    ](count)


# Vulkan stuff, currently OpaquePointer, but should be more specific types


fn glfwGetInstanceProcAddress(
    instance: OpaquePointer, procname: UnsafePointer[Int8]
) -> GLFWvkproc:
    return external_call["glfwGetInstanceProcAddress", GLFWvkproc](
        instance, procname
    )


fn glfwGetPhysicalDevicePresentationSupport(
    instance: OpaquePointer, device: OpaquePointer, queuefamily: UInt32
) -> Int32:
    return external_call["glfwGetPhysicalDevicePresentationSupport", Int32](
        instance, device, queuefamily
    )


fn glfwCreateWindowSurface(
    instance: OpaquePointer,
    window: UnsafePointer[GLFWwindow],
    allocator: OpaquePointer,
    surface: OpaquePointer,
) -> Int32:
    return external_call["glfwCreateWindowSurface", Int32](
        instance, window, allocator, surface
    )


fn glfwGetCocoaWindow(window: UnsafePointer[GLFWwindow]) -> OpaquePointer:
    return external_call[
        "glfwGetCocoaWindow", OpaquePointer, UnsafePointer[GLFWwindow]
    ](window)
