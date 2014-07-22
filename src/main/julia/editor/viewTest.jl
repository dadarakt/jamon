using React

a = Input("hallo")
b = Input("world")

c = lift(ASCIIString, (x,y) -> x *" " *y, a, b)
println(c.value)
push!(b, "lol")
println(c.value)
d = merge(b, a)
println(d.value)


toll = {}
reduce((x,a) -> push!(x, a), toll, c)
push!(b, "voll")
push!(b, "doll")
push!(a, "LOL")
println(toll)

println(d.value)

push!(b, "raarrr")
println(d.value)