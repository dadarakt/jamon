global OpenGLver = "4.3"

using OpenGL, GLUT, Match
reload("dependencies/GLUTWindow.jl")

abstract Shape
abstract AreaContent

type Enriched{T}
	source
	styling
	styledRepresentation
	renderRepresentation
end
type Renderable
end
function Enriched{File}(path::ASCIIString) 

end


type alias Point (Real, Real)

immutable Area
	contour::Shape
end
Area(id::ASCIIString) = Area(id, [1.0, 2.0, 3.0, 4.0], {1,2})

type Rect{T <: Real} <: Shape
	x::T
	y::T
	width::T
	height::T
end
type Polygon{T <: Real}
	points::Array{(Real, Real), 1}
end
type Circle{T <: Real}
	radius::T
	middle::(T,T)
end

function inside(polygon::Polygon, x::Real, y::Real)
	a = polygon.points
	c = false
	i = length(a) - 1
  	for (x1, y1) in a
  		(x0, y0) =  a[i % length(a) + 1]
  		if (y1 < y) != (y0 > y) &&
  			(x < (x0-x1) * (y-y1) / (y0-y1) + x1)
  			c = ~c
  		end	
  		i += 1
  	end
  	return c
end
function inside(circle::Circle, x::Real, y::Real)
	xD = abs(circle.middle[1] - x) - circle.radius 
	yD = abs(circle.middle[2] - y) - circle.radius 
	xD <= 0 && yD <= 0
end
function inside(rect::Rect, x::Real, y::Real)
	rect.x <= x && rect.y <= y && rect.x + rect.width >= x && rect.y + rect.height >= y 
end
