using GLWindow, ModernGL, GLUtil, Events, GLText, GLUT, Color

import GLUtil.render

createWindow()



left_click_down(event::MouseClicked) = event.key == 0 && event.status == 0
left_click_up(event::MouseClicked) = event.key == 0 && event.status == 1

function render(x::View)

end


function render_to_stencil_buffer(mask)

	glClear(GL_DEPTH_BUFFER_BIT | GL_COLOR_BUFFER_BIT | GL_STENCIL_BUFFER_BIT)
	glColorMask(GL_FALSE, GL_FALSE, GL_FALSE, GL_FALSE)
	glEnable(GL_STENCIL_TEST)
	glStencilFunc(GL_ALWAYS, 1, 1)
	glStencilOp(GL_KEEP, GL_KEEP, GL_REPLACE)
	glDisable(GL_DEPTH_TEST)
	glDisable(GL_TEXTURE_2D)

	render(mask)

	glEnable(GL_TEXTURE_2D)
	glEnable(GL_DEPTH_TEST)
	glColorMask(GL_TRUE, GL_TRUE, GL_TRUE, GL_TRUE)
	glStencilFunc(GL_EQUAL, 1, 1)
	glStencilOp(GL_KEEP, GL_KEEP, GL_KEEP)

end

# button = Button(area = Rectangle(50,50,100,50), text = "lol...")

# registerEventAction(EventAction{MouseClicked}(left_click_down, (), hello, (button, "lol ey")))
# registerEventAction(EventAction{MouseClicked}(left_click_up, (), hello, (button, "lol...")))

# parent = View()
# parent.content[:camera]	 = OrthogonalCamera()
# parent.content[:button1] = button
cam = OrthogonalCamera()
shape_style = 
[
	:indexes 		=> GLBuffer(GLuint[0, 1, 2,  2, 3, 0], 1, bufferType = GL_ELEMENT_ARRAY_BUFFER),
	:position		=> GLBuffer(GLfloat[0,0,  1,0,  1,1,  0,1], 2),
	:uv				=> GLBuffer(GLfloat[1,1,  0,1,  0,0,  1,0], 2),
	:vcolor 		=> GLBuffer([0f0 for i=1:16], 4),

	:bgtexture		=> Texture("test.jpg"),
	:textureon		=> 0f0,
	:border			=> 0f0,
	:borderColor	=> Float32[0,0,0,1],
	:mvp  			=> cam,
	:model  		=> eye(Float32, 4, 4)
]



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


global const SHAPE_DATA = RenderObject(shape_style, SHAPE_PROGRAM)


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
	glDrawElements(GL_TRIANGLES, renderObject.vertexArray.indexLength, GL_UNSIGNED_INT, GL_NONE)
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

style1 = 
[
	:vcolor 		=> Float32[a..., a..., a..., a...],
	:bgtexture		=> Texture("test2.jpg"),
	:textureon		=> 1f0,
	:border			=> 0f0,
	:borderColor	=> Float32[0,0,0,1]
]

style2 = 
[
	:vcolor 		=> Float32[a..., 0,1,0,1, 0,1,0,1, a...],
	:bgtexture		=> Texture("test.jpg"),
	:textureon		=> 1f0,
	:border			=> 0.01f0, 
	:borderColor	=> Float32[0,1,0,1]
]

style3 = 
[
	:vcolor 		=> Float32[1f0 for i=1:16],
	:textureon		=> 0f0,
	:borderColor	=> Float32[0,1,0,1]
]

testRect = Styled(Rectangle(0,0,700,700), style1)


type View
	area::Shape
	parent::View
	children::Dict{Symbol, View}
	content::Tuple

	function View(area::Shape, parent::View, children::Vector{View}, content::Tuple)
		new(area, parent, children)
	end
	function View(area::Shape, children::Vector{View}, content::Tuple)
		View(new(), children, content)
	end
end
View(area::Shape, content::Tuple) = View(area, View[], content)

function render(x::Rectangle)
	#create default style
	default = 
	[
		:vcolor 		=> Float32[1f0 for i=1:16],
		:textureon		=> 0f0,
		:model			=> Float32[x.w 0 0 x.x ; 0 x.h 0 x.y ; 0 0 1 0 ; 0 0 0 1]
	]
	render(SHAPE_DATA; default...)
end

function render(x::View)
	parent = x.parent
	render_to_stencil_buffer(x.area)
	render(x.content...)
	for elem in x.children
		if overlaps(x.area, elem.area)
			render(elem)
		end
	end
end


font 	= getfont()
text 	= (join([i for i=0:9],"")*"\n")^10
t 		= TextField(text, 10, 500)

rect 	= Rectangle(0, 0, 500, 500)

view 	= View(rect, (t, font, rect))

glutMainLoop()