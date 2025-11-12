from sys.ffi import external_call

# --------------------------------------------------------------------------
#  * GLFW API tokens
# --------------------------------------------------------------------------

comptime GLFW_VERSION_MAJOR = 3
comptime GLFW_VERSION_MINOR = 4
comptime GLFW_VERSION_REVISION = 0
comptime GLFW_TRUE = 1
comptime GLFW_FALSE = 0

comptime GLFW_RELEASE = 0
comptime GLFW_PRESS = 1
comptime GLFW_REPEAT = 2
comptime GLFW_HAT_CENTERED = 0
comptime GLFW_HAT_UP = 1
comptime GLFW_HAT_RIGHT = 2
comptime GLFW_HAT_DOWN = 4
comptime GLFW_HAT_LEFT = 8
comptime GLFW_HAT_RIGHT_UP = (GLFW_HAT_RIGHT | GLFW_HAT_UP)
comptime GLFW_HAT_RIGHT_DOWN = (GLFW_HAT_RIGHT | GLFW_HAT_DOWN)
comptime GLFW_HAT_LEFT_UP = (GLFW_HAT_LEFT | GLFW_HAT_UP)
comptime GLFW_HAT_LEFT_DOWN = (GLFW_HAT_LEFT | GLFW_HAT_DOWN)

comptime GLFW_KEY_UNKNOWN = -1

# Printable keys
comptime GLFW_KEY_SPACE = 32
comptime GLFW_KEY_APOSTROPHE = 39  # '
comptime GLFW_KEY_COMMA = 44  # ,
comptime GLFW_KEY_MINUS = 45  # -
comptime GLFW_KEY_PERIOD = 46  # .
comptime GLFW_KEY_SLASH = 47  # /
comptime GLFW_KEY_0 = 48
comptime GLFW_KEY_1 = 49
comptime GLFW_KEY_2 = 50
comptime GLFW_KEY_3 = 51
comptime GLFW_KEY_4 = 52
comptime GLFW_KEY_5 = 53
comptime GLFW_KEY_6 = 54
comptime GLFW_KEY_7 = 55
comptime GLFW_KEY_8 = 56
comptime GLFW_KEY_9 = 57
comptime GLFW_KEY_SEMICOLON = 59  # ;
comptime GLFW_KEY_EQUAL = 61  # =
comptime GLFW_KEY_A = 65
comptime GLFW_KEY_B = 66
comptime GLFW_KEY_C = 67
comptime GLFW_KEY_D = 68
comptime GLFW_KEY_E = 69
comptime GLFW_KEY_F = 70
comptime GLFW_KEY_G = 71
comptime GLFW_KEY_H = 72
comptime GLFW_KEY_I = 73
comptime GLFW_KEY_J = 74
comptime GLFW_KEY_K = 75
comptime GLFW_KEY_L = 76
comptime GLFW_KEY_M = 77
comptime GLFW_KEY_N = 78
comptime GLFW_KEY_O = 79
comptime GLFW_KEY_P = 80
comptime GLFW_KEY_Q = 81
comptime GLFW_KEY_R = 82
comptime GLFW_KEY_S = 83
comptime GLFW_KEY_T = 84
comptime GLFW_KEY_U = 85
comptime GLFW_KEY_V = 86
comptime GLFW_KEY_W = 87
comptime GLFW_KEY_X = 88
comptime GLFW_KEY_Y = 89
comptime GLFW_KEY_Z = 90
comptime GLFW_KEY_LEFT_BRACKET = 91  # [
comptime GLFW_KEY_BACKSLASH = 92  # \
comptime GLFW_KEY_RIGHT_BRACKET = 93  # ]
comptime GLFW_KEY_GRAVE_ACCENT = 96  # `
comptime GLFW_KEY_WORLD_1 = 161  # non-US #1
comptime GLFW_KEY_WORLD_2 = 162  # non-US #2

# Function keys
comptime GLFW_KEY_ESCAPE = 256
comptime GLFW_KEY_ENTER = 257
comptime GLFW_KEY_TAB = 258
comptime GLFW_KEY_BACKSPACE = 259
comptime GLFW_KEY_INSERT = 260
comptime GLFW_KEY_DELETE = 261
comptime GLFW_KEY_RIGHT = 262
comptime GLFW_KEY_LEFT = 263
comptime GLFW_KEY_DOWN = 264
comptime GLFW_KEY_UP = 265
comptime GLFW_KEY_PAGE_UP = 266
comptime GLFW_KEY_PAGE_DOWN = 267
comptime GLFW_KEY_HOME = 268
comptime GLFW_KEY_END = 269
comptime GLFW_KEY_CAPS_LOCK = 280
comptime GLFW_KEY_SCROLL_LOCK = 281
comptime GLFW_KEY_NUM_LOCK = 282
comptime GLFW_KEY_PRINT_SCREEN = 283
comptime GLFW_KEY_PAUSE = 284
comptime GLFW_KEY_F1 = 290
comptime GLFW_KEY_F2 = 291
comptime GLFW_KEY_F3 = 292
comptime GLFW_KEY_F4 = 293
comptime GLFW_KEY_F5 = 294
comptime GLFW_KEY_F6 = 295
comptime GLFW_KEY_F7 = 296
comptime GLFW_KEY_F8 = 297
comptime GLFW_KEY_F9 = 298
comptime GLFW_KEY_F10 = 299
comptime GLFW_KEY_F11 = 300
comptime GLFW_KEY_F12 = 301
comptime GLFW_KEY_F13 = 302
comptime GLFW_KEY_F14 = 303
comptime GLFW_KEY_F15 = 304
comptime GLFW_KEY_F16 = 305
comptime GLFW_KEY_F17 = 306
comptime GLFW_KEY_F18 = 307
comptime GLFW_KEY_F19 = 308
comptime GLFW_KEY_F20 = 309
comptime GLFW_KEY_F21 = 310
comptime GLFW_KEY_F22 = 311
comptime GLFW_KEY_F23 = 312
comptime GLFW_KEY_F24 = 313
comptime GLFW_KEY_F25 = 314
comptime GLFW_KEY_KP_0 = 320
comptime GLFW_KEY_KP_1 = 321
comptime GLFW_KEY_KP_2 = 322
comptime GLFW_KEY_KP_3 = 323
comptime GLFW_KEY_KP_4 = 324
comptime GLFW_KEY_KP_5 = 325
comptime GLFW_KEY_KP_6 = 326
comptime GLFW_KEY_KP_7 = 327
comptime GLFW_KEY_KP_8 = 328
comptime GLFW_KEY_KP_9 = 329
comptime GLFW_KEY_KP_DECIMAL = 330
comptime GLFW_KEY_KP_DIVIDE = 331
comptime GLFW_KEY_KP_MULTIPLY = 332
comptime GLFW_KEY_KP_SUBTRACT = 333
comptime GLFW_KEY_KP_ADD = 334
comptime GLFW_KEY_KP_ENTER = 335
comptime GLFW_KEY_KP_EQUAL = 336
comptime GLFW_KEY_LEFT_SHIFT = 340
comptime GLFW_KEY_LEFT_CONTROL = 341
comptime GLFW_KEY_LEFT_ALT = 342
comptime GLFW_KEY_LEFT_SUPER = 343
comptime GLFW_KEY_RIGHT_SHIFT = 344
comptime GLFW_KEY_RIGHT_CONTROL = 345
comptime GLFW_KEY_RIGHT_ALT = 346
comptime GLFW_KEY_RIGHT_SUPER = 347
comptime GLFW_KEY_MENU = 348

comptime GLFW_KEY_LAST = GLFW_KEY_MENU

comptime GLFW_MOD_SHIFT = 0x0001
comptime GLFW_MOD_CONTROL = 0x0002
comptime GLFW_MOD_ALT = 0x0004
comptime GLFW_MOD_SUPER = 0x0008
comptime GLFW_MOD_CAPS_LOCK = 0x0010
comptime GLFW_MOD_NUM_LOCK = 0x0020

comptime GLFW_MOUSE_BUTTON_1 = 0
comptime GLFW_MOUSE_BUTTON_2 = 1
comptime GLFW_MOUSE_BUTTON_3 = 2
comptime GLFW_MOUSE_BUTTON_4 = 3
comptime GLFW_MOUSE_BUTTON_5 = 4
comptime GLFW_MOUSE_BUTTON_6 = 5
comptime GLFW_MOUSE_BUTTON_7 = 6
comptime GLFW_MOUSE_BUTTON_8 = 7
comptime GLFW_MOUSE_BUTTON_LAST = GLFW_MOUSE_BUTTON_8
comptime GLFW_MOUSE_BUTTON_LEFT = GLFW_MOUSE_BUTTON_1
comptime GLFW_MOUSE_BUTTON_RIGHT = GLFW_MOUSE_BUTTON_2
comptime GLFW_MOUSE_BUTTON_MIDDLE = GLFW_MOUSE_BUTTON_3
comptime GLFW_JOYSTICK_1 = 0
comptime GLFW_JOYSTICK_2 = 1
comptime GLFW_JOYSTICK_3 = 2
comptime GLFW_JOYSTICK_4 = 3
comptime GLFW_JOYSTICK_5 = 4
comptime GLFW_JOYSTICK_6 = 5
comptime GLFW_JOYSTICK_7 = 6
comptime GLFW_JOYSTICK_8 = 7
comptime GLFW_JOYSTICK_9 = 8
comptime GLFW_JOYSTICK_10 = 9
comptime GLFW_JOYSTICK_11 = 10
comptime GLFW_JOYSTICK_12 = 11
comptime GLFW_JOYSTICK_13 = 12
comptime GLFW_JOYSTICK_14 = 13
comptime GLFW_JOYSTICK_15 = 14
comptime GLFW_JOYSTICK_16 = 15
comptime GLFW_JOYSTICK_LAST = GLFW_JOYSTICK_16
comptime GLFW_GAMEPAD_BUTTON_A = 0
comptime GLFW_GAMEPAD_BUTTON_B = 1
comptime GLFW_GAMEPAD_BUTTON_X = 2
comptime GLFW_GAMEPAD_BUTTON_Y = 3
comptime GLFW_GAMEPAD_BUTTON_LEFT_BUMPER = 4
comptime GLFW_GAMEPAD_BUTTON_RIGHT_BUMPER = 5
comptime GLFW_GAMEPAD_BUTTON_BACK = 6
comptime GLFW_GAMEPAD_BUTTON_START = 7
comptime GLFW_GAMEPAD_BUTTON_GUIDE = 8
comptime GLFW_GAMEPAD_BUTTON_LEFT_THUMB = 9
comptime GLFW_GAMEPAD_BUTTON_RIGHT_THUMB = 10
comptime GLFW_GAMEPAD_BUTTON_DPAD_UP = 11
comptime GLFW_GAMEPAD_BUTTON_DPAD_RIGHT = 12
comptime GLFW_GAMEPAD_BUTTON_DPAD_DOWN = 13
comptime GLFW_GAMEPAD_BUTTON_DPAD_LEFT = 14
comptime GLFW_GAMEPAD_BUTTON_LAST = GLFW_GAMEPAD_BUTTON_DPAD_LEFT

comptime GLFW_GAMEPAD_BUTTON_CROSS = GLFW_GAMEPAD_BUTTON_A
comptime GLFW_GAMEPAD_BUTTON_CIRCLE = GLFW_GAMEPAD_BUTTON_B
comptime GLFW_GAMEPAD_BUTTON_SQUARE = GLFW_GAMEPAD_BUTTON_X
comptime GLFW_GAMEPAD_BUTTON_TRIANGLE = GLFW_GAMEPAD_BUTTON_Y
comptime GLFW_GAMEPAD_AXIS_LEFT_X = 0
comptime GLFW_GAMEPAD_AXIS_LEFT_Y = 1
comptime GLFW_GAMEPAD_AXIS_RIGHT_X = 2
comptime GLFW_GAMEPAD_AXIS_RIGHT_Y = 3
comptime GLFW_GAMEPAD_AXIS_LEFT_TRIGGER = 4
comptime GLFW_GAMEPAD_AXIS_RIGHT_TRIGGER = 5
comptime GLFW_GAMEPAD_AXIS_LAST = GLFW_GAMEPAD_AXIS_RIGHT_TRIGGER
comptime GLFW_NO_ERROR = 0
comptime GLFW_NOT_INITIALIZED = 0x00010001
comptime GLFW_NO_CURRENT_CONTEXT = 0x00010002
comptime GLFW_INVALID_ENUM = 0x00010003
comptime GLFW_INVALID_VALUE = 0x00010004
comptime GLFW_OUT_OF_MEMORY = 0x00010005
comptime GLFW_API_UNAVAILABLE = 0x00010006
comptime GLFW_VERSION_UNAVAILABLE = 0x00010007
comptime GLFW_PLATFORM_ERROR = 0x00010008
comptime GLFW_FORMAT_UNAVAILABLE = 0x00010009
comptime GLFW_NO_WINDOW_CONTEXT = 0x0001000A
comptime GLFW_FOCUSED = 0x00020001
comptime GLFW_ICONIFIED = 0x00020002
comptime GLFW_RESIZABLE = 0x00020003
comptime GLFW_VISIBLE = 0x00020004
comptime GLFW_DECORATED = 0x00020005
comptime GLFW_AUTO_ICONIFY = 0x00020006
comptime GLFW_FLOATING = 0x00020007
comptime GLFW_MAXIMIZED = 0x00020008
comptime GLFW_CENTER_CURSOR = 0x00020009
comptime GLFW_TRANSPARENT_FRAMEBUFFER = 0x0002000A
comptime GLFW_HOVERED = 0x0002000B
comptime GLFW_FOCUS_ON_SHOW = 0x0002000C

comptime GLFW_RED_BITS = 0x00021001
comptime GLFW_GREEN_BITS = 0x00021002
comptime GLFW_BLUE_BITS = 0x00021003
comptime GLFW_ALPHA_BITS = 0x00021004
comptime GLFW_DEPTH_BITS = 0x00021005
comptime GLFW_STENCIL_BITS = 0x00021006
comptime GLFW_ACCUM_RED_BITS = 0x00021007
comptime GLFW_ACCUM_GREEN_BITS = 0x00021008
comptime GLFW_ACCUM_BLUE_BITS = 0x00021009
comptime GLFW_ACCUM_ALPHA_BITS = 0x0002100A
comptime GLFW_AUX_BUFFERS = 0x0002100B
comptime GLFW_STEREO = 0x0002100C
comptime GLFW_SAMPLES = 0x0002100D
comptime GLFW_SRGB_CAPABLE = 0x0002100E
comptime GLFW_REFRESH_RATE = 0x0002100F
comptime GLFW_DOUBLEBUFFER = 0x00021010

comptime GLFW_CLIENT_API = 0x00022001
comptime GLFW_CONTEXT_VERSION_MAJOR = 0x00022002
comptime GLFW_CONTEXT_VERSION_MINOR = 0x00022003
comptime GLFW_CONTEXT_REVISION = 0x00022004
comptime GLFW_CONTEXT_ROBUSTNESS = 0x00022005
comptime GLFW_OPENGL_FORWARD_COMPAT = 0x00022006
comptime GLFW_OPENGL_DEBUG_CONTEXT = 0x00022007
comptime GLFW_OPENGL_PROFILE = 0x00022008
comptime GLFW_CONTEXT_RELEASE_BEHAVIOR = 0x00022009
comptime GLFW_CONTEXT_NO_ERROR = 0x0002200A
comptime GLFW_CONTEXT_CREATION_API = 0x0002200B
comptime GLFW_SCALE_TO_MONITOR = 0x0002200C
comptime GLFW_COCOA_RETINA_FRAMEBUFFER = 0x00023001
comptime GLFW_COCOA_FRAME_NAME = 0x00023002
comptime GLFW_COCOA_GRAPHICS_SWITCHING = 0x00023003
comptime GLFW_X11_CLASS_NAME = 0x00024001
comptime GLFW_X11_INSTANCE_NAME = 0x00024002
comptime GLFW_NO_API = 0
comptime GLFW_OPENGL_API = 0x00030001
comptime GLFW_OPENGL_ES_API = 0x00030002

comptime GLFW_NO_ROBUSTNESS = 0
comptime GLFW_NO_RESET_NOTIFICATION = 0x00031001
comptime GLFW_LOSE_CONTEXT_ON_RESET = 0x00031002

comptime GLFW_OPENGL_ANY_PROFILE = 0
comptime GLFW_OPENGL_CORE_PROFILE = 0x00032001
comptime GLFW_OPENGL_COMPAT_PROFILE = 0x00032002

comptime GLFW_CURSOR = 0x00033001
comptime GLFW_STICKY_KEYS = 0x00033002
comptime GLFW_STICKY_MOUSE_BUTTONS = 0x00033003
comptime GLFW_LOCK_KEY_MODS = 0x00033004
comptime GLFW_RAW_MOUSE_MOTION = 0x00033005

comptime GLFW_CURSOR_NORMAL = 0x00034001
comptime GLFW_CURSOR_HIDDEN = 0x00034002
comptime GLFW_CURSOR_DISABLED = 0x00034003

comptime GLFW_ANY_RELEASE_BEHAVIOR = 0
comptime GLFW_RELEASE_BEHAVIOR_FLUSH = 0x00035001
comptime GLFW_RELEASE_BEHAVIOR_NONE = 0x00035002

comptime GLFW_NATIVE_CONTEXT_API = 0x00036001
comptime GLFW_EGL_CONTEXT_API = 0x00036002
comptime GLFW_OSMESA_CONTEXT_API = 0x00036003

comptime GLFW_WAYLAND_PREFER_LIBDECOR = 0x00038001
comptime GLFW_WAYLAND_DISABLE_LIBDECOR = 0x00038002

comptime GLFW_ARROW_CURSOR = 0x00036001
comptime GLFW_IBEAM_CURSOR = 0x00036002
comptime GLFW_CROSSHAIR_CURSOR = 0x00036003
comptime GLFW_HAND_CURSOR = 0x00036004
comptime GLFW_HRESIZE_CURSOR = 0x00036005
comptime GLFW_VRESIZE_CURSOR = 0x00036006
comptime GLFW_CONNECTED = 0x00040001
comptime GLFW_DISCONNECTED = 0x00040002

comptime GLFW_JOYSTICK_HAT_BUTTONS = 0x00050001
comptime GLFW_COCOA_CHDIR_RESOURCES = 0x00051001
comptime GLFW_COCOA_MENUBAR = 0x00051002
comptime GLFW_WAYLAND_LIBDECOR = 0x00053001
comptime GLFW_DONT_CARE = -1


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
comptime GLFWglproc = fn () -> None
comptime GLFWvkproc = fn () -> None

# Callback function types
comptime GLFWerrorfun[origin: ImmutOrigin] = fn (
    Int32, UnsafePointer[Int8, origin]
) -> None
comptime GLFWwindowposfun[origin: MutOrigin] = fn (
    UnsafePointer[GLFWwindow, origin], Int32, Int32
) -> None
comptime GLFWwindowsizefun[origin: MutOrigin] = fn (
    UnsafePointer[GLFWwindow, origin], Int32, Int32
) -> None
comptime GLFWwindowclosefun[origin: MutOrigin] = fn (
    UnsafePointer[GLFWwindow, origin]
) -> None
comptime GLFWwindowrefreshfun[origin: MutOrigin] = fn (
    UnsafePointer[GLFWwindow, origin]
) -> None
comptime GLFWwindowfocusfun[origin: MutOrigin] = fn (
    UnsafePointer[GLFWwindow, origin], Int32
) -> None
comptime GLFWwindowiconifyfun[origin: MutOrigin] = fn (
    UnsafePointer[GLFWwindow, origin], Int32
) -> None
comptime GLFWwindowmaximizefun[origin: MutOrigin] = fn (
    UnsafePointer[GLFWwindow, origin], Int32
) -> None
comptime GLFWframebuffersizefun[origin: MutOrigin] = fn (
    UnsafePointer[GLFWwindow, origin], Int32, Int32
) -> None
comptime GLFWwindowcontentscalefun[origin: MutOrigin] = fn (
    UnsafePointer[GLFWwindow, origin], Float32, Float32
) -> None
comptime GLFWmousebuttonfun[origin: MutOrigin] = fn (
    UnsafePointer[GLFWwindow, origin], Int32, Int32, Int32
) -> None
comptime GLFWcursorposfun[origin: MutOrigin] = fn (
    UnsafePointer[GLFWwindow, origin], Float64, Float64
) -> None
comptime GLFWcursorenterfun[origin: MutOrigin] = fn (
    UnsafePointer[GLFWwindow, origin], Int32
) -> None
comptime GLFWscrollfun[origin: MutOrigin] = fn (
    UnsafePointer[GLFWwindow, origin], Float64, Float64
) -> None
comptime GLFWkeyfun[origin: MutOrigin] = fn (
    UnsafePointer[GLFWwindow, origin], Int32, Int32, Int32, Int32
) -> None
comptime GLFWcharfun[origin: MutOrigin] = fn (
    UnsafePointer[GLFWwindow, origin], UInt32
) -> None
comptime GLFWcharmodsfun[origin: MutOrigin] = fn (
    UnsafePointer[GLFWwindow, origin], UInt32, Int32
) -> None
comptime GLFWdropfun[origin: MutOrigin] = fn (
    UnsafePointer[GLFWwindow, origin],
    Int32,
    UnsafePointer[
        UnsafePointer[Int8, ImmutOrigin.external], ImmutOrigin.external
    ],
) -> None
comptime GLFWmonitorfun[origin: MutOrigin] = fn (
    UnsafePointer[GLFWmonitor, origin], Int32
) -> None
comptime GLFWjoystickfun = fn (Int32, Int32) -> None


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
    var red: UnsafePointer[UInt16, MutOrigin.external]
    var green: UnsafePointer[UInt16, MutOrigin.external]
    var blue: UnsafePointer[UInt16, MutOrigin.external]
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
    var pixels: UnsafePointer[Int8, MutOrigin.external]

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
        comptime button_size = type_of(self.buttons).size

        @parameter
        for i in range(button_size):
            w.write(self.buttons[i])

            @parameter
            if i < button_size - 1:
                w.write(", ")
        w.write("], axes=[")
        comptime axes_size = type_of(self.axes).size

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


fn glfwGetVersionString() -> UnsafePointer[Int8, ImmutOrigin.external]:
    return external_call[
        "glfwGetVersionString", UnsafePointer[Int8, ImmutOrigin.external]
    ]()


fn glfwGetError[
    string_origin: ImmutOrigin
](
    description: UnsafePointer[mut=False, UnsafePointer[Int8, string_origin]]
) -> Int32:
    return external_call["glfwGetError", Int32](description)


fn glfwSetErrorCallback[
    # CallbackType: GLFWerrorfun
](callback: GLFWerrorfun) -> OpaquePointer[MutOrigin.external]:
    return external_call[
        "glfwSetErrorCallback", OpaquePointer[MutOrigin.external]
    ](callback)


fn glfwGetMonitors(
    count: UnsafePointer[Int32],
) -> UnsafePointer[
    UnsafePointer[GLFWmonitor, MutOrigin.external], MutOrigin.external
]:
    return external_call[
        "glfwGetMonitors",
        UnsafePointer[
            UnsafePointer[GLFWmonitor, MutOrigin.external], MutOrigin.external
        ],
    ](count)


fn glfwGetPrimaryMonitor() -> UnsafePointer[GLFWmonitor, MutOrigin.external]:
    return external_call[
        "glfwGetPrimaryMonitor", UnsafePointer[GLFWmonitor, MutOrigin.external]
    ]()


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
) -> UnsafePointer[Int8, ImmutOrigin.external]:
    return external_call[
        "glfwGetMonitorName", UnsafePointer[Int8, ImmutOrigin.external]
    ](monitor)


fn glfwSetMonitorUserUnsafePointer(
    monitor: UnsafePointer[GLFWmonitor], UnsafePointer: UnsafePointer[NoneType]
):
    _ = external_call["glfwSetMonitorUserUnsafePointer", NoneType](
        monitor, UnsafePointer
    )


fn glfwGetMonitorUserPointer(
    monitor: UnsafePointer[GLFWmonitor],
) -> UnsafePointer[NoneType, MutOrigin.external]:
    return external_call[
        "glfwGetMonitorUserPointer", UnsafePointer[NoneType, MutOrigin.external]
    ](monitor)


fn glfwSetMonitorCallback[
    # CallbackType: GLFWmonitorfun
](callback: GLFWmonitorfun) -> OpaquePointer[MutOrigin.external]:
    return external_call[
        "glfwSetMonitorCallback", OpaquePointer[MutOrigin.external]
    ](callback)


fn glfwGetVideoModes(
    monitor: UnsafePointer[GLFWmonitor], count: UnsafePointer[Int32]
) -> UnsafePointer[GLFWvidmode, ImmutOrigin.external]:
    return external_call[
        "glfwGetVideoModes", UnsafePointer[GLFWvidmode, ImmutOrigin.external]
    ](monitor, count)


fn glfwGetVideoMode(
    monitor: UnsafePointer[GLFWmonitor],
) -> UnsafePointer[GLFWvidmode, ImmutOrigin.external]:
    return external_call[
        "glfwGetVideoMode", UnsafePointer[GLFWvidmode, ImmutOrigin.external]
    ](monitor)


fn glfwSetGamma(monitor: UnsafePointer[GLFWmonitor], gamma: Float32):
    _ = external_call["glfwSetGamma", NoneType](monitor, gamma)


fn glfwGetGammaRamp(
    monitor: UnsafePointer[GLFWmonitor],
) -> UnsafePointer[GLFWgammaramp, ImmutOrigin.external]:
    return external_call[
        "glfwGetGammaRamp", UnsafePointer[GLFWgammaramp, ImmutOrigin.external]
    ](monitor)


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
    title: UnsafePointer[mut=False, Int8],
    monitor: UnsafePointer[GLFWmonitor, MutOrigin.external],
    share: UnsafePointer[GLFWwindow, MutOrigin.external],
) -> UnsafePointer[GLFWwindow, MutOrigin.external]:
    return external_call[
        "glfwCreateWindow", UnsafePointer[GLFWwindow, MutOrigin.external]
    ](width, height, title, monitor, share)


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
) -> UnsafePointer[GLFWmonitor, MutOrigin.external]:
    return external_call[
        "glfwGetWindowMonitor", UnsafePointer[GLFWmonitor, MutOrigin.external]
    ](window)


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
) -> OpaquePointer[MutOrigin.external]:
    return external_call[
        "glfwGetWindowUserPointer", OpaquePointer[MutOrigin.external]
    ](window)


fn glfwSetWindowPosCallback[
    # CallbackType: GLFWwindowposfun
](
    window: UnsafePointer[GLFWwindow], callback: GLFWwindowposfun
) -> OpaquePointer[MutOrigin.external]:
    return external_call[
        "glfwSetWindowPosCallback", OpaquePointer[MutOrigin.external]
    ](window, callback)


fn glfwSetWindowSizeCallback[
    # CallbackType: GLFWwindowsizefun
](
    window: UnsafePointer[GLFWwindow], callback: GLFWwindowsizefun
) -> OpaquePointer[MutOrigin.external]:
    return external_call[
        "glfwSetWindowSizeCallback", OpaquePointer[MutOrigin.external]
    ](window, callback)


fn glfwSetWindowCloseCallback[
    # CallbackType: GLFWwindowclosefun
](
    window: UnsafePointer[GLFWwindow], callback: GLFWwindowclosefun
) -> OpaquePointer[MutOrigin.external]:
    return external_call[
        "glfwSetWindowCloseCallback", OpaquePointer[MutOrigin.external]
    ](window, callback)


fn glfwSetWindowRefreshCallback[
    # CallbackType: GLFWwindowrefreshfun
](
    window: UnsafePointer[GLFWwindow], callback: GLFWwindowrefreshfun
) -> OpaquePointer[MutOrigin.external]:
    return external_call[
        "glfwSetWindowRefreshCallback", OpaquePointer[MutOrigin.external]
    ](window, callback)


fn glfwSetWindowFocusCallback[
    # CallbackType: GLFWwindowfocusfun
](
    window: UnsafePointer[GLFWwindow], callback: GLFWwindowfocusfun
) -> OpaquePointer[MutOrigin.external]:
    return external_call[
        "glfwSetWindowFocusCallback", OpaquePointer[MutOrigin.external]
    ](window, callback)


fn glfwSetWindowIconifyCallback[
    # CallbackType: GLFWwindowiconifyfun
](
    window: UnsafePointer[GLFWwindow], callback: GLFWwindowiconifyfun
) -> OpaquePointer[MutOrigin.external]:
    return external_call[
        "glfwSetWindowIconifyCallback", OpaquePointer[MutOrigin.external]
    ](window, callback)


fn glfwSetWindowMaximizeCallback[
    # CallbackType: GLFWwindowmaximizefun
](
    window: UnsafePointer[GLFWwindow], callback: GLFWwindowmaximizefun
) -> OpaquePointer[MutOrigin.external]:
    return external_call[
        "glfwSetWindowMaximizeCallback", OpaquePointer[MutOrigin.external]
    ](window, callback)


fn glfwSetFramebufferSizeCallback[
    # CallbackType: GLFWframebuffersizefun
](
    window: UnsafePointer[GLFWwindow], callback: GLFWframebuffersizefun
) -> OpaquePointer[MutOrigin.external]:
    return external_call[
        "glfwSetFramebufferSizeCallback", OpaquePointer[MutOrigin.external]
    ](window, callback)


fn glfwSetWindowContentScaleCallback[
    # CallbackType: GLFWwindowcontentscalefun
](
    window: UnsafePointer[GLFWwindow], callback: GLFWwindowcontentscalefun
) -> OpaquePointer[MutOrigin.external]:
    return external_call[
        "glfwSetWindowContentScaleCallback", OpaquePointer[MutOrigin.external]
    ](window, callback)


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


fn glfwGetKeyName(
    key: Int32, scancode: Int32
) -> UnsafePointer[Int8, ImmutOrigin.external]:
    return external_call[
        "glfwGetKeyName", UnsafePointer[Int8, ImmutOrigin.external]
    ](key, scancode)


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
) -> UnsafePointer[GLFWcursor, MutOrigin.external]:
    return external_call[
        "glfwCreateCursor", UnsafePointer[GLFWcursor, MutOrigin.external]
    ](image, xhot, yhot)


fn glfwCreateStandardCursor(
    shape: Int32,
) -> UnsafePointer[GLFWcursor, MutOrigin.external]:
    return external_call[
        "glfwCreateStandardCursor",
        UnsafePointer[GLFWcursor, MutOrigin.external],
    ](shape)


fn glfwDestroyCursor(cursor: UnsafePointer[GLFWcursor]):
    _ = external_call["glfwDestroyCursor", NoneType](cursor)


fn glfwSetCursor(
    window: UnsafePointer[GLFWwindow], cursor: UnsafePointer[GLFWcursor]
):
    _ = external_call["glfwSetCursor", NoneType](window, cursor)


fn glfwSetKeyCallback[
    # CallbackType: GLFWkeyfun
](window: UnsafePointer[GLFWwindow], callback: GLFWkeyfun) -> OpaquePointer[
    MutOrigin.external
]:
    return external_call[
        "glfwSetKeyCallback", OpaquePointer[MutOrigin.external]
    ](window, callback)


fn glfwSetCharCallback[
    # CallbackType: GLFWcharfun
](window: UnsafePointer[GLFWwindow], callback: GLFWcharfun) -> OpaquePointer[
    MutOrigin.external
]:
    return external_call[
        "glfwSetCharCallback", OpaquePointer[MutOrigin.external]
    ](window, callback)


fn glfwSetCharModsCallback[
    # CallbackType: GLFWcharmodsfun
](
    window: UnsafePointer[GLFWwindow], callback: GLFWcharmodsfun
) -> OpaquePointer[MutOrigin.external]:
    return external_call[
        "glfwSetCharModsCallback", OpaquePointer[MutOrigin.external]
    ](window, callback)


fn glfwSetMouseButtonCallback[
    # CallbackType: GLFWmousebuttonfun
](
    window: UnsafePointer[GLFWwindow], callback: GLFWmousebuttonfun
) -> OpaquePointer[MutOrigin.external]:
    return external_call[
        "glfwSetMouseButtonCallback", OpaquePointer[MutOrigin.external]
    ](window, callback)


fn glfwSetCursorPosCallback[
    # CallbackType: GLFWcursorposfun
](
    window: UnsafePointer[GLFWwindow], callback: GLFWcursorposfun
) -> OpaquePointer[MutOrigin.external]:
    return external_call[
        "glfwSetCursorPosCallback", OpaquePointer[MutOrigin.external]
    ](window, callback)


fn glfwSetCursorEnterCallback[
    # CallbackType: GLFWcursorenterfun
](
    window: UnsafePointer[GLFWwindow], callback: GLFWcursorenterfun
) -> OpaquePointer[MutOrigin.external]:
    return external_call[
        "glfwSetCursorEnterCallback", OpaquePointer[MutOrigin.external]
    ](window, callback)


fn glfwSetScrollCallback[
    # CallbackType: GLFWscrollfun
](window: UnsafePointer[GLFWwindow], callback: GLFWscrollfun) -> OpaquePointer[
    MutOrigin.external
]:
    return external_call[
        "glfwSetScrollCallback", OpaquePointer[MutOrigin.external]
    ](window, callback)


fn glfwSetDropCallback[
    # CallbackType: GLFWdropfun
](
    window: UnsafePointer[GLFWwindow],
    callback: GLFWdropfun[MutOrigin.external],
) -> OpaquePointer[MutOrigin.external]:
    return external_call[
        "glfwSetDropCallback", OpaquePointer[MutOrigin.external]
    ](window, callback)


fn glfwJoystickPresent(jid: Int32) -> Int32:
    return external_call["glfwJoystickPresent", Int32](jid)


fn glfwGetJoystickAxes(
    jid: Int32, count: UnsafePointer[Int32]
) -> UnsafePointer[Float32, ImmutOrigin.external]:
    return external_call[
        "glfwGetJoystickAxes", UnsafePointer[Float32, ImmutOrigin.external]
    ](jid, count)


fn glfwGetJoystickButtons(
    jid: Int32, count: UnsafePointer[Int32]
) -> UnsafePointer[Int8, ImmutOrigin.external]:
    return external_call[
        "glfwGetJoystickButtons", UnsafePointer[Int8, ImmutOrigin.external]
    ](jid, count)


fn glfwGetJoystickHats(
    jid: Int32, count: UnsafePointer[Int32]
) -> UnsafePointer[Int8, ImmutOrigin.external]:
    return external_call[
        "glfwGetJoystickHats", UnsafePointer[Int8, ImmutOrigin.external]
    ](jid, count)


fn glfwGetJoystickName(jid: Int32) -> UnsafePointer[Int8, ImmutOrigin.external]:
    return external_call[
        "glfwGetJoystickName", UnsafePointer[Int8, ImmutOrigin.external]
    ](jid)


fn glfwGetJoystickGUID(jid: Int32) -> UnsafePointer[Int8, ImmutOrigin.external]:
    return external_call[
        "glfwGetJoystickGUID", UnsafePointer[Int8, ImmutOrigin.external]
    ](jid)


fn glfwSetJoystickUserUnsafePointer(
    jid: Int32, UnsafePointer: UnsafePointer[NoneType]
):
    _ = external_call["glfwSetJoystickUserUnsafePointer", NoneType](
        jid, UnsafePointer
    )


fn glfwGetJoystickUserPointer(jid: Int32) -> OpaquePointer[MutOrigin.external]:
    return external_call[
        "glfwGetJoystickUserPointer", OpaquePointer[MutOrigin.external]
    ](jid)


fn glfwJoystickIsGamepad(jid: Int32) -> Int32:
    return external_call["glfwJoystickIsGamepad", Int32](jid)


fn glfwSetJoystickCallback[
    # CallbackType: GLFWjoystickfun
](callback: GLFWjoystickfun) -> OpaquePointer[MutOrigin.external]:
    return external_call[
        "glfwSetJoystickCallback", OpaquePointer[MutOrigin.external]
    ](callback)


fn glfwUpdateGamepadMappings(string: UnsafePointer[Int8]) -> Int32:
    return external_call["glfwUpdateGamepadMappings", Int32](string)


fn glfwGetGamepadName(jid: Int32) -> UnsafePointer[Int8, ImmutOrigin.external]:
    return external_call[
        "glfwGetGamepadName", UnsafePointer[Int8, ImmutOrigin.external]
    ](jid)


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
) -> UnsafePointer[Int8, ImmutOrigin.external]:
    return external_call[
        "glfwGetClipboardString", UnsafePointer[Int8, ImmutOrigin.external]
    ](window)


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


fn glfwGetCurrentContext() -> UnsafePointer[GLFWwindow, MutOrigin.external]:
    return external_call[
        "glfwGetCurrentContext", UnsafePointer[GLFWwindow, MutOrigin.external]
    ]()


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


fn glfwGetRequiredInstanceExtensions[
    strings_origin: ImmutOrigin
](
    count: UnsafePointer[UInt32],
) -> UnsafePointer[
    UnsafePointer[Int8, strings_origin], ImmutOrigin.external
]:
    return external_call[
        "glfwGetRequiredInstanceExtensions",
        UnsafePointer[
            UnsafePointer[Int8, strings_origin], ImmutOrigin.external
        ],
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


fn glfwGetCocoaWindow(
    window: UnsafePointer[GLFWwindow],
) -> OpaquePointer[MutOrigin.external]:
    return external_call[
        "glfwGetCocoaWindow",
        OpaquePointer[MutOrigin.external],
        UnsafePointer[GLFWwindow, window.origin],
    ](window)
