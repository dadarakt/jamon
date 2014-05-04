using GLWindow, ModernGL, GLUtil, Events, GLText, GLUT, Color

import GLUtil.render

createWindow()


type View
	parent::View
	content::Dict{Symbol, Any}
	function View(parent::View, children::Vector{View}, mask)
		new(partent, children, mask)
	end
	function View(children::Vector{View}, mask)
		View(new(), children, mask)
	end
end

type Button
	view::View
	gl::Vector{GLRenderObject}
	actions::Vector{EventAction}
end



left_click_down(event::MouseClicked) = event.key == 0 && event.status == 0
left_click_up(event::MouseClicked) = event.key == 0 && event.status == 1

function hello(_, button, text)
	button[:text] = text
end

# button = Button(area = Rectangle(50,50,100,50), text = "lol...")

# registerEventAction(EventAction{MouseClicked}(left_click_down, (), hello, (button, "lol ey")))
# registerEventAction(EventAction{MouseClicked}(left_click_up, (), hello, (button, "lol...")))

# parent = View()
# parent.content[:camera]	 = OrthogonalCamera()
# parent.content[:button1] = button



indexes 	= GLBuffer(GLuint[0, 1, 3,  3, 2, 1], 1, bufferType = GL_ELEMENT_ARRAY_BUFFER)
vertAndUV	= GLBuffer(GLfloat[0,0,  0,1,  1,1,  1,0], 2)
colors 		= GLBuffer([0f0 for i=1:16], 4)

texture		= Texture("test.jpg")
textureOn	= 0f0
border		= 0f0
borderColor	= Float32[0,0,0,1]
cam  		= OrthogonalCamera()
model  		= eye(Float32, 4, 4)

registerEventAction(EventAction{WindowResized{0}}(x -> true, (), resize, (cam,)))


type RenderObject
	uniforms::Dict{Symbol, Any}
	buffers::Dict{Symbol, GLBuffer}
	vertexArray::GLVertexArray
	function RenderObject(data::Dict{Symbol, Any}, program::GLProgram)
		buffers 	= Dict{Symbol, GLBuffer}(filter((key, value) -> isa(value, GLBuffer), data))
		uniforms 	= filter((key, value) -> !isa(value, GLBuffer), data)
		vertexArray = GLVertexArray(buffers, program)
		new(uniforms, buffers, vertexArray)
	end
end

global const SHAPE_PROGRAM = GLProgram("flatShader")


global const SHAPE_DATA = RenderObject([:model => model, :mvp => cam, :indexes => indexes, 
:position => vertAndUV, :uv => vertAndUV, :vcolor => colors, :textureOn => textureOn,
:bgtexture => texture, :border => border, :borderColor => borderColor,
], SHAPE_PROGRAM)


function update(buffer::GLBuffer, data::Array)
	@assert (length(data) / buffer.cardinality) == buffer.length
	#ugly way of asserting, that the types are the same
	@assert eltype(data) == typeof(buffer).parameters[1]
	glBindBuffer(buffer.bufferType, buffer.id)
	glBufferSubData(buffer.bufferType, 0, sizeof(data), data)
end


function render(renderObject::RenderObject; data...)
	data = Dict{Symbol, Any}(data)
	programID = renderObject.vertexArray.program.id
	if programID!= glGetIntegerv(GL_CURRENT_PROGRAM)
		glUseProgram(programID)
	end

	if haskey(data, :bgtexture)
		render(:textureon, 1f0, programID)
	else
		render(:textureon, 0f0, programID)
	end
	bufferNames 	= keys(renderObject.buffers)
	uniformNames 	= keys(renderObject.uniforms)

	data = merge(renderObject.uniforms, data)
	for elem in data
		if in(elem[1], bufferNames)
			update(renderObject.buffers[elem[1]], elem[2])
		elseif in(elem[1], uniformNames)
			render(elem..., programID)
		else
			error("$(elem[1]): is not a valid shape attribute")
		end
	end
	glBindVertexArray(renderObject.vertexArray.id)
	glDrawElements(GL_TRIANGLES, 6, GL_UNSIGNED_INT, GL_NONE)
end





type Styled{T <: Shape}
	shape::T
	styles::Dict{Symbol, Any}
end


function render(x::Styled{Rectangle{Int64}})
	#create transformation matrix
	x.styles[:model] = Float32[x.shape.w 0 0 x.shape.x ; 0 x.shape.h 0 x.shape.y ; 0 0 1 0 ; 0 0 0 1]
	render(SHAPE_DATA; x.styles...)
end

a = Float32[0.8, 0.1, 0.0, 1]

defaultStyle = 
[
	:vcolor 		=> Float32[a..., a..., 0,1,0,1, a...],
	:bgtexture		=> Texture("test.jpg"),
	:border			=> 0f0,
	:borderColor	=> Float32[0,0,0,1]
]


testRect = Styled(Rectangle(50,50,100,50), defaultStyle)


function changeSomething(event, rect)
	rect.styles[:bgtexture] = Texture("test.jpg")
end
function changeSomethingBack(event, rect)
	rect.styles[:bgtexture] = Texture("test2.jpg")
end
function left_click_down_inside_rect(event, shape)
	left_click_down(event) && inside(shape.shape, event.x, event.y)
end

registerEventAction(EventAction{MouseClicked{0}}(left_click_down_inside_rect, (testRect, ), changeSomething, (testRect,)))
registerEventAction(EventAction{MouseClicked{0}}(left_click_up, (), changeSomethingBack, (testRect,)))


glDisplay(FuncWithArgs(render, (testRect, )))

glutMainLoop()