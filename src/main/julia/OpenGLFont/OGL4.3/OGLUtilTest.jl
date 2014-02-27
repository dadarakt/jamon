include("dependencies/OGLUtil.jl")


function displayFuncCallback()
	global projMatrix, model
    glClear(COLOR_BUFFER_BIT | DEPTH_BUFFER_BIT)

	
	for rect in rects
    	render(rect)
	end
	for circle in circles
    	render(circle)
	end
    return nothing
end	


createWindow(name = "Moiiin", windowSize = [1000, 1100], windowPosition = [1950, 20])
linkFunctions()
initUtils()
amount  = 5000


circles = [Circle(200f0, 
	float32(500 + 400 * cos(((2*pi) / amount) * i)), 
	float32(500 + 400 * sin(((2*pi) / amount) * i)), 
	float32([(1.0/amount) * i,0, 1 - (1.0/amount) * i, 0.1])) 
	for i=1:amount]

rects = [Rectangle(
	float32(500 + 400 * cos(((2*pi) / amount) * i)), 
	float32(500 + 400 * sin(((2*pi) / amount) * i)), 
	float32(100 + 300 * cos(((2*pi) / amount) * i)), 
	float32(100 + 300 * sin(((2*pi) / amount) * i)), 
	float32([(1.0/amount) * i,0, 1 - (1.0/amount) * i, 0.9])) 
	for i=1:amount]

glutMainLoop()