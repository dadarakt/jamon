module GLUTWindow

using GLUT

immutable MouseMoved
    x::Int
    y::Int
end
immutable MouseClicked
    key::Int
    status::Int
    x::Int
    y::Int
end
immutable KeyDown
    special::Bool
    key::Char
end
immutable KeyUp
    special::Bool
    key::Char
end


function listenTo(x::Any)
end

function entryFunc(state::Int32)
    return nothing
end
function motionFunc(x::Int32, y::Int32)
    listenTo(MouseMoved(int(x), int(y)))
    return nothing
end
function passiveMotionFunc(x::Int32, y::Int32)
    listenTo(MouseMoved(int(x), int(y)))
    return nothing
end
function mouseFunc(button::Int32, status::Int32, x::Int32, y::Int32)
    listenTo(MouseClicked(int(button), int(status), int(x), int(y)))
    return nothing
end
function specialFunc(key::Int32, x::Int32, y::Int32)
    listenTo(KeyDown(true, char(key)))
    return nothing
end
function specialUpFunc(key::Int32, x::Int32, y::Int32)
    listenTo(KeyUp(true, char(key)))
    return nothing
end
function keyboardFunc(key::Cuchar, x::Int32, y::Int32)
    listenTo(KeyDown(false, char(key)))
    return nothing
end
function keyboardUpFunc(key::Cuchar, x::Int32, y::Int32)
    listenTo(KeyUp(false, char(key)))
    return nothing
end
function displayFunc()
    try displayFuncCallback() end
    glutSwapBuffers()
    return nothing
end

function reshapeFunc(w::GLsizei, h::GLsizei)
    try resizeFunc(w,h) end
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





export linkFunctions, createWindow, listenTo, MouseMoved, MouseClicked, KeyDown, KeyUp


end #Module GlutWindow end