export GLColor
immutable GLColor
	rgba::Array{Float32, 1}
	function GLColor(c::Array{Float32, 1})
		if length(c) == 4
			return new(c)
		elseif length(c) == 3
			return new([c..., 1f0])
		elseif length(c) == 1
			return new([c[1], c[1], c[1], 1f0])
		end
		error("Not a valid color")
	end
end
GLColor{T}(c::Array{T, 1}) = GLColor(float32(c))
GLColor(c...) = GLColor(float32(c))
