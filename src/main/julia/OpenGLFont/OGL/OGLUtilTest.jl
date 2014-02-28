include("dependencies/OGLUtil.jl")

function resizeFunc(w::GLsizei, h::GLsizei)
    global projMatrix
    glViewport(0, 0, w, h)
    projMatrix = computeOrthographic( 0.0f0, float32(w), 0.0f0, float32(h), -10f0, 10f0)
    return nothing
end
function displayFuncCallback()
	global projMatrix, model, font, text
    glClear(COLOR_BUFFER_BIT | DEPTH_BUFFER_BIT)

    for a in circles
    	render(a)
    end

    for a in rects
    	render(a)
    end
	render(text,float32([0.1,0.5,0.8,0.6]), 50, 500)

    return nothing
end	

createWindow(name = "Moiiin", windowSize = [1000, 1100], windowPosition = [1950, 20])
linkFunctions()
initUtils()


amount  = 100


circles = [Circle(200f0, 
	float32(500), 
	float32(500), 
	float32([0.6, 0.1, 0.5, 0.01])) ]

rects = [Rectangle(
	float32(500 + 400 * cos(((2*pi) / amount) * i)), 
	float32(500 + 400 * sin(((2*pi) / amount) * i)), 
	float32(100 + 300 * cos(((2*pi) / amount) * i)), 
	float32(100 + 300 * sin(((2*pi) / amount) * i)), 
	float32([(1.0/amount) * i,0, 1 - (1.0/amount) * i, 0.1])) 
	for i=1:amount]

fStream = open("dependencies/OGLUtil.jl")
global text = "a"

close(fStream)


function editText(event)
	global text, cursor
	if event.key == '\b'
		text = text[1:cursor - 1] * text[cursor + 1:end]
		cursor -= 1
	elseif event.key == '\n' || event.key == '\r' || ~iscntrl(event.key)
		text = text[1:cursor] * string(event.key) * text[cursor + 1:end]
		cursor += 1
	end
end
global cursor = 1
registerEvent(EventAction{KeyDown}("", x -> ~x.special, (), editText, ()))

function moveY(event::MouseClicked)
	global model
	model[2,4] = model[2,4] + translateYMatrix(event.key == 4 ? -10f0 : 10f0)[2,4]
end
registerEvent(EventAction{MouseClicked}("", x-> x.key == 3 || x.key == 4, (), moveY, ()))


glutMainLoop()