macro inject(x::Symbol)
	t = eval(x)
	@assert isa(t, DataType)
	returnValue = Expr[]
	for i =1:length(t.types)
		push!(returnValue, Expr(:(::), t.names[i], t.types[i].name.name))
	end
	esc((Expr(:block, returnValue...)))
end
type LOL
	x::Int 
	y::Int
end
type Test
	c::String
end
type LOL3
	@inject Test
	foo::Array{Float32, 1}
end
type LOL2
	@inject LOL
	@inject LOL3
end
println(names(LOL2))

type FunctionT{T}
	func::Function
	args::T
end

function simon(a::Int, b::Float32, c::Array{Int,1})
	println(a)
	println(b)
	println(c)
end
function callF(f::FunctionT)
	apply(f.func, f.args)
end
function simon(a::Int, b::Float32, c::Int)
	println(a*b*c)
end
function foo(f::FunctionT{(Int, Float32, Int)})
	callF(f)
end

function foo(f::FunctionT{(Int, Float32, Array{Int, 1})})
	callF(f)
end
a = FunctionT(simon, (1, 1.0f0, [1,2,3,4]))
b = FunctionT(simon, (1, 1.0f0, 1))
foo(b)