global OpenGLver = "4.3"
using GLUT, OpenGL

reload("dependencies/Events.jl")


function entryFunc(state::Int32)
    return nothing
end
function motionFunc(x::Int32, y::Int32)
    invoke(listenTo, (MouseMoved,), MouseMoved(int(x), WINDOW_SIZE[2] - int(y)))
    return nothing
end
function passiveMotionFunc(x::Int32, y::Int32)
    invoke(listenTo, (MouseMoved,), MouseMoved(int(x), WINDOW_SIZE[2] - int(y)))
    return nothing
end
function mouseFunc(button::Int32, status::Int32, x::Int32, y::Int32)
    invoke(listenTo, (MouseClicked,), MouseClicked(int(button), int(status), int(x), WINDOW_SIZE[2] - int(y)))
    return nothing
end
function specialFunc(key::Int32, x::Int32, y::Int32)
    invoke(listenTo, (KeyDown,), KeyDown(true, char(key), x, WINDOW_SIZE[2] - y))
    return nothing
end
function specialUpFunc(key::Int32, x::Int32, y::Int32)
    invoke(listenTo, (KeyUp,), KeyUp(true, char(key), x, WINDOW_SIZE[2] - y))
    return nothing
end
function keyboardFunc(key::Cuchar, x::Int32, y::Int32)
    invoke(listenTo, (KeyDown,), KeyDown(false, char(key), x, WINDOW_SIZE[2] - y))
    return nothing
end
function keyboardUpFunc(key::Cuchar, x::Int32, y::Int32)
    invoke(listenTo, (KeyUp,), KeyUp(false, char(key), x, WINDOW_SIZE[2] - y))
    return nothing
end
function displayFunc()
    displayFuncCallback()
    glutSwapBuffers()
    return nothing
end

function reshapeFunc(w::GLsizei, h::GLsizei)
    global const WINDOW_SIZE = [0,0]
    WINDOW_SIZE[1] = int(w)
    WINDOW_SIZE[2] = int(h)
    resizeFunc(w,h)
    return nothing
end


_entryFunc = cfunction(entryFunc, Void, (Int32,))
_motionFunc = cfunction(motionFunc, Void, (Int32, Int32))
_passiveMotionFunc = cfunction(passiveMotionFunc, Void, (Int32, Int32))
_mouseFunc = cfunction(mouseFunc, Void, (Int32, Int32, Int32, Int32))
_specialFunc = cfunction(specialFunc, Void, (Int32, Int32, Int32))
_specialUpFunc = cfunction(specialUpFunc, Void, (Int32, Int32, Int32))
_keyboardFunc = cfunction(keyboardFunc, Void, (Cuchar, Int32, Int32))
_keyboardUpFunc = cfunction(keyboardUpFunc, Void, (Cuchar, Int32, Int32))
_displayFunc = cfunction(displayFunc, Void, ())
_reshapeFunc = cfunction(reshapeFunc, Void, (GLsizei, GLsizei))

function createWindow(;name="GLUT Window", displayMode=int32(GLUT_DEPTH | GLUT_DOUBLE | GLUT_RGBA | GLUT_MULTISAMPLE), windowPosition=[100,100], windowSize=[500,500])
    glutInit()
    glutInitDisplayMode(displayMode)
    glutInitWindowPosition(windowPosition...)
    glutInitWindowSize(windowSize...);
    glutCreateWindow(name)
end

function linkFunctions(;
    displayF=true, idleF=true, reshapeF=true, 
    entryF=true, keyboardF=true, specialF=true,
    keyboardUpF=true, specialUpF=true, mouseF=true, 
    motionF=true, passiveMotionF=true)

    displayF         && glutDisplayFunc       (_displayFunc) 
    idleF            && glutIdleFunc          (_displayFunc)
    reshapeF         && glutReshapeFunc       (_reshapeFunc)
    keyboardF        && glutKeyboardFunc      (_keyboardFunc)
    specialF         && glutSpecialFunc       (_specialFunc)
    keyboardUpF      && glutKeyboardUpFunc    (_keyboardUpFunc)
    specialUpF       && glutSpecialUpFunc     (_specialUpFunc)
    mouseF           && glutMouseFunc         (_mouseFunc)
    motionF          && glutMotionFunc        (_motionFunc)
    passiveMotionF   && glutPassiveMotionFunc (_passiveMotionFunc)
    entryF           && glutEntryFunc         (_entryFunc)

    (keyboardUpF | specialUpF) && glutSetKeyRepeat(GLUT_KEY_REPEAT_OFF)
end


