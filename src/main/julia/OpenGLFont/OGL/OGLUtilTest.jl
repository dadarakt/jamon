include("dependencies/OGLUtil.jl")

function resizeFunc(w::GLsizei, h::GLsizei)
    global projMatrix
    glViewport(0, 0, w, h)
    projMatrix = computeOrthographicProjection( 0.0f0, float32(w), 0.0f0, float32(h), -10f0, 10f0)
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
	render([StyledWord("toeroerlel", Style([0,0,0,1]))], 50f0, 500f0, font, Rectangle(0f0,0f0,1000f0,500f0, float32([1, 1, 1, 1])))
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


global font 	= AsciiAtlas("dependencies/VeraMono")


glutMainLoop()