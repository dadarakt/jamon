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
