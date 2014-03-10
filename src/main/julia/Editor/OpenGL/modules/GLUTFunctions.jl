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

function reshapeFunc(w::Csize_t, h::Csize_t)
    global const WINDOW_SIZE = [0,0]
    WINDOW_SIZE[1] = int(w)
    WINDOW_SIZE[2] = int(h)
    glViewport(0, 0, w, h)
    computeOrthographicProjection!(orthographicProj, 0.0f0, float32(w), 0.0f0, float32(h), -10f0, 10f0)
    computeFOVProjection!(perspectiveProj, 90f0, 1f0, -10f0, 10f0)
    return nothing
end



_entryFunc          = cfunction(entryFunc, Void, (Int32,))
_motionFunc         = cfunction(motionFunc, Void, (Int32, Int32))
_passiveMotionFunc  = cfunction(passiveMotionFunc, Void, (Int32, Int32))
_mouseFunc          = cfunction(mouseFunc, Void, (Int32, Int32, Int32, Int32))
_specialFunc        = cfunction(specialFunc, Void, (Int32, Int32, Int32))
_specialUpFunc      = cfunction(specialUpFunc, Void, (Int32, Int32, Int32))
_keyboardFunc       = cfunction(keyboardFunc, Void, (Cuchar, Int32, Int32))
_keyboardUpFunc     = cfunction(keyboardUpFunc, Void, (Cuchar, Int32, Int32))
_displayFunc        = cfunction(displayFunc, Void, ())
_reshapeFunc        = cfunction(reshapeFunc, Void, (Csize_t, Csize_t))