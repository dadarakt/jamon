using GLWindow, GLUtil, ModernGL, Meshes, Events, GLText, React
import Base.merge
import GLWindow.EVENT_HISTORY
import GLUtil.rotate
import GLUtil.move
import GLUtil.render
import GLUtil.update

render(id::Symbol, uniform::Input, programID::Uint32) = render(id, uniform.value, programID)
update(buffer::GLBuffer, updateBuff::Input) = update(buffer, updateBuff.value)

window = createWindow([1000, 1000], "Mesh Display")
include("shapes.jl")

shaderDepthVert = """
#version 130
in vec3 position;

out float o_z;
out vec3 xyz;

uniform mat4 mvp;

void main(){
	xyz = position;	

	gl_Position =  mvp * vec4(position, 1.0);
	o_z = position.z;
}

"""
shaderDepthfrag = """
#version 130
in vec3 xyz;
out vec4 colourV;

uniform vec3 camPosition;

void main(){
	float distance = length(xyz - camPosition) / 1000.0;
	vec4 color1 = vec4(1.0,0.0,0.0,1.0);
	vec4 color2 = vec4(1.0,1.0,0.0,1.0);
	colourV = mix(color1, color2, xyz.y / 500.0);
}
"""
gray1 		= Float32[0.3, 0.3, 0.3, 1]
gray2 		= Float32[0.2, 0.2, 0.2, 1]
reddish 	= Float32[1, 0.3, 0.0, 0.5]
lightblue 	= Float32[0.5, 0.7, 0.9, 1]



style1 = 
[
	:vcolor => Float32[gray1..., gray1..., gray2..., gray2...]
]
style2 = 
[
	:vcolor => Float32[reddish..., reddish..., reddish..., reddish...]
]
style3Color  = Input(Float32[lightblue..., lightblue..., lightblue..., lightblue...])
style3 = 
[
	:vcolor => style3Color
]

registerEventAction(Scrolled{Window}, x -> true, (event, c) -> push!(c,Float32[lightblue..., c.value[5] + event.yOffset*0.1f0, 0.7, 0.9, 1, lightblue..., lightblue...]), (style3Color,))


testRect3 = Styled(Rectangle(20, 20, 1500 - 40, 1500 -40), style3)
glDisplay(:b, FuncWithArgs(render, (testRect3,)))
t2 = TextField2D(:test2, shaderDepthfrag, 20, 1500 - 60, testRect3.shape)


function move(event::MouseDragged, cam::PerspectiveCamera)
	lastPosition = get(EVENT_HISTORY, MouseMoved{Window}, event.start)
	move(0, lastPosition.y - event.y, cam)
end
function rotate(event::MouseDragged, cam::PerspectiveCamera)
	lastPosition = get(EVENT_HISTORY, MouseMoved{Window}, event.start)
	rotate(lastPosition.x - event.x, lastPosition.y - event.y, cam)
end
perspectiveCam = PerspectiveCamera(position = Float32[500, 500, 500])
registerEventAction(WindowResized{Window}, x -> true, resize, (perspectiveCam,))
registerEventAction(WindowResized{Window}, x -> true, x -> glViewport(0,0,x.w, x.h))
registerEventAction(WindowResized{Window}, x -> true, println)
registerEventAction(MouseDragged{Window}, rightbuttondragged, move, (perspectiveCam,))
registerEventAction(MouseDragged{Window}, middlebuttondragged, rotate, (perspectiveCam,))
w, h = GLFW.GetWindowSize(window)
publishEvent(WindowResized(window, int(w), int(h)))



renderloop(window)
