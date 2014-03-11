module GLColor
export Color
immutable Color
	rgba::Array{Float32, 1}
	function Color(c::Array{Float32, 1})
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
Color{T}(c::Array{T, 1}) = Color(float32(c))
Color(c...) = Color(float32(c))
end #module GLColor