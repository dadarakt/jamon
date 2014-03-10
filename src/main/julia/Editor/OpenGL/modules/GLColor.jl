module GLColor
export Color
immutable Color{T <: Real}
	rgba::Array{T, 1}
	function Color(c::Array{T, 1})
		alpha::T = 1
		if length(c) == 4
			return new(c)
		elseif length(c) == 3
			return new(T[c..., 1])
		elseif length(c) == 1
			return new(T[c[1], c[1], c[1], 1])
		end
		error("Not a valid color")
	end
end
end #module GLColor