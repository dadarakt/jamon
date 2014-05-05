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

type Styled{T <: Shape}
	shape::T
	styles::Dict{Symbol, Any}
end

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



cam = OrthogonalCamera()
registerEventAction(EventAction{WindowResized{0}}(x -> true, (), resize, (cam,)))

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

global const SHAPE_DATA 	= RenderObject(shape_style, GLProgram("flatShader"))




function render(x::Styled{Rectangle{Int64}})
	#create transformation matrix
	x.styles[:model] = Float32[x.shape.w 0 0 x.shape.x ; 0 x.shape.h 0 x.shape.y ; 0 0 1 0 ; 0 0 0 1]
	render(SHAPE_DATA; x.styles...)
end

