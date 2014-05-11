module OpenGL

import OpenGLStd.glVertex2i, OpenGLStd.glVertex3i, OpenGLStd.glVertex2d, OpenGLStd.glVertex3d, OpenGLStd.glVertex4d,
       OpenGLStd.glTexCoord2i, OpenGLStd.glTexCoord3i, OpenGLStd.glTexCoord4i, OpenGLStd.glTexCoord2d, OpenGLStd.glTexCoord3d,
       OpenGLStd.glTexCoord4d, OpenGLStd.glNormal3d, OpenGLStd.glColor3f, OpenGLStd.glColor4f, OpenGLStd.glColor3b, OpenGLStd.glColor4b,
       OpenGLStd.glScaled, OpenGLStd.glTranslated, OpenGLStd.glRotated, OpenGLStd.glEnable, OpenGLStd.glDisable, OpenGLStd.glBegin,
       OpenGLStd.glEnd, OpenGLStd.glPushMatrix, OpenGLStd.glLoadIdentity

import Images.imread

#Handy stuff to make use of Julia features.
export glVertex, glColor, glColorb, glTexCoord, glNormal,
       glScale, glTranslate, glRotate, glRotateRad,
       glPrimitive, glPushed,
       unitFrame, unitFrameFrom, unitFrameTo,
       quad, centeredQuad, glimread #glimg

#TODO upgrade so glBegin/glPushMatrix can be used directly.
#glEnable (covered by autoFFI)

#Macro to conveniently also support tupled arguments.
#(TODO probably move elsewhere)
macro also_tuple(of, to)
    function getwhich(given::Expr)
        if given.head == symbol(":")
            assert( length(given.args) <=2 )
            return given.args[1]:given.args[2]
        end
        if given.head == :tuple
            return given.args
        end
        error("Invalid specification of the lengths of tuples: $to Should be a tuple or range.") #TODO this could be better.
    end
    getwhich(given::Integer) = {given}
    ret = {}
    #  nT(n) = map((i->(:T)), 1:n)
    for n = getwhich(to)
        push!(ret,
        Expr(:function,
            #TODO templated it earlier, but unequal argument types make that not work.
            #                   {Expr(:call, {Expr(:curly, {of,:T}, Any),
            #                                 Expr(symbol("::"),
            #                                      {:x,Expr(:tuple,nT(n),Any)},Any)},Any),
            {Expr(:call,
                {of, Expr(symbol("::"),
                    {:x,Expr(:tuple, map(i->(:Any), 1:n), Any)},
                    Any)},Any),
                Expr(:call,cat(1,{of},map((i)->:(x[$i]), 1:n)), Any)},
            Any))
    end
    return esc(Expr(:block,ret, Any))
end

#Overloading stuff
#Vertices
glVertex(i::Integer,j::Integer) = glVertex2i(i,j)
glVertex(i::Integer,j::Integer,k::Integer) = glVertex3i(i,j,k)
glVertex(i::Integer,j::Integer,k::Integer,l::Integer) = glVertex3i(i,j,k,l)

glVertex(x::Number,y::Number) = glVertex2d(x,y)
glVertex(x::Number,y::Number,z::Number) = glVertex3d(x,y,z)
glVertex(x::Number,y::Number,z::Number,w::Number) = glVertex4d(x,y,z,w)

@also_tuple glVertex 2:4

function glVertex{T}(v::Array{T,1})
    if length(v)==3
        return glVertex(v[1],v[2],v[3])
    end
    if length(v)==2
        return glVertex(v[1],v[2])
    end
    if length(v)==4
        return glVertex(v[1],v[2],v[3],v[4])
    end
end

#Texture coordinates
glTexCoord(i::Integer,j::Integer) = glTexCoord2i(i,j)
glTexCoord(i::Integer,j::Integer,k::Integer) = glTexCoord3i(i,j,k)
glTexCoord(i::Integer,j::Integer,k::Integer,l::Integer) = glTexCoord4i(i,j,k,l)

glTexCoord(x::Number,y::Number) = glTexCoord2d(x,y)
glTexCoord(x::Number,y::Number,z::Number) = glTexCoord3d(x,y,z)
glTexCoord(x::Number,y::Number,z::Number,w::Number) = glTexCoord4d(x,y,z,w)
@also_tuple glTexCoord 2:4

glNormal(x::Number,y::Number,z::Number) = glNormal3d(x,y,z)
#glNormal(i::Integer,j::Integer,k::Integer) = glNormal3b(i,j,k)
@also_tuple glNormal 2:4

glColor(r::Number,g::Number,b::Number) = glColor3f(r,g,b)
glColor(r::Number,g::Number,b::Number,a::Number) = glColor4f(r,g,b,a)
@also_tuple glColor 3:4

function glColor{T}(v::Array{T,1})
    if length(v)==3
        return glColor(v[1],v[2],v[3])
    end
    if length(v)==2
        return glColor(v[1],v[2])
    end
    if length(v)==4
        return glColor(v[1],v[2],v[3],v[4])
    end
end

function glColor{T}(v::Array{T,2})
    h, w = size(v)
    if h == 1
        return glColor(vec(v))
    else
        error("Array must have 1 row (i.e., it must be like a vector).")
    end
end

glColorb(r::Integer,g::Integer,b::Integer) = glColor3b(r,g,b)
glColorb(r::Integer,g::Integer,b::Integer,a::Integer) = glColor4b(r,g,b,a)
@also_tuple glColorb 3:4

function glColorb(v::Array{Integer,1})
    if length(v)==3
        return glColorb(v[1],v[2],v[3])
    end
    if length(v)==2
        return glColorb(v[1],v[2])
    end
    if length(v)==4
        return glColorb(v[1],v[2],v[3],v[4])
    end
end

function glColorb{T}(v::Array{T,2})
    h, w = size(v)
    if h == 1
        return glColorb(vec(v))
    else
        error("Array must have 1 row (i.e., it must be like a vector).")
    end
end

glScale(x::Number,y::Number,z::Number) = glScaled(x,y,z)
glScale(x::Number,y::Number) = glScaled(x,y,1)
glScale(s::Number) = glScaled(s,s,s)
@also_tuple glScale 1:3

glTranslate(x::Number,y::Number,z::Number) = glTranslated(x,y,z)
glTranslate(x::Number,y::Number) = glTranslated(x,y,0)
@also_tuple glTranslate 2:3

glRotate(angle::Number, nx::Number,ny::Number,nz::Number) = glRotated(angle, nx,ny,nz)
glRotate(angle::Number) = glRotated(angle,0,0,1)
glRotate(angle::Number, n::(Number,Number,Number)) = glRotate(angle, n[1],n[2],n[3])

#Damn degrees.
glRotateRad(angle::Number) = glRotate(angle*180/pi)
glRotateRad(angle::Number, nx::Number,ny::Number,nz::Number) = glRotate(angle*180/pi, nx,ny,nz)
glRotateRad(angle::Number, n::(Number,Number,Number)) = glRotate(angle*180/pi, n)

#Enabling lists of stuff.
type _GlEnable
    things::Vector
end

function glEnable(things::Vector)
    for thing in things
        glEnable(thing)
    end
    return _GlEnable(things)
end
glEnable(things...) = glEnable(things)

#Disabling lists of stuff
function glDisable(things::Vector)
    for thing in things
        glDisable(thing)
    end
end
glDisable(things...) = glDisable(things)

#The whole `begin` ... `end` structures are rather bad for the savings from the
# macros below..

#NOTE: if you `return` or something in the middle it won't end of course!
# (no `cl:unwind-protect`)

#glBegin for use _with_ @with
#TODO will want to upgrade that so glBegin can be used directly.
type _GlPrimitive
end

function glPrimitive(primitive)
    glBegin(primitive)
    return _GlPrimitive()
end

type _GlPushed
end

#glPushMatrix for with @with #TODO will want upgrade.
function glPushed()
    glPushMatrix()
    return _GlPushed()
end

#More functions
function unitFrame()
    glLoadIdentity()
    glTranslate(-1,-1)
    glScale(2)
end

#Map the given range to the unit range.
function unitFrameFrom(fx::Number,fy::Number,tx::Number,ty::Number)
    assert( fx!=tx && fy!=ty, "There might be a division by zero here.." )
    glScale(1/(tx-fx),1/(ty-fy))
    glTranslate(-fx,-fy)
end

typealias Vector2 Union((Number,Number),Vector) #(just for here)

unitFrameFrom(fr::Vector2, to::Vector2) = unitFrameFrom(fr[1],fr[2], to[1],to[2])

@also_tuple unitFrameFrom 2,4

#Map the unit range to the given range.
function unitFrameTo(fx::Number,fy::Number,tx::Number,ty::Number)
    glTranslate(fx,fy)
    glScale(tx-fx, ty-fy)
end
unitFrameTo(fr::Vector2, to::Vector2) = unitFrameTo(fr[1],fr[2], to[1],to[2])

@also_tuple unitFrameFrom 2,4

#Rectangle vertices (in QUADS, LINE_LOOP-able style)
function quad(fx::Number,fy::Number,tx::Number,ty::Number)
    glVertex(fx,fy)
    glVertex(fx,ty)
    glVertex(tx,ty)
    glVertex(tx,fy)
end
quad(fr::Vector2, to::Vector2) = quad(fr[1],fr[2], to[1],to[2])

@also_tuple quad 2,4

centeredQuad(x::Number,y::Number, r::Number) = quad(x-r,y-r, x+r, y+r)

centeredQuad(pos::Vector2, r::Number) = centeredQuad(pos[1],pos[2],r)

@also_tuple centeredQuad 2:3

# Going with a basic OpenGL RGB 1D-interleaved image-texture
function glimread(filename::String)
    img = imread(filename)
    w = size(img,2)
    h = size(img,3)
    img1D = Array(Uint8,w*h*3)
    for j=1:w
        for k=1:h
            for i=1:3
                img1D[3*w*(j-1)+3*(k-1)+i] = img[i,w-j+1,k]
            end
        end
    end
    return img1D, w, h
end

end
