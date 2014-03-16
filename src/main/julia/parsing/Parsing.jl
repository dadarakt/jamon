using LightXML, GLGraphics
#Remove trailing \n\r and spaces
str = strip(readall(open("testInput.jl")))

#parse file
i = start(str)
exprs = {}
while !done(str,i)
	ex, i = parse(str,i)
	push!(exprs,ex)
end


# createWindow()
# linkFunctions()
# push!(RENDER_LIST, (Grid{Float32}(gridx, gridy),))
# glutMainLoop()


#create XML
xdoc = XMLDocument()
xroot = create_root(xdoc, "JuliaTree")
function exprToXML(x::Any, node)
	println(x)

	set_attribute(node, string(typeof(x)), string(x))
end
function exprToXML(x::String, node)
	add_text(node, x)
end
function exprToXML(x::Expr, node)
	xNode = new_child(node, "Expr")
	set_attribute(xNode, "Head", string(x.head))
	for elem in x.args
		exprToXML(elem, xNode)
	end
end

for expr in exprs
	exprToXML(expr, xroot)
end
save_file(xdoc, "testOutput.xml")