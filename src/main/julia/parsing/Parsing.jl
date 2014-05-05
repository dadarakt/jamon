using LightXML 

#Read from file and remove trailing \n\r and spaces
str = strip(readall(open("testInput.jl")))
#parse file, does not check if the program is correct or not!
#Just linewise check.
i = start(str)
exprs = {}
while !done(str,i)
	# try
	if str[i] == '#' 
		println("this is a comment, $i")
	end
	ex, i = parse(str,i, raise=true)
	push!(exprs, ex)
# catch y
# 	println("Error!")
# 	if isa(y, Exception)
# 		# check if this line is a comment
# 		if contains(str, '#')
# 			println("This is a comment!")
# 		end
# 		println(y)
# 	end
# end
end

function lowerFirstChar(x::String)
	string(lowercase(x[1])) * x[2:end]
end

#create XML
xdoc = XMLDocument()
xroot = create_root(xdoc, "juliaTree")

function exprToXML(x::Any, node)
	set_attribute(node, lowerFirstChar(string(typeof(x))), string(x))
end

function exprToXML(x::String, node)
	add_text(node, x)
end

function exprToXML(x::Expr, node)
	xNode = new_child(node, "expr")
	set_attribute(xNode, "head", string(x.head))
	for elem in x.args
		exprToXML(elem, new_child(xNode, "args"))
	end
end

for expr in exprs
	exprToXML(expr, xroot)
end

save_file(xdoc, "testOutput.xml")