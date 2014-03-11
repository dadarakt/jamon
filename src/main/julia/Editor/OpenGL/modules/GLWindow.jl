
global const RENDER_LIST        = Tuple[]

global const orthographicProj   = eye(GLfloat, 4,4)
global const perspectiveProj    = eye(GLfloat, 4,4)

function displayFunc()
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT)
    for elem in RENDER_LIST
       render(elem...)
    end
    glutSwapBuffers()
    return nothing
end

#push events from glut to our event queue
keyboardFunc(key::Cuchar, x::Int32, y::Int32)               = publishEvent(KeyDown(false, char(key), x, WINDOW_SIZE[2] - y))
keyboardUpFunc(key::Cuchar, x::Int32, y::Int32)             = publishEvent(KeyUp(false, char(key), x, WINDOW_SIZE[2] - y))

specialFunc(key::Int32, x::Int32, y::Int32)                 = publishEvent(KeyDown(true, char(key), x, WINDOW_SIZE[2] - y))
specialUpFunc(key::Int32, x::Int32, y::Int32)               = publishEvent(KeyUp(true, char(key), x, WINDOW_SIZE[2] - y))

mouseFunc(button::Int32, status::Int32, x::Int32, y::Int32) = publishEvent(MouseClicked(int(button), int(status), int(x), WINDOW_SIZE[2] - int(y)))
motionFunc(x::Int32, y::Int32)                              = publishEvent(MouseMovedClicked(int(x), WINDOW_SIZE[2] - int(y)))
passiveMotionFunc(x::Int32, y::Int32)                       = publishEvent(MouseMoved(int(x), WINDOW_SIZE[2] - int(y)))

entryFunc(state::Int32)                                     = publishEvent(EnteredWindow(bool(state), glutGetWindow()))

const WINDOW_SIZE = [0,0]

function reshapeFunc(w::Csize_t, h::Csize_t)
    WINDOW_SIZE[1] = int(w)
    WINDOW_SIZE[2] = int(h)
    glViewport(0, 0, w, h)
    computeOrthographicProjection!(orthographicProj,0.0f0, float32(w), 0.0f0, float32(h), -10f0, 10f0)
    ratio = (1.0f0 * w) / h
    computeFOVProjection!(perspectiveProj, 53.13f0, ratio, 1.0f0, 30.0f0)
    publishEvent(WindowResized(int(w),int(h)))
    return nothing
end


#Cfunction pointer for glut
_entryFunc          = cfunction(entryFunc, Void, (Int32,))
_motionFunc         = cfunction(motionFunc, Void, (Int32, Int32))
_passiveMotionFunc  = cfunction(passiveMotionFunc, Void, (Int32, Int32))
_mouseFunc          = cfunction(mouseFunc, Void, (Int32, Int32, Int32, Int32))
_specialFunc        = cfunction(specialFunc, Void, (Int32, Int32, Int32))
_specialUpFunc      = cfunction(specialUpFunc, Void, (Int32, Int32, Int32))
_keyboardFunc       = cfunction(keyboardFunc, Void, (Cuchar, Int32, Int32))
_keyboardUpFunc     = cfunction(keyboardUpFunc, Void, (Cuchar, Int32, Int32))
_reshapeFunc        = cfunction(reshapeFunc, Void, (Csize_t, Csize_t))
_displayFunc        = cfunction(displayFunc, Void, ())


function createWindow(;
    name = "GLUT Window", 
    displayMode         = int32(GLUT_DEPTH | GLUT_DOUBLE | GLUT_RGBA | GLUT_MULTISAMPLE | GLUT_ALPHA), 
    windowPosition      = int32([2000,100]), 
    windowSize          = int32([900,900]))
    glutReshapeWindow(windowSize...)
    glutPositionWindow(windowPosition...)
    glutSetWindowTitle(name)
    glutShowWindow()
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

export createWindow, linkFunctions, RENDER_LIST
