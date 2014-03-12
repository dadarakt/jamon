#intended usage index 1,2,3 = x,y,z
immutable Vec{Cardinality, T}
 	v::Array{T, 1}
	function Vec(v::Array{T,1})
		Cardinality == length(v)
		new(v)
	end
end
#typealias Vec32{Cardinality} Vec{Cardinality, Float32}

Vec{T}(v::Array{T, 1}) = Vec{length(v), T}(v)
Vec(v::Real...) = Vec([v...])


Vec32{T <: Real}(v::Array{T,1}) = Vec{length(v), Float32}(float32(v))
Vec32(v::Real...) = Vec32([v...])



@show Vec([1,2])
@show Vec(1,2,3,4.0)
@show Vec([1,2,3.0])


@show Vec32(1,2,3.0)
@show Vec32([1,2,3.0])
