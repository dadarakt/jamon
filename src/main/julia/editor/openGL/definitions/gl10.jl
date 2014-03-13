#function bodies
@createOpenGLFun glColor3i(red::GLint,green::GLint,blue::GLint)::Void
@createOpenGLFun glVertex4sv(v::Ptr)::Void
@createOpenGLFun glBlendEquation(mode::GLenum)::Void
@createOpenGLFun glVertex4d(x::GLdouble,y::GLdouble,z::GLdouble,w::GLdouble)::Void
@createOpenGLFun glTexEnvi(target::GLenum,pname::GLenum,param::GLint)::Void
@createOpenGLFun glTexCoord3d(s::GLdouble,t::GLdouble,r::GLdouble)::Void
@createOpenGLFun glRectiv(v1::Ptr,v2::Ptr)::Void
@createOpenGLFun glGetMapiv(target::GLenum,query::GLenum,v::Ptr)::Void
@createOpenGLFun strtoimax(__nptr::Ptr,__endptr::Ptr,__base::Int32)::intmax_t
@createOpenGLFun imaxdiv(__numer::intmax_t,__denom::intmax_t)::imaxdiv_t
@createOpenGLFun glReadBuffer(mode::GLenum)::Void
@createOpenGLFun glGenTextures(n::GLsizei,textures::Ptr{Uint32})::Void
@createOpenGLFun glRasterPos3f(x::GLfloat,y::GLfloat,z::GLfloat)::Void
@createOpenGLFun glEvalPoint2(i::GLint,j::GLint)::Void
@createOpenGLFun glGetConvolutionFilter(target::GLenum,format::GLenum,_type::GLenum,image::Ptr)::Void
@createOpenGLFun glEvalCoord1dv(u::Ptr)::Void
@createOpenGLFun glLoadTransposeMatrixf(m::GLfloat)::Void
@createOpenGLFun glGetFloatv(pname::GLenum,params::Ptr)::Void
@createOpenGLFun glCreateDebugObjectMESA()::GLhandleARB
@createOpenGLFun glVertex2sv(v::Ptr)::Void
@createOpenGLFun glMultiTexCoord2s(target::GLenum,s::GLshort,t::GLshort)::Void
@createOpenGLFun glGetColorTable(target::GLenum,format::GLenum,_type::GLenum,table::Ptr)::Void
@createOpenGLFun glConvolutionParameterf(target::GLenum,pname::GLenum,params::GLfloat)::Void
@createOpenGLFun glGetMinmaxParameterfv(target::GLenum,pname::GLenum,params::Ptr)::Void
@createOpenGLFun glRasterPos4sv(v::Ptr)::Void
@createOpenGLFun glPassThrough(token::GLfloat)::Void
@createOpenGLFun glClearDepth(depth::GLclampd)::Void
@createOpenGLFun glColor4bv(v::Ptr)::Void
@createOpenGLFun glBitmap(width::GLsizei,height::GLsizei,xorig::GLfloat,yorig::GLfloat,xmove::GLfloat,ymove::GLfloat,bitmap::Ptr)::Void
@createOpenGLFun glMultiTexCoord1dvARB(target::GLenum,v::Ptr)::Void
@createOpenGLFun glEvalPoint1(i::GLint)::Void
@createOpenGLFun glGetLightfv(light::GLenum,pname::GLenum,params::Ptr)::Void
@createOpenGLFun glColor3f(red::GLfloat,green::GLfloat,blue::GLfloat)::Void
@createOpenGLFun glColor3iv(v::Ptr)::Void
@createOpenGLFun glRasterPos2fv(v::Ptr)::Void
@createOpenGLFun glRectf(x1::GLfloat,y1::GLfloat,x2::GLfloat,y2::GLfloat)::Void
@createOpenGLFun glMultiTexCoord2svARB(target::GLenum,v::Ptr)::Void
@createOpenGLFun glPixelMapuiv(map::GLenum,mapsize::GLsizei,values::Ptr)::Void
@createOpenGLFun glBlendColor(red::GLclampf,green::GLclampf,blue::GLclampf,alpha::GLclampf)::Void
@createOpenGLFun glLoadMatrixd(m::Ptr)::Void
@createOpenGLFun glFeedbackBuffer(size::GLsizei,_type::GLenum,buffer::Ptr)::Void
@createOpenGLFun glColor4fv(v::Ptr)::Void
@createOpenGLFun glInitNames()::Void
@createOpenGLFun glDisable(cap::GLenum)::Void
@createOpenGLFun glCopyConvolutionFilter1D(target::GLenum,internalformat::GLenum,x::GLint,y::GLint,width::GLsizei)::Void
@createOpenGLFun glNormal3b(nx::GLbyte,ny::GLbyte,nz::GLbyte)::Void
@createOpenGLFun glMultiTexCoord2iv(target::GLenum,v::Ptr)::Void
@createOpenGLFun glHint(target::GLenum,mode::GLenum)::Void
@createOpenGLFun glVertex3s(x::GLshort,y::GLshort,z::GLshort)::Void
@createOpenGLFun glVertex4i(x::GLint,y::GLint,z::GLint,w::GLint)::Void
@createOpenGLFun glIndexub(c::GLubyte)::Void
@createOpenGLFun glTexGeni(coord::GLenum,pname::GLenum,param::GLint)::Void
@createOpenGLFun glEvalCoord2dv(u::Ptr)::Void
@createOpenGLFun glTexGend(coord::GLenum,pname::GLenum,param::GLdouble)::Void
@createOpenGLFun glIndexfv(c::Ptr)::Void
@createOpenGLFun glPushName(name::GLuint)::Void
@createOpenGLFun glTexCoord2f(s::GLfloat,t::GLfloat)::Void
@createOpenGLFun glVertex2f(x::GLfloat,y::GLfloat)::Void
@createOpenGLFun glColor4dv(v::Ptr)::Void
@createOpenGLFun glPixelMapusv(map::GLenum,mapsize::GLsizei,values::Ptr)::Void
@createOpenGLFun glConvolutionParameterfv(target::GLenum,pname::GLenum,params::Ptr)::Void
@createOpenGLFun glCopyConvolutionFilter2D(target::GLenum,internalformat::GLenum,x::GLint,y::GLint,width::GLsizei,height::GLsizei)::Void
@createOpenGLFun glNormal3f(nx::GLfloat,ny::GLfloat,nz::GLfloat)::Void
@createOpenGLFun glFinish()::Void
@createOpenGLFun glTexImage3D(target::GLenum,level::GLint,internalformat::GLint,width::GLsizei,height::GLsizei,depth::GLsizei,border::GLint,format::GLenum,_type::GLenum,pixels::Ptr)::Void
@createOpenGLFun glClear(mask::GLbitfield)::Void
@createOpenGLFun glEvalCoord1fv(u::Ptr)::Void
@createOpenGLFun glColor3sv(v::Ptr)::Void
@createOpenGLFun glTexSubImage3D(target::GLenum,level::GLint,xoffset::GLint,yoffset::GLint,zoffset::GLint,width::GLsizei,height::GLsizei,depth::GLsizei,format::GLenum,_type::GLenum,pixels::Ptr)::Void
@createOpenGLFun glNormal3sv(v::Ptr)::Void
@createOpenGLFun glBindTexture(target::GLenum,texture::GLuint)::Void
@createOpenGLFun glColor3d(red::GLdouble,green::GLdouble,blue::GLdouble)::Void
@createOpenGLFun glMultiTexCoord1dv(target::GLenum,v::Ptr)::Void
@createOpenGLFun glCopyPixels(x::GLint,y::GLint,width::GLsizei,height::GLsizei,_type::GLenum)::Void
@createOpenGLFun glTexCoord1d(s::GLdouble)::Void
@createOpenGLFun glVertex4f(x::GLfloat,y::GLfloat,z::GLfloat,w::GLfloat)::Void
@createOpenGLFun glMatrixMode(mode::GLenum)::Void
@createOpenGLFun glMultiTexCoord1s(target::GLenum,s::GLshort)::Void
@createOpenGLFun glLineStipple(factor::GLint,pattern::GLushort)::Void
@createOpenGLFun glBlendEquationSeparateATI(modergb::GLenum,modea::GLenum)::Void
@createOpenGLFun glRasterPos3fv(v::Ptr)::Void
@createOpenGLFun glConvolutionParameteri(target::GLenum,pname::GLenum,params::GLint)::Void
@createOpenGLFun glClientActiveTexture(texture::GLenum)::Void
@createOpenGLFun glTexCoord3i(s::GLint,t::GLint,r::GLint)::Void
@createOpenGLFun glDepthRange(near_val::GLclampd,far_val::GLclampd)::Void
@createOpenGLFun glTexGenf(coord::GLenum,pname::GLenum,param::GLfloat)::Void
@createOpenGLFun glClientActiveTextureARB(texture::GLenum)::Void
@createOpenGLFun glVertex3fv(v::Ptr)::Void
@createOpenGLFun glGetPointerv(pname::GLenum,params::Ptr)::Void
@createOpenGLFun glVertex3sv(v::Ptr)::Void
@createOpenGLFun glNewList(list::GLuint,mode::GLenum)::Void
@createOpenGLFun glRectsv(v1::Ptr,v2::Ptr)::Void
@createOpenGLFun glGenLists(range::GLsizei)::GLuint
@createOpenGLFun glColor3s(red::GLshort,green::GLshort,blue::GLshort)::Void
@createOpenGLFun glVertex4iv(v::Ptr)::Void
@createOpenGLFun glColor3b(red::GLbyte,green::GLbyte,blue::GLbyte)::Void
@createOpenGLFun glEndList()::Void
@createOpenGLFun glHistogram(target::GLenum,width::GLsizei,internalformat::GLenum,sink::GLboolean)::Void
@createOpenGLFun glTexCoord2iv(v::Ptr)::Void
@createOpenGLFun glGetTexParameterfv(target::GLenum,pname::GLenum,params::Ptr)::Void
@createOpenGLFun glMultiTexCoord1iv(target::GLenum,v::Ptr)::Void
@createOpenGLFun glResetMinmax(target::GLenum)::Void
@createOpenGLFun glMultiTexCoord4dvARB(target::GLenum,v::Ptr)::Void
@createOpenGLFun glScissor(x::GLint,y::GLint,width::GLsizei,height::GLsizei)::Void
@createOpenGLFun glLightfv(light::GLenum,pname::GLenum,params::Ptr{Float32})::Void
@createOpenGLFun glRasterPos3i(x::GLint,y::GLint,z::GLint)::Void
@createOpenGLFun glMultiTexCoord4iARB(target::GLenum,s::GLint,t::GLint,r::GLint,q::GLint)::Void
@createOpenGLFun glTexCoord3s(s::GLshort,t::GLshort,r::GLshort)::Void
@createOpenGLFun glGetPixelMapuiv(map::GLenum,values::Ptr)::Void
@createOpenGLFun glColor4b(red::GLbyte,green::GLbyte,blue::GLbyte,alpha::GLbyte)::Void
@createOpenGLFun glEnd()::Void
@createOpenGLFun glRasterPos4d(x::GLdouble,y::GLdouble,z::GLdouble,w::GLdouble)::Void
@createOpenGLFun glStencilMask(mask::GLuint)::Void
@createOpenGLFun glCopyTexSubImage2D(target::GLenum,level::GLint,xoffset::GLint,yoffset::GLint,x::GLint,y::GLint,width::GLsizei,height::GLsizei)::Void
@createOpenGLFun glNormalPointer(_type::GLenum,stride::GLsizei,ptr::Ptr)::Void
@createOpenGLFun glVertex4dv(v::Ptr)::Void
@createOpenGLFun glGetTexLevelParameterfv(target::GLenum,level::GLint,pname::GLenum,params::Ptr)::Void
@createOpenGLFun glMultiTexCoord4f(target::GLenum,s::GLfloat,t::GLfloat,r::GLfloat,q::GLfloat)::Void
@createOpenGLFun glMultiTexCoord2f(target::GLenum,s::GLfloat,t::GLfloat)::Void
@createOpenGLFun glGetDebugLogLengthMESA(obj::GLhandleARB,logtype::GLenum,shadertype::GLenum)::GLsizei
@createOpenGLFun glTexCoord2s(s::GLshort,t::GLshort)::Void
@createOpenGLFun glColorTable(target::GLenum,internalformat::GLenum,width::GLsizei,format::GLenum,_type::GLenum,table::Ptr)::Void
@createOpenGLFun glOrtho(left::GLdouble,right::GLdouble,bottom::GLdouble,top::GLdouble,near_val::GLdouble,far_val::GLdouble)::Void
@createOpenGLFun glColor3uiv(v::Ptr)::Void
@createOpenGLFun glEvalMesh2(mode::GLenum,i1::GLint,i2::GLint,j1::GLint,j2::GLint)::Void
@createOpenGLFun glRects(x1::GLshort,y1::GLshort,x2::GLshort,y2::GLshort)::Void
@createOpenGLFun glMateriali(face::GLenum,pname::GLenum,param::GLint)::Void
@createOpenGLFun glTexCoord3dv(v::Ptr)::Void
@createOpenGLFun glArrayElement(i::GLint)::Void
@createOpenGLFun glVertex2dv(v::Ptr)::Void
@createOpenGLFun glInterleavedArrays(format::GLenum,stride::GLsizei,pointer::Ptr)::Void
@createOpenGLFun glGetMaterialfv(face::GLenum,pname::GLenum,params::Ptr)::Void
@createOpenGLFun glMultiTexCoord4fARB(target::GLenum,s::GLfloat,t::GLfloat,r::GLfloat,q::GLfloat)::Void
@createOpenGLFun glTexParameteri(target::GLenum,pname::GLenum,param::GLint)::Void
@createOpenGLFun glCompressedTexImage2D(target::GLenum,level::GLint,internalformat::GLenum,width::GLsizei,height::GLsizei,border::GLint,imagesize::GLsizei,data::Ptr)::Void
@createOpenGLFun glMultiTexCoord2ivARB(target::GLenum,v::Ptr)::Void
@createOpenGLFun glVertex4s(x::GLshort,y::GLshort,z::GLshort,w::GLshort)::Void
@createOpenGLFun glRasterPos4fv(v::Ptr)::Void
@createOpenGLFun glNormal3bv(v::Ptr)::Void
@createOpenGLFun glTexCoord2dv(v::Ptr)::Void
@createOpenGLFun glGetDebugLogMESA(obj::GLhandleARB,logtype::GLenum,shadertype::GLenum,maxlength::GLsizei,length::Ptr,debuglog::Ptr)::Void
@createOpenGLFun glTexCoordPointer(size::GLint,_type::GLenum,stride::GLsizei,ptr::Ptr)::Void
@createOpenGLFun glMultiTexCoord2fvARB(target::GLenum,v::Ptr)::Void
@createOpenGLFun glTexCoord3sv(v::Ptr)::Void
@createOpenGLFun glRasterPos3s(x::GLshort,y::GLshort,z::GLshort)::Void
@createOpenGLFun glClearAccum(red::GLfloat,green::GLfloat,blue::GLfloat,alpha::GLfloat)::Void
@createOpenGLFun glGetSeparableFilter(target::GLenum,format::GLenum,_type::GLenum,row::Ptr,column::Ptr,span::Ptr)::Void
@createOpenGLFun glDrawArrays(mode::GLenum,first::GLint,count::GLsizei)::Void
@createOpenGLFun glRasterPos4iv(v::Ptr)::Void
@createOpenGLFun glCopyTexImage1D(target::GLenum,level::GLint,internalformat::GLenum,x::GLint,y::GLint,width::GLsizei,border::GLint)::Void
@createOpenGLFun glDeleteLists(list::GLuint,range::GLsizei)::Void
@createOpenGLFun glMultiTexCoord2sv(target::GLenum,v::Ptr)::Void
@createOpenGLFun glStencilFunc(func::GLenum,ref::GLint,mask::GLuint)::Void
@createOpenGLFun glTexGendv(coord::GLenum,pname::GLenum,params::Ptr)::Void
@createOpenGLFun glRasterPos2f(x::GLfloat,y::GLfloat)::Void
@createOpenGLFun glMaterialiv(face::GLenum,pname::GLenum,params::Ptr)::Void
@createOpenGLFun glEvalMesh1(mode::GLenum,i1::GLint,i2::GLint)::Void
@createOpenGLFun glColor3us(red::GLushort,green::GLushort,blue::GLushort)::Void
@createOpenGLFun glMultiTexCoord4fvARB(target::GLenum,v::Ptr)::Void
@createOpenGLFun wcstoimax(__nptr::Ptr,__endptr::Ptr,__base::Int32)::intmax_t
@createOpenGLFun glGetMapdv(target::GLenum,query::GLenum,v::Ptr)::Void
@createOpenGLFun glConvolutionFilter1D(target::GLenum,internalformat::GLenum,width::GLsizei,format::GLenum,_type::GLenum,image::Ptr)::Void
@createOpenGLFun glCompressedTexImage1D(target::GLenum,level::GLint,internalformat::GLenum,width::GLsizei,border::GLint,imagesize::GLsizei,data::Ptr)::Void
@createOpenGLFun glGetError()::GLenum
@createOpenGLFun glVertex2s(x::GLshort,y::GLshort)::Void
@createOpenGLFun glMultiTexCoord1fv(target::GLenum,v::Ptr)::Void
@createOpenGLFun glMultiTexCoord2d(target::GLenum,s::GLdouble,t::GLdouble)::Void
@createOpenGLFun glDisableClientState(cap::GLenum)::Void
@createOpenGLFun glGetHistogramParameteriv(target::GLenum,pname::GLenum,params::Ptr)::Void
@createOpenGLFun strtoumax(__nptr::Ptr,__endptr::Ptr,__base::Int32)::uintmax_t
@createOpenGLFun glMap1f(target::GLenum,u1::GLfloat,u2::GLfloat,stride::GLint,order::GLint,points::Ptr)::Void
@createOpenGLFun glColor4uiv(v::Ptr)::Void
@createOpenGLFun glPopClientAttrib()::Void
@createOpenGLFun glColor4s(red::GLshort,green::GLshort,blue::GLshort,alpha::GLshort)::Void
@createOpenGLFun glIndexd(c::GLdouble)::Void
@createOpenGLFun glColor4ub(red::GLubyte,green::GLubyte,blue::GLubyte,alpha::GLubyte)::Void
@createOpenGLFun glGetHistogram(target::GLenum,reset::GLboolean,format::GLenum,_type::GLenum,values::Ptr)::Void
@createOpenGLFun glMultiTexCoord1i(target::GLenum,s::GLint)::Void
@createOpenGLFun glMultiTexCoord3svARB(target::GLenum,v::Ptr)::Void
@createOpenGLFun glMultiTexCoord3ivARB(target::GLenum,v::Ptr)::Void
@createOpenGLFun glCallLists(n::GLsizei,_type::GLenum,lists::Ptr{Uint8})::Void
@createOpenGLFun glDeleteTextures(n::GLsizei,textures::Ptr{Uint32})::Void
@createOpenGLFun glNormal3i(nx::GLint,ny::GLint,nz::GLint)::Void
@createOpenGLFun glFogiv(pname::GLenum,params::Ptr)::Void
@createOpenGLFun glRasterPos2s(x::GLshort,y::GLshort)::Void
@createOpenGLFun glCompressedTexSubImage1D(target::GLenum,level::GLint,xoffset::GLint,width::GLsizei,format::GLenum,imagesize::GLsizei,data::Ptr)::Void
@createOpenGLFun glIndexiv(c::Ptr)::Void
@createOpenGLFun glPrioritizeTextures(n::GLsizei,textures::Ptr,priorities::Ptr)::Void
@createOpenGLFun glMultiTexCoord4svARB(target::GLenum,v::Ptr)::Void
@createOpenGLFun glMultiTexCoord3d(target::GLenum,s::GLdouble,t::GLdouble,r::GLdouble)::Void
@createOpenGLFun glTexParameterf(target::GLenum,pname::GLenum,param::GLfloat)::Void
@createOpenGLFun glTexEnviv(target::GLenum,pname::GLenum,params::Ptr)::Void
@createOpenGLFun glMultiTexCoord2iARB(target::GLenum,s::GLint,t::GLint)::Void
@createOpenGLFun glTexCoord1sv(v::Ptr)::Void
@createOpenGLFun glColor4usv(v::Ptr)::Void
@createOpenGLFun glCullFace(mode::GLenum)::Void
@createOpenGLFun glVertex4fv(v::Ptr)::Void
@createOpenGLFun glIndexf(c::GLfloat)::Void
@createOpenGLFun glRectfv(v1::Ptr,v2::Ptr)::Void
@createOpenGLFun glMultMatrixf(m::Ptr)::Void
@createOpenGLFun glColor4f(red::GLfloat,green::GLfloat,blue::GLfloat,alpha::GLfloat)::Void
@createOpenGLFun glMultiTexCoord1dARB(target::GLenum,s::GLdouble)::Void
@createOpenGLFun glTexCoord1i(s::GLint)::Void
@createOpenGLFun glTexParameterfv(target::GLenum,pname::GLenum,params::Ptr)::Void
@createOpenGLFun glActiveTextureARB(texture::GLenum)::Void
@createOpenGLFun glMultiTexCoord1sARB(target::GLenum,s::GLshort)::Void
@createOpenGLFun glMultiTexCoord4s(target::GLenum,s::GLshort,t::GLshort,r::GLshort,q::GLshort)::Void
@createOpenGLFun glMultiTexCoord1svARB(target::GLenum,v::Ptr)::Void
@createOpenGLFun glMultiTexCoord3fARB(target::GLenum,s::GLfloat,t::GLfloat,r::GLfloat)::Void
@createOpenGLFun glTexCoord1s(s::GLshort)::Void
@createOpenGLFun glEvalCoord2f(u::GLfloat,v::GLfloat)::Void
@createOpenGLFun glMultiTexCoord4i(target::GLenum,s::GLint,t::GLint,r::GLint,q::GLint)::Void
@createOpenGLFun glDepthMask(flag::GLboolean)::Void
@createOpenGLFun glTexCoord3f(s::GLfloat,t::GLfloat,r::GLfloat)::Void
@createOpenGLFun glDrawPixels(width::GLsizei,height::GLsizei,format::GLenum,_type::GLenum,pixels::Ptr{Float64})::Void
@createOpenGLFun glMultiTexCoord1iARB(target::GLenum,s::GLint)::Void
@createOpenGLFun glMultiTexCoord3dvARB(target::GLenum,v::Ptr)::Void
@createOpenGLFun glLineWidth(width::GLfloat)::Void
@createOpenGLFun glPolygonMode(face::GLenum,mode::GLenum)::Void
@createOpenGLFun glMultiTexCoord1d(target::GLenum,s::GLdouble)::Void
@createOpenGLFun glMultiTexCoord4sv(target::GLenum,v::Ptr)::Void
@createOpenGLFun glIsList(list::GLuint)::GLboolean
@createOpenGLFun glGetTexEnvfv(target::GLenum,pname::GLenum,params::Ptr)::Void
@createOpenGLFun glClearDebugLogMESA(obj::GLhandleARB,logtype::GLenum,shadertype::GLenum)::Void
@createOpenGLFun glColorTableParameterfv(target::GLenum,pname::GLenum,params::Ptr)::Void
@createOpenGLFun glCompressedTexSubImage3D(target::GLenum,level::GLint,xoffset::GLint,yoffset::GLint,zoffset::GLint,width::GLsizei,height::GLsizei,depth::GLsizei,format::GLenum,imagesize::GLsizei,data::Ptr)::Void
@createOpenGLFun glFlush()::Void
@createOpenGLFun glFrustum(left::GLdouble,right::GLdouble,bottom::GLdouble,top::GLdouble,near_val::GLdouble,far_val::GLdouble)::Void
@createOpenGLFun glPushClientAttrib(mask::GLbitfield)::Void
@createOpenGLFun glScalef(x::GLfloat,y::GLfloat,z::GLfloat)::Void
@createOpenGLFun glSelectBuffer(size::GLsizei,buffer::Ptr)::Void
@createOpenGLFun glVertex2iv(v::Ptr)::Void
@createOpenGLFun glTexCoord4s(s::GLshort,t::GLshort,r::GLshort,q::GLshort)::Void
@createOpenGLFun glColor3bv(v::Ptr)::Void
@createOpenGLFun glVertex3i(x::GLint,y::GLint,z::GLint)::Void
@createOpenGLFun glRasterPos2iv(v::Ptr)::Void
@createOpenGLFun glEvalCoord2fv(u::Ptr)::Void
@createOpenGLFun glColor4ubv(v::Ptr)::Void
@createOpenGLFun glMap2f(target::GLenum,u1::GLfloat,u2::GLfloat,ustride::GLint,uorder::GLint,v1::GLfloat,v2::GLfloat,vstride::GLint,vorder::GLint,points::Ptr)::Void
@createOpenGLFun glMapGrid2f(un::GLint,u1::GLfloat,u2::GLfloat,vn::GLint,v1::GLfloat,v2::GLfloat)::Void
@createOpenGLFun glConvolutionFilter2D(target::GLenum,internalformat::GLenum,width::GLsizei,height::GLsizei,format::GLenum,_type::GLenum,image::Ptr)::Void
@createOpenGLFun glActiveTexture(texture::GLenum)::Void
@createOpenGLFun glMultiTexCoord2dARB(target::GLenum,s::GLdouble,t::GLdouble)::Void
@createOpenGLFun glIsTexture(texture::GLuint)::GLboolean
@createOpenGLFun glColorSubTable(target::GLenum,start::GLsizei,count::GLsizei,format::GLenum,_type::GLenum,data::Ptr)::Void
@createOpenGLFun glAlphaFunc(func::GLenum,ref::GLclampf)::Void
@createOpenGLFun glPolygonOffset(factor::GLfloat,units::GLfloat)::Void
@createOpenGLFun glCallList(list::GLuint)::Void
@createOpenGLFun glColor4us(red::GLushort,green::GLushort,blue::GLushort,alpha::GLushort)::Void
@createOpenGLFun glDrawRangeElements(mode::GLenum,start::GLuint,_end::GLuint,count::GLsizei,_type::GLenum,indices::Ptr)::Void
@createOpenGLFun glCopyTexSubImage3D(target::GLenum,level::GLint,xoffset::GLint,yoffset::GLint,zoffset::GLint,x::GLint,y::GLint,width::GLsizei,height::GLsizei)::Void
@createOpenGLFun glNormal3d(nx::GLdouble,ny::GLdouble,nz::GLdouble)::Void
@createOpenGLFun glVertex3d(x::GLdouble,y::GLdouble,z::GLdouble)::Void
@createOpenGLFun glMultMatrixd(m::Ptr)::Void
@createOpenGLFun glTranslated(x::GLdouble,y::GLdouble,z::GLdouble)::Void
@createOpenGLFun glMultiTexCoord3sv(target::GLenum,v::Ptr)::Void
@createOpenGLFun glMaterialf(face::GLenum,pname::GLenum,param::GLfloat)::Void
@createOpenGLFun glNormal3fv(v::Ptr)::Void
@createOpenGLFun glRasterPos3sv(v::Ptr)::Void
@createOpenGLFun glMultiTexCoord3fvARB(target::GLenum,v::Ptr)::Void
@createOpenGLFun glTexCoord1iv(v::Ptr)::Void
@createOpenGLFun glRotated(angle::GLdouble,x::GLdouble,y::GLdouble,z::GLdouble)::Void
@createOpenGLFun glLoadIdentity()::Void
@createOpenGLFun glGetColorTableParameteriv(target::GLenum,pname::GLenum,params::Ptr)::Void
@createOpenGLFun glTexParameteriv(target::GLenum,pname::GLenum,params::Ptr)::Void
@createOpenGLFun glTexGenfv(coord::GLenum,pname::GLenum,params::Ptr)::Void
@createOpenGLFun glGetTexGeniv(coord::GLenum,pname::GLenum,params::Ptr)::Void
@createOpenGLFun glRasterPos2d(x::GLdouble,y::GLdouble)::Void
@createOpenGLFun glGetIntegerv(pname::GLenum,params::Ptr)::Void
@createOpenGLFun glIndexdv(c::Ptr)::Void
@createOpenGLFun glEnable(cap::GLenum)::Void
@createOpenGLFun glColor4i(red::GLint,green::GLint,blue::GLint,alpha::GLint)::Void
@createOpenGLFun glLightModeliv(pname::GLenum,params::Ptr)::Void
@createOpenGLFun glRasterPos2i(x::GLint,y::GLint)::Void
@createOpenGLFun glMultiTexCoord4d(target::GLenum,s::GLdouble,t::GLdouble,r::GLdouble,q::GLdouble)::Void
@createOpenGLFun glMapGrid1f(un::GLint,u1::GLfloat,u2::GLfloat)::Void
@createOpenGLFun glAreTexturesResident(n::GLsizei,textures::Ptr,residences::Ptr)::GLboolean
@createOpenGLFun glIndexubv(c::Ptr)::Void
@createOpenGLFun glMap2d(target::GLenum,u1::GLdouble,u2::GLdouble,ustride::GLint,uorder::GLint,v1::GLdouble,v2::GLdouble,vstride::GLint,vorder::GLint,points::Ptr)::Void
@createOpenGLFun glVertex2d(x::GLdouble,y::GLdouble)::Void
@createOpenGLFun glMultiTexCoord2fv(target::GLenum,v::Ptr)::Void
@createOpenGLFun glLightModelfv(pname::GLenum,params::Ptr)::Void
@createOpenGLFun glGetCompressedTexImage(target::GLenum,lod::GLint,img::Ptr)::Void
@createOpenGLFun glColorPointer(size::GLint,_type::GLenum,stride::GLsizei,ptr::Ptr)::Void
@createOpenGLFun glTranslatef(x::GLfloat,y::GLfloat,z::GLfloat)::Void
@createOpenGLFun glGetColorTableParameterfv(target::GLenum,pname::GLenum,params::Ptr)::Void
@createOpenGLFun glVertex2i(x::GLint,y::GLint)::Void
@createOpenGLFun glMultiTexCoord3iv(target::GLenum,v::Ptr)::Void
@createOpenGLFun glMultiTexCoord2i(target::GLenum,s::GLint,t::GLint)::Void
@createOpenGLFun glMultiTexCoord1fvARB(target::GLenum,v::Ptr)::Void
@createOpenGLFun glGetTexGendv(coord::GLenum,pname::GLenum,params::Ptr)::Void
@createOpenGLFun glTexCoord3iv(v::Ptr)::Void
@createOpenGLFun glTexCoord2i(s::GLint,t::GLint)::Void
@createOpenGLFun glVertex2fv(v::Ptr)::Void
@createOpenGLFun glRasterPos4i(x::GLint,y::GLint,z::GLint,w::GLint)::Void
@createOpenGLFun glMultiTexCoord1f(target::GLenum,s::GLfloat)::Void
@createOpenGLFun glMultiTexCoord1fARB(target::GLenum,s::GLfloat)::Void
@createOpenGLFun glMultiTexCoord3sARB(target::GLenum,s::GLshort,t::GLshort,r::GLshort)::Void
@createOpenGLFun glMultiTexCoord4iv(target::GLenum,v::Ptr)::Void
@createOpenGLFun glGetClipPlane(plane::GLenum,equation::Ptr)::Void
@createOpenGLFun glVertexPointer(size::GLint,_type::GLenum,stride::GLsizei,ptr::Ptr)::Void
@createOpenGLFun glGetDoublev(pname::GLenum,params::Ptr)::Void
@createOpenGLFun glViewport(x::GLint,y::GLint,width::GLsizei,height::GLsizei)::Void
@createOpenGLFun glTexImage1D(target::GLenum,level::GLint,internalformat::GLint,width::GLsizei,border::GLint,format::GLenum,_type::GLenum,pixels::Ptr)::Void
@createOpenGLFun glStencilOp(fail::GLenum,zfail::GLenum,zpass::GLenum)::Void
@createOpenGLFun glTexCoord4iv(v::Ptr)::Void
@createOpenGLFun glGetMapfv(target::GLenum,query::GLenum,v::Ptr)::Void
@createOpenGLFun glResetHistogram(target::GLenum)::Void
@createOpenGLFun glRectdv(v1::Ptr,v2::Ptr)::Void
@createOpenGLFun glCompressedTexImage3D(target::GLenum,level::GLint,internalformat::GLenum,width::GLsizei,height::GLsizei,depth::GLsizei,border::GLint,imagesize::GLsizei,data::Ptr)::Void
@createOpenGLFun glNormal3dv(v::Ptr)::Void
@createOpenGLFun glEdgeFlagPointer(stride::GLsizei,ptr::Ptr)::Void
@createOpenGLFun glColor3ui(red::GLuint,green::GLuint,blue::GLuint)::Void
@createOpenGLFun glMultiTexCoord3s(target::GLenum,s::GLshort,t::GLshort,r::GLshort)::Void
@createOpenGLFun glColor4sv(v::Ptr)::Void
@createOpenGLFun glLoadMatrixf(m::Ptr)::Void
@createOpenGLFun glMap1d(target::GLenum,u1::GLdouble,u2::GLdouble,stride::GLint,order::GLint,points::Ptr)::Void
@createOpenGLFun glNormal3s(nx::GLshort,ny::GLshort,nz::GLshort)::Void
@createOpenGLFun glIndexs(c::GLshort)::Void
@createOpenGLFun glMultiTexCoord3iARB(target::GLenum,s::GLint,t::GLint,r::GLint)::Void
@createOpenGLFun glCompressedTexSubImage2D(target::GLenum,level::GLint,xoffset::GLint,yoffset::GLint,width::GLsizei,height::GLsizei,format::GLenum,imagesize::GLsizei,data::Ptr)::Void
@createOpenGLFun glTexCoord1f(s::GLfloat)::Void
@createOpenGLFun glMultiTexCoord2dvARB(target::GLenum,v::Ptr)::Void
@createOpenGLFun glTexCoord4sv(v::Ptr)::Void
@createOpenGLFun glRenderMode(mode::GLenum)::GLint
@createOpenGLFun glMinmax(target::GLenum,internalformat::GLenum,sink::GLboolean)::Void
@createOpenGLFun glPixelTransferi(pname::GLenum,param::GLint)::Void
@createOpenGLFun glGetTexEnviv(target::GLenum,pname::GLenum,params::Ptr)::Void
@createOpenGLFun glColor3ub(red::GLubyte,green::GLubyte,blue::GLubyte)::Void
@createOpenGLFun glShadeModel(mode::GLenum)::Void
@createOpenGLFun glAccum(op::GLenum,value::GLfloat)::Void
@createOpenGLFun glTexCoord4f(s::GLfloat,t::GLfloat,r::GLfloat,q::GLfloat)::Void
@createOpenGLFun glTexCoord3fv(v::Ptr)::Void
@createOpenGLFun glIndexPointer(_type::GLenum,stride::GLsizei,ptr::Ptr)::Void
@createOpenGLFun glPixelStorei(pname::GLenum,param::GLint)::Void
@createOpenGLFun glPixelTransferf(pname::GLenum,param::GLfloat)::Void
@createOpenGLFun glGetPixelMapusv(map::GLenum,values::Ptr)::Void
@createOpenGLFun glDrawBuffer(mode::GLenum)::Void
@createOpenGLFun glTexEnvfv(target::GLenum,pname::GLenum,params::Ptr)::Void
@createOpenGLFun glMultiTexCoord3dv(target::GLenum,v::Ptr)::Void
@createOpenGLFun glMultiTexCoord2sARB(target::GLenum,s::GLshort,t::GLshort)::Void
@createOpenGLFun glLogicOp(opcode::GLenum)::Void
@createOpenGLFun glPopMatrix()::Void
@createOpenGLFun glEnableClientState(cap::GLenum)::Void
@createOpenGLFun glFogf(pname::GLenum,param::GLfloat)::Void
@createOpenGLFun glMultiTexCoord1sv(target::GLenum,v::Ptr)::Void
@createOpenGLFun glMultiTexCoord4dv(target::GLenum,v::Ptr)::Void
@createOpenGLFun glGetMaterialiv(face::GLenum,pname::GLenum,params::Ptr)::Void
@createOpenGLFun glCopyColorTable(target::GLenum,internalformat::GLenum,x::GLint,y::GLint,width::GLsizei)::Void
@createOpenGLFun glIndexsv(c::Ptr)::Void
@createOpenGLFun glMultiTexCoord2dv(target::GLenum,v::Ptr)::Void
@createOpenGLFun glTexCoord1dv(v::Ptr)::Void
@createOpenGLFun glColor3fv(v::Ptr)::Void
@createOpenGLFun glColorMask(red::GLboolean,green::GLboolean,blue::GLboolean,alpha::GLboolean)::Void
@createOpenGLFun glMultiTexCoord4fv(target::GLenum,v::Ptr)::Void
@createOpenGLFun glEdgeFlag(flag::GLboolean)::Void
@createOpenGLFun glPointSize(size::GLfloat)::Void
@createOpenGLFun glConvolutionParameteriv(target::GLenum,pname::GLenum,params::Ptr)::Void
@createOpenGLFun glTexGeniv(coord::GLenum,pname::GLenum,params::Ptr)::Void
@createOpenGLFun glListBase(base::GLuint)::Void
@createOpenGLFun glVertex3dv(v::Ptr)::Void
@createOpenGLFun glGetTexGenfv(coord::GLenum,pname::GLenum,params::Ptr)::Void
@createOpenGLFun glBegin(mode::GLenum)::Void
@createOpenGLFun glMapGrid1d(un::GLint,u1::GLdouble,u2::GLdouble)::Void
@createOpenGLFun glTexCoord1fv(v::Ptr)::Void
@createOpenGLFun glLoadTransposeMatrixd(m::GLdouble)::Void
@createOpenGLFun glRasterPos4s(x::GLshort,y::GLshort,z::GLshort,w::GLshort)::Void
@createOpenGLFun glCopyTexSubImage1D(target::GLenum,level::GLint,xoffset::GLint,x::GLint,y::GLint,width::GLsizei)::Void
@createOpenGLFun glGetMinmax(target::GLenum,reset::GLboolean,format::GLenum,types::GLenum,values::Ptr)::Void
@createOpenGLFun glLightModelf(pname::GLenum,param::GLfloat)::Void
@createOpenGLFun glIsEnabled(cap::GLenum)::GLboolean
@createOpenGLFun glGetPolygonStipple(mask::Ptr)::Void
@createOpenGLFun glReadPixels(x::GLint,y::GLint,width::GLsizei,height::GLsizei,format::GLenum,_type::GLenum,pixels::Ptr)::Void
@createOpenGLFun glMultiTexCoord3f(target::GLenum,s::GLfloat,t::GLfloat,r::GLfloat)::Void
@createOpenGLFun glTexCoord2fv(v::Ptr)::Void
@createOpenGLFun glTexEnvf(target::GLenum,pname::GLenum,param::GLfloat)::Void
@createOpenGLFun glTexCoord4fv(v::Ptr)::Void
@createOpenGLFun glGetConvolutionParameterfv(target::GLenum,pname::GLenum,params::Ptr)::Void
@createOpenGLFun glTexImage2D(target::GLenum,level::GLint,internalformat::GLint,width::GLsizei,height::GLsizei,border::GLint,format::GLenum,_type::GLenum,pixels::Ptr{Uint8})::Void
@createOpenGLFun glColor3dv(v::Ptr)::Void
@createOpenGLFun glEdgeFlagv(flag::Ptr)::Void
@createOpenGLFun glColor4ui(red::GLuint,green::GLuint,blue::GLuint,alpha::GLuint)::Void
@createOpenGLFun glGetMinmaxParameteriv(target::GLenum,pname::GLenum,params::Ptr)::Void
@createOpenGLFun glEvalCoord2d(u::GLdouble,v::GLdouble)::Void
@createOpenGLFun glGetConvolutionParameteriv(target::GLenum,pname::GLenum,params::Ptr)::Void
@createOpenGLFun glGetTexLevelParameteriv(target::GLenum,level::GLint,pname::GLenum,params::Ptr)::Void
@createOpenGLFun glGetTexImage(target::GLenum,level::GLint,format::GLenum,_type::GLenum,pixels::Ptr)::Void
@createOpenGLFun glPushAttrib(mask::GLbitfield)::Void
@createOpenGLFun glColor3usv(v::Ptr)::Void
@createOpenGLFun glTexSubImage2D(target::GLenum,level::GLint,xoffset::GLint,yoffset::GLint,width::GLsizei,height::GLsizei,format::GLenum,_type::GLenum,pixels::Ptr)::Void
@createOpenGLFun glGetHistogramParameterfv(target::GLenum,pname::GLenum,params::Ptr)::Void
@createOpenGLFun glPixelStoref(pname::GLenum,param::GLfloat)::Void
@createOpenGLFun glGetProgramRegisterfvMESA(target::GLenum,len::GLsizei,name::Ptr,v::Ptr)::Void
@createOpenGLFun glPushMatrix()::Void
@createOpenGLFun glFogi(pname::GLenum,param::GLint)::Void
@createOpenGLFun glPixelZoom(xfactor::GLfloat,yfactor::GLfloat)::Void
@createOpenGLFun glTexSubImage1D(target::GLenum,level::GLint,xoffset::GLint,width::GLsizei,format::GLenum,_type::GLenum,pixels::Ptr)::Void
@createOpenGLFun glLightModeli(pname::GLenum,param::GLint)::Void
@createOpenGLFun glTexCoord4i(s::GLint,t::GLint,r::GLint,q::GLint)::Void
@createOpenGLFun imaxabs(__n::intmax_t)::intmax_t
@createOpenGLFun glDrawElements(mode::GLenum,count::GLsizei,_type::GLenum,indices::Ptr)::Void
@createOpenGLFun glFogfv(pname::GLenum,params::Ptr{Float64})::Void
@createOpenGLFun glScaled(x::GLdouble,y::GLdouble,z::GLdouble)::Void
@createOpenGLFun glRasterPos3d(x::GLdouble,y::GLdouble,z::GLdouble)::Void
@createOpenGLFun glColor3ubv(v::Ptr)::Void
@createOpenGLFun glColor4iv(v::Ptr)::Void
@createOpenGLFun glGetLightiv(light::GLenum,pname::GLenum,params::Ptr)::Void
@createOpenGLFun glMultiTexCoord2fARB(target::GLenum,s::GLfloat,t::GLfloat)::Void
@createOpenGLFun glMaterialfv(face::GLenum,pname::GLenum,params::Ptr)::Void
@createOpenGLFun glRasterPos3dv(v::Ptr)::Void
@createOpenGLFun glPixelMapfv(map::GLenum,mapsize::GLsizei,values::Ptr)::Void
@createOpenGLFun glMultiTexCoord4sARB(target::GLenum,s::GLshort,t::GLshort,r::GLshort,q::GLshort)::Void
@createOpenGLFun glPolygonStipple(mask::Ptr)::Void
@createOpenGLFun glEvalCoord1f(u::GLfloat)::Void
@createOpenGLFun glIndexi(c::GLint)::Void
@createOpenGLFun glLoadName(name::GLuint)::Void
@createOpenGLFun glRasterPos4f(x::GLfloat,y::GLfloat,z::GLfloat,w::GLfloat)::Void
@createOpenGLFun glIndexMask(mask::GLuint)::Void
@createOpenGLFun glTexCoord2d(s::GLdouble,t::GLdouble)::Void
@createOpenGLFun glMultTransposeMatrixf(m::GLfloat)::Void
@createOpenGLFun glDepthFunc(func::GLenum)::Void
@createOpenGLFun glVertex3f(x::GLfloat,y::GLfloat,z::GLfloat)::Void
@createOpenGLFun glProgramCallbackMESA(target::GLenum,callback::GLprogramcallbackMESA,data::Ptr)::Void
@createOpenGLFun glMultTransposeMatrixd(m::GLdouble)::Void
@createOpenGLFun glColorMaterial(face::GLenum,mode::GLenum)::Void
@createOpenGLFun glCopyColorSubTable(target::GLenum,start::GLsizei,x::GLint,y::GLint,width::GLsizei)::Void
@createOpenGLFun glRecti(x1::GLint,y1::GLint,x2::GLint,y2::GLint)::Void
@createOpenGLFun glCopyTexImage2D(target::GLenum,level::GLint,internalformat::GLenum,x::GLint,y::GLint,width::GLsizei,height::GLsizei,border::GLint)::Void
@createOpenGLFun glRotatef(angle::GLfloat,x::GLfloat,y::GLfloat,z::GLfloat)::Void
@createOpenGLFun glRasterPos2sv(v::Ptr)::Void
@createOpenGLFun glClearIndex(c::GLfloat)::Void
@createOpenGLFun glTexCoord4d(s::GLdouble,t::GLdouble,r::GLdouble,q::GLdouble)::Void
@createOpenGLFun glPopName()::Void
@createOpenGLFun glLighti(light::GLenum,pname::GLenum,param::GLint)::Void
@createOpenGLFun glMultiTexCoord1ivARB(target::GLenum,v::Ptr)::Void
@createOpenGLFun glRasterPos4dv(v::Ptr)::Void
@createOpenGLFun glClipPlane(plane::GLenum,equation::Ptr)::Void
@createOpenGLFun glTexCoord4dv(v::Ptr)::Void
@createOpenGLFun glMultiTexCoord3dARB(target::GLenum,s::GLdouble,t::GLdouble,r::GLdouble)::Void
@createOpenGLFun glBlendFunc(sfactor::GLenum,dfactor::GLenum)::Void
@createOpenGLFun glGetPixelMapfv(map::GLenum,values::Ptr)::Void
@createOpenGLFun glRasterPos2dv(v::Ptr)::Void
@createOpenGLFun glEvalCoord1d(u::GLdouble)::Void
@createOpenGLFun glMapGrid2d(un::GLint,u1::GLdouble,u2::GLdouble,vn::GLint,v1::GLdouble,v2::GLdouble)::Void
@createOpenGLFun glMultiTexCoord4ivARB(target::GLenum,v::Ptr)::Void
@createOpenGLFun glGetBooleanv(pname::GLenum,params::Ptr)::Void
@createOpenGLFun glMultiTexCoord3fv(target::GLenum,v::Ptr)::Void
@createOpenGLFun glGetTexParameteriv(target::GLenum,pname::GLenum,params::Ptr)::Void
@createOpenGLFun glFrontFace(mode::GLenum)::Void
@createOpenGLFun glMultiTexCoord4dARB(target::GLenum,s::GLdouble,t::GLdouble,r::GLdouble,q::GLdouble)::Void
@createOpenGLFun glColorTableParameteriv(target::GLenum,pname::GLenum,params::Ptr)::Void
@createOpenGLFun glRasterPos3iv(v::Ptr)::Void
@createOpenGLFun glColor4d(red::GLdouble,green::GLdouble,blue::GLdouble,alpha::GLdouble)::Void
@createOpenGLFun wcstoumax(__nptr::Ptr,__endptr::Ptr,__base::Int32)::uintmax_t
@createOpenGLFun glLightiv(light::GLenum,pname::GLenum,params::Ptr)::Void
@createOpenGLFun glPopAttrib()::Void
@createOpenGLFun glSampleCoverage(value::GLclampf,invert::GLboolean)::Void
@createOpenGLFun glClearColor(red::GLclampf,green::GLclampf,blue::GLclampf,alpha::GLclampf)::Void
@createOpenGLFun glSeparableFilter2D(target::GLenum,internalformat::GLenum,width::GLsizei,height::GLsizei,format::GLenum,_type::GLenum,row::Ptr,column::Ptr)::Void
@createOpenGLFun glRectd(x1::GLdouble,y1::GLdouble,x2::GLdouble,y2::GLdouble)::Void
@createOpenGLFun glNormal3iv(v::Ptr)::Void
@createOpenGLFun glTexCoord2sv(v::Ptr)::Void
@createOpenGLFun glVertex3iv(v::Ptr)::Void
@createOpenGLFun glClearStencil(s::GLint)::Void
@createOpenGLFun glLightf(light::GLenum,pname::GLenum,param::GLfloat)::Void
@createOpenGLFun glGetString(name::GLenum)::GLubyte
@createOpenGLFun glMultiTexCoord3i(target::GLenum,s::GLint,t::GLint,r::GLint)::Void
#constants
const GL_MAP1_GRID_SEGMENTS                                           = 0x0DD1
const GL_COMPILE                                                      = 0x1300
const GL_INTENSITY                                                    = 0x8049
const GL_FOG_HINT                                                     = 0x0C54
const GL_LUMINANCE12_ALPHA12                                          = 0x8047
const GL_UNPACK_LSB_FIRST                                             = 0x0CF1
const GL_ACCUM_RED_BITS                                               = 0x0D58
const GL_LIGHT4                                                       = 0x4004
const GL_COLOR_TABLE_WIDTH                                            = 0x80D9
const GL_TEXTURE5_ARB                                                 = 0x84C5
const GL_LIGHT_MODEL_LOCAL_VIEWER                                     = 0x0B51
const GL_OBJECT_LINEAR                                                = 0x2401
const GL_COLOR_ARRAY_SIZE                                             = 0x8081
const GL_TEXTURE12                                                    = 0x84CC
const GL_TEXTURE9_ARB                                                 = 0x84C9
const GL_OPERAND1_RGB                                                 = 0x8591
const GL_TEXTURE_BINDING_3D                                           = 0x806A
const GL_MINMAX_FORMAT                                                = 0x802F
const GL_UNSIGNED_SHORT_5_6_5_REV                                     = 0x8364
const GL_PACK_ROW_LENGTH                                              = 0x0D02
const GL_SET                                                          = 0x150F
const GL_LINES                                                        = 0x0001
const GL_QUADS                                                        = 0x0007
const GL_EYE_LINEAR                                                   = 0x2400
const GL_POLYGON_OFFSET_POINT                                         = 0x2A01
const GL_TEXTURE                                                      = 0x1702
const GL_RGB5                                                         = 0x8050
const GL_LIST_BIT                                                     = 0x00020000
const GL_COLOR_TABLE_INTENSITY_SIZE                                   = 0x80DF
const GL_TEXTURE_PRIORITY                                             = 0x8066
const GL_TEXTURE26_ARB                                                = 0x84DA
const GL_EVAL_BIT                                                     = 0x00010000
const GL_POST_COLOR_MATRIX_ALPHA_BIAS                                 = 0x80BB
const GL_CCW                                                          = 0x0901
const GL_TEXTURE26                                                    = 0x84DA
const GL_SMOOTH_LINE_WIDTH_GRANULARITY                                = 0x0B23
const GL_CONVOLUTION_BORDER_COLOR                                     = 0x8154
const GL_C3F_V3F                                                      = 0x2A24
const GL_TEXTURE_CUBE_MAP_NEGATIVE_X                                  = 0x8516
const GL_MAP2_INDEX                                                   = 0x0DB1
const GL_STENCIL_BITS                                                 = 0x0D57
const GL_DEPTH_BUFFER_BIT                                             = 0x00000100
const GL_INTENSITY12                                                  = 0x804C
const GL_LIST_BASE                                                    = 0x0B32
const GL_COLOR_TABLE_BIAS                                             = 0x80D7
const GL_POINT_SMOOTH                                                 = 0x0B10
const GL_PIXEL_MAP_S_TO_S                                             = 0x0C71
const GL_FUNC_REVERSE_SUBTRACT                                        = 0x800B
const GL_DOUBLE                                                       = 0x140A
const GL_T2F_C4UB_V3F                                                 = 0x2A29
const GL_RGB16                                                        = 0x8054
const GL_TEXTURE_MATRIX                                               = 0x0BA8
const GL_HISTOGRAM_ALPHA_SIZE                                         = 0x802B
const GL_VERSION_1_3                                                  = 1
const GL_COLOR_ARRAY_STRIDE                                           = 0x8083
const GL_TEXTURE_CUBE_MAP_POSITIVE_X                                  = 0x8515
const GL_BITMAP                                                       = 0x1A00
const GL_CURRENT_INDEX                                                = 0x0B01
const GL_MAP1_GRID_DOMAIN                                             = 0x0DD0
const GL_STENCIL_PASS_DEPTH_FAIL                                      = 0x0B95
const GL_TEXTURE_CUBE_MAP_NEGATIVE_Y                                  = 0x8518
const GL_XOR                                                          = 0x1506
const GL_LIGHT_MODEL_AMBIENT                                          = 0x0B53
const GL_OPERAND0_ALPHA                                               = 0x8598
const GL_AMBIENT                                                      = 0x1200
const GL_EQUIV                                                        = 0x1509
const GL_CURRENT_RASTER_INDEX                                         = 0x0B05
const GL_POLYGON_OFFSET_FILL                                          = 0x8037
const GL_ARB_imaging                                                  = 1
const GL_POINT_TOKEN                                                  = 0x0701
const GL_COLOR_WRITEMASK                                              = 0x0C23
const GL_TEXTURE8                                                     = 0x84C8
const GL_EQUAL                                                        = 0x0202
const GL_TEXTURE1                                                     = 0x84C1
const GL_RETURN                                                       = 0x0102
const GL_RGBA16                                                       = 0x805B
const GL_TEXTURE_2D                                                   = 0x0DE1
const GL_TEXTURE_BINDING_1D                                           = 0x8068
const GL_LINE_WIDTH_RANGE                                             = 0x0B22
const GL_PIXEL_MAP_I_TO_B                                             = 0x0C74
const GL_TEXTURE_2D_ARRAY_EXT                                         = 0x8C1A
const GL_ACCUM_BUFFER_BIT                                             = 0x00000200
const GL_SEPARABLE_2D                                                 = 0x8012
const GL_MAP2_GRID_SEGMENTS                                           = 0x0DD3
const GL_INDEX_CLEAR_VALUE                                            = 0x0C20
const GL_ENABLE_BIT                                                   = 0x00002000
const GL_TEXTURE12_ARB                                                = 0x84CC
const GL_MAP2_VERTEX_3                                                = 0x0DB7
const GL_OUT_OF_MEMORY                                                = 0x0505
const GL_UNSIGNED_SHORT_4_4_4_4                                       = 0x8033
const GL_HISTOGRAM_BLUE_SIZE                                          = 0x802A
const GL_MAP1_VERTEX_3                                                = 0x0D97
const GL_POST_CONVOLUTION_BLUE_BIAS                                   = 0x8022
const GL_TEXTURE18                                                    = 0x84D2
const GL_UNPACK_ALIGNMENT                                             = 0x0CF5
const GL_FRAGMENT_PROGRAM_CALLBACK_DATA_MESA                          = 0x8bb3
const GL_ONE_MINUS_SRC_ALPHA                                          = 0x0303
const GL_PIXEL_MAP_I_TO_I                                             = 0x0C70
const GL_TEXTURE1_ARB                                                 = 0x84C1
const GL_CURRENT_TEXTURE_COORDS                                       = 0x0B03
const GL_DIFFUSE                                                      = 0x1201
const GL_TEXTURE_INTENSITY_SIZE                                       = 0x8061
const GL_COLOR_TABLE_SCALE                                            = 0x80D6
const GL_TEXTURE_GEN_R                                                = 0x0C62
const GL_QUAD_STRIP                                                   = 0x0008
const GL_DEPTH_FUNC                                                   = 0x0B74
const GL_MAP2_VERTEX_4                                                = 0x0DB8
const GL_ALL_CLIENT_ATTRIB_BITS                                       = 0xFFFFFFFF
const GL_HISTOGRAM                                                    = 0x8024
const GL_PIXEL_MAP_G_TO_G                                             = 0x0C77
const GL_INTENSITY8                                                   = 0x804B
const GL_PIXEL_MAP_A_TO_A_SIZE                                        = 0x0CB9
const GL_N3F_V3F                                                      = 0x2A25
const GL_MAP2_GRID_DOMAIN                                             = 0x0DD2
const GL_DOMAIN                                                       = 0x0A02
const GL_TEXTURE_1D                                                   = 0x0DE0
const GL_POINT_SIZE                                                   = 0x0B11
const GL_VIEWPORT                                                     = 0x0BA2
const GL_RGBA                                                         = 0x1908
const GL_DRAW_PIXEL_TOKEN                                             = 0x0705
const GL_PROXY_HISTOGRAM                                              = 0x8025
const GL_CLAMP                                                        = 0x2900
const GL_TEXTURE31                                                    = 0x84DF
const GL_TEXTURE_GEN_MODE                                             = 0x2500
const GL_ONE_MINUS_CONSTANT_ALPHA                                     = 0x8004
const GL_TEXTURE3                                                     = 0x84C3
const GL_PIXEL_MAP_I_TO_R                                             = 0x0C72
const GL_COMBINE_ALPHA                                                = 0x8572
const GL_SUBTRACT                                                     = 0x84E7
const GL_RGB4                                                         = 0x804F
const GL_HISTOGRAM_LUMINANCE_SIZE                                     = 0x802C
const GL_COLOR_ARRAY_TYPE                                             = 0x8082
const GL_COMBINE_RGB                                                  = 0x8571
const GL_POST_COLOR_MATRIX_RED_BIAS                                   = 0x80B8
const GL_MAP1_TEXTURE_COORD_3                                         = 0x0D95
const GL_TEXTURE27_ARB                                                = 0x84DB
const GL_SUBPIXEL_BITS                                                = 0x0D50
const GL_UNPACK_SKIP_ROWS                                             = 0x0CF3
const GL_SOURCE0_RGB                                                  = 0x8580
const GL_TEXTURE23_ARB                                                = 0x84D7
const GL_POINTS                                                       = 0x0000
const GL_VERSION_1_1                                                  = 1
const GL_TEXTURE5                                                     = 0x84C5
const GL_ALPHA12                                                      = 0x803D
const GL_GREEN_SCALE                                                  = 0x0D18
const GL_PROXY_TEXTURE_1D                                             = 0x8063
const GL_TEXTURE_WRAP_S                                               = 0x2802
const GL_POST_COLOR_MATRIX_ALPHA_SCALE                                = 0x80B7
const GL_TEXTURE_COORD_ARRAY_POINTER                                  = 0x8092
const GL_INDEX_ARRAY                                                  = 0x8077
const GL_T                                                            = 0x2001
const GL_PROXY_TEXTURE_1D_ARRAY_EXT                                   = 0x8C19
const GL_LESS                                                         = 0x0201
const GL_MINMAX                                                       = 0x802E
const GL_INCR                                                         = 0x1E02
const GL_MAX_TEXTURE_SIZE                                             = 0x0D33
const GL_TEXTURE_ENV_MODE                                             = 0x2200
const GL_3_BYTES                                                      = 0x1408
const GL_VERSION_1_2                                                  = 1
const GL_LIGHT3                                                       = 0x4003
const GL_TEXTURE_BLUE_SIZE                                            = 0x805E
const GL_EDGE_FLAG_ARRAY                                              = 0x8079
const GL_TEXTURE_WRAP_R                                               = 0x8072
const GL_DECAL                                                        = 0x2101
const GL_ONE_MINUS_DST_ALPHA                                          = 0x0305
const GL_PACK_SKIP_PIXELS                                             = 0x0D04
const GL_TEXTURE_GREEN_SIZE                                           = 0x805D
const GL_LIGHT1                                                       = 0x4001
const GL_EXP2                                                         = 0x0801
const GL_POST_CONVOLUTION_RED_SCALE                                   = 0x801C
const GL_DEPTH                                                        = 0x1801
const GL_CULL_FACE_MODE                                               = 0x0B45
const GL_CLIP_PLANE5                                                  = 0x3005
const GL_COMPRESSED_RGB                                               = 0x84ED
const GL_ALPHA_BIAS                                                   = 0x0D1D
const GL_TEXTURE_GEN_S                                                = 0x0C60
const GL_MAP2_TEXTURE_COORD_1                                         = 0x0DB3
const GL_AND_REVERSE                                                  = 0x1502
const GL_CLEAR                                                        = 0x1500
const GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE                          = 0x80D5
const GL_TEXTURE_MAX_LOD                                              = 0x813B
const GL_MAX_CLIENT_ATTRIB_STACK_DEPTH                                = 0x0D3B
const GL_SAMPLE_ALPHA_TO_ONE                                          = 0x809F
const GL_COLOR_TABLE_GREEN_SIZE                                       = 0x80DB
const GL_FOG_DENSITY                                                  = 0x0B62
const GL_LINE_TOKEN                                                   = 0x0702
const GL_C4UB_V3F                                                     = 0x2A23
const GL_SAMPLE_BUFFERS                                               = 0x80A8
const GL_NEAREST                                                      = 0x2600
const GL_LINE_LOOP                                                    = 0x0002
const GL_CONSTANT_BORDER                                              = 0x8151
const GL_COMPRESSED_ALPHA                                             = 0x84E9
const GL_ALPHA_TEST                                                   = 0x0BC0
const GL_LIGHT6                                                       = 0x4006
const GL_RED_BITS                                                     = 0x0D52
const GL_PREVIOUS                                                     = 0x8578
const GL_COMPRESSED_LUMINANCE                                         = 0x84EA
const GL_BITMAP_TOKEN                                                 = 0x0704
const GL_UNSIGNED_SHORT_4_4_4_4_REV                                   = 0x8365
const GL_TEXTURE4                                                     = 0x84C4
const GL_ACCUM_GREEN_BITS                                             = 0x0D59
const GL_POINT_SIZE_RANGE                                             = 0x0B12
const GL_UNSIGNED_BYTE_3_3_2                                          = 0x8032
const GL_PIXEL_MAP_A_TO_A                                             = 0x0C79
const GL_TEXTURE_COMPONENTS                                           = 0x1003
const GL_INVALID_VALUE                                                = 0x0501
const GL_POST_CONVOLUTION_GREEN_SCALE                                 = 0x801D
const GL_ACCUM                                                        = 0x0100
const GL_RGB_SCALE                                                    = 0x8573
const GL_PIXEL_MAP_S_TO_S_SIZE                                        = 0x0CB1
const GL_VERTEX_ARRAY_TYPE                                            = 0x807B
const GL_SINGLE_COLOR                                                 = 0x81F9
const GL_MAX                                                          = 0x8008
const GL_LUMINANCE                                                    = 0x1909
const GL_ACTIVE_TEXTURE_ARB                                           = 0x84E0
const GL_REPLACE                                                      = 0x1E01
const GL_MATRIX_MODE                                                  = 0x0BA0
const GL_DEPTH_COMPONENT                                              = 0x1902
const GL_OBJECT_PLANE                                                 = 0x2501
const GL_RGBA8                                                        = 0x8058
const GL_TEXTURE_GEN_Q                                                = 0x0C63
const GL_COLOR_TABLE_RED_SIZE                                         = 0x80DA
const GL_TEXTURE_STACK_DEPTH                                          = 0x0BA5
const GL_TEXTURE16_ARB                                                = 0x84D0
const GL_STEREO                                                       = 0x0C33
const GL_LIGHT2                                                       = 0x4002
const GL_SCISSOR_TEST                                                 = 0x0C11
const GL_TEXTURE_COMPRESSED_IMAGE_SIZE                                = 0x86A0
const GL_AUTO_NORMAL                                                  = 0x0D80
const GL_TEXTURE_1D_ARRAY_EXT                                         = 0x8C18
const GL_TEXTURE22                                                    = 0x84D6
const GL_CLAMP_TO_EDGE                                                = 0x812F
const GL_ZOOM_X                                                       = 0x0D16
const GL_ACTIVE_TEXTURE                                               = 0x84E0
const GL_MAX_EVAL_ORDER                                               = 0x0D30
const GL_TEXTURE_DEPTH                                                = 0x8071
const GL_FRONT_RIGHT                                                  = 0x0401
const GL_DEPTH_RANGE                                                  = 0x0B70
const GL_NORMAL_ARRAY                                                 = 0x8075
const GL_LINE_RESET_TOKEN                                             = 0x0707
const GL_PROXY_TEXTURE_2D_ARRAY_EXT                                   = 0x8C1B
const GL_ONE                                                          = 0x1
const GL_STENCIL_PASS_DEPTH_PASS                                      = 0x0B96
const GL_POST_COLOR_MATRIX_RED_SCALE                                  = 0x80B4
const GL_NO_ERROR                                                     = 0x0
const GL_SMOOTH_POINT_SIZE_RANGE                                      = 0x0B12
const GL_AUX_BUFFERS                                                  = 0x0C00
const GL_MAX_TEXTURE_STACK_DEPTH                                      = 0x0D39
const GL_LEQUAL                                                       = 0x0203
const GL_NONE                                                         = 0x0
const GL_PIXEL_MAP_B_TO_B                                             = 0x0C78
const GL_TEXTURE19_ARB                                                = 0x84D3
const GL_OR_INVERTED                                                  = 0x150D
const GL_PACK_SKIP_ROWS                                               = 0x0D03
const GL_NUM_COMPRESSED_TEXTURE_FORMATS                               = 0x86A2
const GL_RESCALE_NORMAL                                               = 0x803A
const GL_BACK_LEFT                                                    = 0x0402
const GL_MAP2_TEXTURE_COORD_4                                         = 0x0DB6
const GL_COLOR                                                        = 0x1800
const GL_CONSTANT                                                     = 0x8576
const GL_UNSIGNED_SHORT                                               = 0x1403
const GL_MODULATE                                                     = 0x2100
const GL_UNSIGNED_INT                                                 = 0x1405
const GL_LUMINANCE4_ALPHA4                                            = 0x8043
const GL_POSITION                                                     = 0x1203
const GL_COMPRESSED_INTENSITY                                         = 0x84EC
const GL_COLOR_CLEAR_VALUE                                            = 0x0C22
const GL_R3_G3_B2                                                     = 0x2A10
const GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER_EXT                     = 0x8CD4
const GL_PIXEL_MAP_G_TO_G_SIZE                                        = 0x0CB7
const GL_BACK_RIGHT                                                   = 0x0403
const GL_LUMINANCE12_ALPHA4                                           = 0x8046
const GL_FRONT_AND_BACK                                               = 0x0408
const GL_RENDERER                                                     = 0x1F01
const GL_ATTRIB_STACK_DEPTH                                           = 0x0BB0
const GL_LINE_STIPPLE_REPEAT                                          = 0x0B26
const GL_POLYGON_SMOOTH_HINT                                          = 0x0C53
const GL_LUMINANCE4                                                   = 0x803F
const GL_SMOOTH_POINT_SIZE_GRANULARITY                                = 0x0B13
const GL_OR_REVERSE                                                   = 0x150B
const GL_MAP2_TEXTURE_COORD_2                                         = 0x0DB4
const GL_FOG_MODE                                                     = 0x0B65
const GL_FRAGMENT_PROGRAM_POSITION_MESA                               = 0x8bb0
const GL_LUMINANCE16                                                  = 0x8042
const GL_OPERAND0_RGB                                                 = 0x8590
const GL_STENCIL_BUFFER_BIT                                           = 0x00000400
const GL_MAX_PROJECTION_STACK_DEPTH                                   = 0x0D38
const GL_POLYGON_SMOOTH                                               = 0x0B41
const GL_EDGE_FLAG_ARRAY_POINTER                                      = 0x8093
const GL_TEXTURE23                                                    = 0x84D7
const GL_INDEX_LOGIC_OP                                               = 0x0BF1
const GL_DOT3_RGBA                                                    = 0x86AF
const GL_NORMAL_ARRAY_POINTER                                         = 0x808F
const GL_TEXTURE11                                                    = 0x84CB
const GL_DEPTH_BITS                                                   = 0x0D56
const GL_BLUE_SCALE                                                   = 0x0D1A
const GL_POST_CONVOLUTION_GREEN_BIAS                                  = 0x8021
const GL_COLOR_MATRIX_STACK_DEPTH                                     = 0x80B2
const GL_LIGHT_MODEL_TWO_SIDE                                         = 0x0B52
const GL_READ_BUFFER                                                  = 0x0C02
const GL_NORMALIZE                                                    = 0x0BA1
const GL_CURRENT_COLOR                                                = 0x0B00
const GL_FASTEST                                                      = 0x1101
const GL_INDEX_ARRAY_POINTER                                          = 0x8091
const GL_MULTISAMPLE_BIT                                              = 0x20000000
const GL_ALPHA_BLEND_EQUATION_ATI                                     = 0x883D
const GL_MAP1_TEXTURE_COORD_1                                         = 0x0D93
const GL_C4UB_V2F                                                     = 0x2A22
const GL_AUX2                                                         = 0x040B
const GL_CURRENT_RASTER_POSITION_VALID                                = 0x0B08
const GL_COLOR_MATERIAL                                               = 0x0B57
const GL_NAME_STACK_DEPTH                                             = 0x0D70
const GL_OES_EGL_image                                                = 1
const GL_TEXTURE0_ARB                                                 = 0x84C0
const GL_COLOR_TABLE_ALPHA_SIZE                                       = 0x80DD
const GL_TEXTURE6_ARB                                                 = 0x84C6
const GL_AND_INVERTED                                                 = 0x1504
const GL_LIGHT7                                                       = 0x4007
const GL_NICEST                                                       = 0x1102
const GL_PIXEL_MAP_I_TO_G                                             = 0x0C73
const GL_KEEP                                                         = 0x1E00
const GL_SOURCE0_ALPHA                                                = 0x8588
const GL_ZERO                                                         = 0x0
const GL_ACCUM_CLEAR_VALUE                                            = 0x0B80
const GL_INDEX_ARRAY_STRIDE                                           = 0x8086
const GL_AMBIENT_AND_DIFFUSE                                          = 0x1602
const GL_DRAW_BUFFER                                                  = 0x0C01
const GL_BYTE                                                         = 0x1400
const GL_GREATER                                                      = 0x0204
const GL_COPY                                                         = 0x1503
const GL_ADD_SIGNED                                                   = 0x8574
const GL_HISTOGRAM_FORMAT                                             = 0x8027
const GL_DONT_CARE                                                    = 0x1100
const GL_MAX_ELEMENTS_VERTICES                                        = 0x80E8
const GL_DST_ALPHA                                                    = 0x0304
const GL_MAX_LIST_NESTING                                             = 0x0B31
const GL_LIGHTING                                                     = 0x0B50
const GL_COLOR_MATERIAL_PARAMETER                                     = 0x0B56
const GL_AND                                                          = 0x1501
const GL_SPOT_DIRECTION                                               = 0x1204
const GL_CONVOLUTION_FILTER_SCALE                                     = 0x8014
const GL_PIXEL_MAP_I_TO_B_SIZE                                        = 0x0CB4
const GL_CONVOLUTION_1D                                               = 0x8010
const GL_COPY_PIXEL_TOKEN                                             = 0x0706
const GL_TRIANGLE_FAN                                                 = 0x0006
const GL_PROXY_POST_CONVOLUTION_COLOR_TABLE                           = 0x80D4
const GL_UNSIGNED_BYTE_2_3_3_REV                                      = 0x8362
const GL_GREEN_BIAS                                                   = 0x0D19
const GL_RGB12                                                        = 0x8053
const GL_COLOR_TABLE_FORMAT                                           = 0x80D8
const GL_POINT_SIZE_GRANULARITY                                       = 0x0B13
const GL_FEEDBACK_BUFFER_SIZE                                         = 0x0DF1
const GL_TRUE                                                         = 0x1
const GL_PACK_SKIP_IMAGES                                             = 0x806B
const GL_INTERPOLATE                                                  = 0x8575
const GL_RGB8                                                         = 0x8051
const GL_COMPRESSED_LUMINANCE_ALPHA                                   = 0x84EB
const GL_T2F_C3F_V3F                                                  = 0x2A2A
const GL_TEXTURE_CUBE_MAP_POSITIVE_Z                                  = 0x8519
const GL_T2F_N3F_V3F                                                  = 0x2A2B
const GL_QUADRATIC_ATTENUATION                                        = 0x1209
const GL_RENDER_MODE                                                  = 0x0C40
const GL_UNPACK_ROW_LENGTH                                            = 0x0CF2
const GL_LINE                                                         = 0x1B01
const GL_LINE_SMOOTH_HINT                                             = 0x0C52
const GL_3D_COLOR_TEXTURE                                             = 0x0603
const GL_FUNC_ADD                                                     = 0x8006
const GL_MAP1_COLOR_4                                                 = 0x0D90
const GL_ALPHA_SCALE                                                  = 0x0D1C
const GL_COMPRESSED_TEXTURE_FORMATS                                   = 0x86A3
const GL_CONSTANT_ALPHA                                               = 0x8003
const GL_LINE_STRIP                                                   = 0x0003
const GL_VERSION                                                      = 0x1F02
const GL_MAX_COLOR_MATRIX_STACK_DEPTH                                 = 0x80B3
const GL_CLIENT_VERTEX_ARRAY_BIT                                      = 0x00000002
const GL_PROJECTION_STACK_DEPTH                                       = 0x0BA4
const GL_MIN                                                          = 0x8007
const GL_TEXTURE25                                                    = 0x84D9
const GL_SAMPLE_COVERAGE_VALUE                                        = 0x80AA
const GL_CURRENT_BIT                                                  = 0x00000001
const GL_MAX_ARRAY_TEXTURE_LAYERS_EXT                                 = 0x88FF
const GL_SHORT                                                        = 0x1402
const GL_POINT_BIT                                                    = 0x00000002
const GL_POLYGON_BIT                                                  = 0x00000008
const GL_BLUE_BIAS                                                    = 0x0D1B
const GL_TEXTURE20                                                    = 0x84D4
const GL_SPECULAR                                                     = 0x1202
const GL_BLEND_COLOR                                                  = 0x8005
const GL_RENDER                                                       = 0x1C00
const GL_MAX_CUBE_MAP_TEXTURE_SIZE                                    = 0x851C
const GL_POINT_SMOOTH_HINT                                            = 0x0C51
const GL_DOT3_RGB                                                     = 0x86AE
const GL_MAX_PIXEL_MAP_TABLE                                          = 0x0D34
const GL_CLIP_PLANE0                                                  = 0x3000
const GL_CURRENT_RASTER_TEXTURE_COORDS                                = 0x0B06
const GL_COMPILE_AND_EXECUTE                                          = 0x1301
const GL_BLEND_SRC                                                    = 0x0BE1
const GL_NEAREST_MIPMAP_LINEAR                                        = 0x2702
const GL_COLOR_TABLE_LUMINANCE_SIZE                                   = 0x80DE
const GL_LUMINANCE16_ALPHA16                                          = 0x8048
const GL_SPOT_EXPONENT                                                = 0x1205
const GL_SHADE_MODEL                                                  = 0x0B54
const GL_BLEND_DST                                                    = 0x0BE0
const GL_TEXTURE_COMPRESSION_HINT                                     = 0x84EF
const GL_TRANSPOSE_TEXTURE_MATRIX                                     = 0x84E5
const GL_CLIP_PLANE1                                                  = 0x3001
const GL_FEEDBACK_BUFFER_POINTER                                      = 0x0DF0
const GL_VERTEX_ARRAY_STRIDE                                          = 0x807C
const GL_TEXTURE31_ARB                                                = 0x84DF
const GL_2_BYTES                                                      = 0x1407
const GL_MAX_CLIP_PLANES                                              = 0x0D32
const GL_CONVOLUTION_BORDER_MODE                                      = 0x8013
const GL_DEPTH_WRITEMASK                                              = 0x0B72
const GL_LINEAR                                                       = 0x2601
const GL_RGB10_A2                                                     = 0x8059
const GL_INDEX_WRITEMASK                                              = 0x0C21
const GL_SOURCE2_RGB                                                  = 0x8582
const GL_COMBINE                                                      = 0x8570
const GL_TEXTURE_ENV_COLOR                                            = 0x2201
const GL_TEXTURE8_ARB                                                 = 0x84C8
const GL_EXP                                                          = 0x0800
const GL_DST_COLOR                                                    = 0x0306
const GL_TEXTURE_WIDTH                                                = 0x1000
const GL_UNSIGNED_INT_2_10_10_10_REV                                  = 0x8368
const GL_V2F                                                          = 0x2A20
const GL_NEVER                                                        = 0x0200
const GL_UNPACK_IMAGE_HEIGHT                                          = 0x806E
const GL_PROXY_TEXTURE_2D                                             = 0x8064
const GL_TEXTURE0                                                     = 0x84C0
const GL_ALPHA4                                                       = 0x803B
const GL_MAP2_COLOR_4                                                 = 0x0DB0
const GL_T2F_V3F                                                      = 0x2A27
const GL_FEEDBACK                                                     = 0x1C01
const GL_MESA_texture_array                                           = 1
const GL_MAP2_NORMAL                                                  = 0x0DB2
const GL_VERTEX_PROGRAM_CALLBACK_DATA_MESA                            = 0x8bb7
const GL_BACK                                                         = 0x0405
const GL_SMOOTH                                                       = 0x1D01
const GL_BGR                                                          = 0x80E0
const GL_STENCIL                                                      = 0x1802
const GL_TEXTURE_3D                                                   = 0x806F
const GL_UNPACK_SWAP_BYTES                                            = 0x0CF0
const GL_ALWAYS                                                       = 0x0207
const GL_LINEAR_ATTENUATION                                           = 0x1208
const GL_PIXEL_MAP_R_TO_R                                             = 0x0C76
const GL_UNSIGNED_INT_8_24_REV_MESA                                   = 0x8752
const GL_AUX0                                                         = 0x0409
const GL_ZOOM_Y                                                       = 0x0D17
const GL_PROXY_COLOR_TABLE                                            = 0x80D3
const GL_CURRENT_NORMAL                                               = 0x0B02
const GL_SELECT                                                       = 0x1C02
const GL_MAX_TEXTURE_UNITS                                            = 0x84E2
const GL_TEXTURE_BINDING_2D_ARRAY_EXT                                 = 0x8C1D
const GL_CONVOLUTION_HEIGHT                                           = 0x8019
const GL_LIST_INDEX                                                   = 0x0B33
const GL_SHININESS                                                    = 0x1601
const GL_DECR                                                         = 0x1E03
const GL_AUX3                                                         = 0x040C
const GL_ALPHA_TEST_FUNC                                              = 0x0BC1
const GL_PIXEL_MAP_I_TO_G_SIZE                                        = 0x0CB3
const GL_STENCIL_VALUE_MASK                                           = 0x0B93
const GL_MAP2_TEXTURE_COORD_3                                         = 0x0DB5
const GL_BLEND                                                        = 0x0BE2
const GL_GREEN                                                        = 0x1904
const GL_MAX_TEXTURE_UNITS_ARB                                        = 0x84E2
const GL_DEBUG_PRINT_MESA                                             = 0x875A
const GL_POST_CONVOLUTION_ALPHA_SCALE                                 = 0x801F
const GL_RGB                                                          = 0x1907
const GL_COLOR_MATRIX                                                 = 0x80B1
const GL_NORMAL_MAP                                                   = 0x8511
const GL_TEXTURE_MIN_FILTER                                           = 0x2801
const GL_UNSIGNED_INT_10_10_10_2                                      = 0x8036
const GL_HISTOGRAM_RED_SIZE                                           = 0x8028
const GL_CULL_FACE                                                    = 0x0B44
const GL_STENCIL_FAIL                                                 = 0x0B94
const GL_CONVOLUTION_WIDTH                                            = 0x8018
const GL_TEXTURE_LUMINANCE_SIZE                                       = 0x8060
const GL_COLOR_ARRAY_POINTER                                          = 0x8090
const GL_TEXTURE_BINDING_2D                                           = 0x8069
const GL_ALPHA                                                        = 0x1906
const GL_CONVOLUTION_FILTER_BIAS                                      = 0x8015
const GL_TEXTURE_WRAP_T                                               = 0x2803
const GL_ALL_ATTRIB_BITS                                              = 0x000FFFFF
const GL_UNSIGNED_INT_8_8_8_8                                         = 0x8035
const GL_TEXTURE29                                                    = 0x84DD
const GL_Q                                                            = 0x2003
const GL_2D                                                           = 0x0600
const GL_INDEX_BITS                                                   = 0x0D51
const GL_SPOT_CUTOFF                                                  = 0x1206
const GL_PACK_LSB_FIRST                                               = 0x0D01
const GL_STENCIL_INDEX                                                = 0x1901
const GL_MODELVIEW                                                    = 0x1700
const GL_POLYGON_OFFSET_UNITS                                         = 0x2A00
const GL_TEXTURE9                                                     = 0x84C9
const GL_V3F                                                          = 0x2A21
const GL_FOG_COLOR                                                    = 0x0B66
const GL_HISTOGRAM_SINK                                               = 0x802D
const GL_MAP_COLOR                                                    = 0x0D10
const GL_NORMAL_ARRAY_STRIDE                                          = 0x807F
const GL_TEXTURE_COORD_ARRAY_SIZE                                     = 0x8088
const GL_STENCIL_REF                                                  = 0x0B97
const GL_CLIENT_ALL_ATTRIB_BITS                                       = 0xFFFFFFFF
const GL_DEPTH_SCALE                                                  = 0x0D1E
const GL_VIEWPORT_BIT                                                 = 0x00000800
const GL_TEXTURE7_ARB                                                 = 0x84C7
const GL_UNSIGNED_SHORT_1_5_5_5_REV                                   = 0x8366
const GL_EMISSION                                                     = 0x1600
const GL_CURRENT_RASTER_COLOR                                         = 0x0B04
const GL_TEXTURE_RESIDENT                                             = 0x8067
const GL_TEXTURE17                                                    = 0x84D1
const GL_TEXTURE16                                                    = 0x84D0
const GL_3D                                                           = 0x0601
const GL_DITHER                                                       = 0x0BD0
const GL_MAP1_TEXTURE_COORD_2                                         = 0x0D94
const GL_S                                                            = 0x2000
const GL_TEXTURE17_ARB                                                = 0x84D1
const GL_NOTEQUAL                                                     = 0x0205
const GL_TEXTURE_CUBE_MAP_NEGATIVE_Z                                  = 0x851A
const GL_NOR                                                          = 0x1508
const GL_LINEAR_MIPMAP_NEAREST                                        = 0x2701
const GL_T4F_C4F_N3F_V4F                                              = 0x2A2D
const GL_RED_BIAS                                                     = 0x0D15
const GL_OPERAND2_ALPHA                                               = 0x859A
const GL_SRC_COLOR                                                    = 0x0300
const GL_POLYGON_OFFSET_LINE                                          = 0x2A02
const GL_TEXTURE10_ARB                                                = 0x84CA
const GL_POLYGON_STIPPLE_BIT                                          = 0x00000010
const GL_POST_COLOR_MATRIX_GREEN_BIAS                                 = 0x80B9
const GL_PROJECTION_MATRIX                                            = 0x0BA7
const GL_MULTISAMPLE                                                  = 0x809D
const GL_COLOR_INDEXES                                                = 0x1603
const GL_INVALID_ENUM                                                 = 0x0500
const GL_NOOP                                                         = 0x1505
const GL_INDEX_SHIFT                                                  = 0x0D12
const GL_INDEX_ARRAY_TYPE                                             = 0x8085
const GL_TEXTURE18_ARB                                                = 0x84D2
const GL_SAMPLES                                                      = 0x80A9
const GL_TEXTURE14                                                    = 0x84CE
const GL_TRANSPOSE_COLOR_MATRIX                                       = 0x84E6
const GL_TEXTURE_COMPRESSED                                           = 0x86A1
const GL_POINT                                                        = 0x1B00
const GL_ARB_multitexture                                             = 1
const GL_UNSIGNED_INT_24_8_MESA                                       = 0x8751
const GL_SAMPLE_ALPHA_TO_COVERAGE                                     = 0x809E
const GL_TEXTURE20_ARB                                                = 0x84D4
const GL_TEXTURE_COORD_ARRAY                                          = 0x8078
const GL_TEXTURE29_ARB                                                = 0x84DD
const GL_FOG                                                          = 0x0B60
const GL_CLIENT_PIXEL_STORE_BIT                                       = 0x00000001
const GL_FUNC_SUBTRACT                                                = 0x800A
const GL_MAX_CONVOLUTION_WIDTH                                        = 0x801A
const GL_SAMPLE_COVERAGE                                              = 0x80A0
const GL_ONE_MINUS_DST_COLOR                                          = 0x0307
const GL_SELECTION_BUFFER_POINTER                                     = 0x0DF3
const GL_UNPACK_SKIP_IMAGES                                           = 0x806D
const GL_MAX_MODELVIEW_STACK_DEPTH                                    = 0x0D36
const GL_STACK_UNDERFLOW                                              = 0x0504
const GL_LUMINANCE8                                                   = 0x8040
const GL_INVERT                                                       = 0x150A
const GL_LIGHT5                                                       = 0x4005
const GL_SCISSOR_BIT                                                  = 0x00080000
const GL_CLIENT_ATTRIB_STACK_DEPTH                                    = 0x0BB1
const GL_CURRENT_RASTER_POSITION                                      = 0x0B07
const GL_TEXTURE2_ARB                                                 = 0x84C2
const GL_STENCIL_CLEAR_VALUE                                          = 0x0B91
const GL_REPEAT                                                       = 0x2901
const GL_UNSIGNED_SHORT_5_6_5                                         = 0x8363
const GL_FILL                                                         = 0x1B02
const GL_ONE_MINUS_SRC_COLOR                                          = 0x0301
const GL_PACK_ALIGNMENT                                               = 0x0D05
const GL_TEXTURE2                                                     = 0x84C2
const GL_TEXTURE_ENV                                                  = 0x2300
const GL_POST_COLOR_MATRIX_BLUE_SCALE                                 = 0x80B6
const GL_PIXEL_MODE_BIT                                               = 0x00000020
const GL_GEQUAL                                                       = 0x0206
const GL_VERTEX_PROGRAM_CALLBACK_FUNC_MESA                            = 0x8bb6
const GL_RED                                                          = 0x1903
const GL_LUMINANCE8_ALPHA8                                            = 0x8045
const GL_PRIMARY_COLOR                                                = 0x8577
const GL_CLAMP_TO_BORDER                                              = 0x812D
const GL_POST_CONVOLUTION_COLOR_TABLE                                 = 0x80D1
const GL_COEFF                                                        = 0x0A00
const GL_TEXTURE7                                                     = 0x84C7
const GL_TEXTURE6                                                     = 0x84C6
const GL_TEXTURE21_ARB                                                = 0x84D5
const GL_MESA_shader_debug                                            = 1
const GL_CW                                                           = 0x0900
const GL_TEXTURE_CUBE_MAP                                             = 0x8513
const GL_ALPHA_TEST_REF                                               = 0x0BC2
const GL_FOG_BIT                                                      = 0x00000080
const GL_TEXTURE_MAX_LEVEL                                            = 0x813D
const GL_TEXTURE_ALPHA_SIZE                                           = 0x805F
const GL_ALPHA_BITS                                                   = 0x0D55
const GL_OR                                                           = 0x1507
const GL_T2F_C4F_N3F_V3F                                              = 0x2A2C
const GL_TEXTURE19                                                    = 0x84D3
const GL_4D_COLOR_TEXTURE                                             = 0x0604
const GL_CONVOLUTION_FORMAT                                           = 0x8017
const GL_MAX_LIGHTS                                                   = 0x0D31
const GL_MAX_VIEWPORT_DIMS                                            = 0x0D3A
const GL_POST_CONVOLUTION_ALPHA_BIAS                                  = 0x8023
const GL_CLIP_PLANE2                                                  = 0x3002
const GL_T4F_V4F                                                      = 0x2A28
const GL_UNSIGNED_SHORT_1_15_REV_MESA                                 = 0x8754
const GL_MAP1_INDEX                                                   = 0x0D91
const GL_TEXTURE_COORD_ARRAY_STRIDE                                   = 0x808A
const GL_LINEAR_MIPMAP_LINEAR                                         = 0x2703
const GL_COMPRESSED_RGBA                                              = 0x84EE
const GL_MAX_ELEMENTS_INDICES                                         = 0x80E9
const GL_TEXTURE14_ARB                                                = 0x84CE
const GL_TEXTURE21                                                    = 0x84D5
const GL_PACK_IMAGE_HEIGHT                                            = 0x806C
const GL_MAP1_VERTEX_4                                                = 0x0D98
const GL_SRC_ALPHA_SATURATE                                           = 0x0308
const GL_PROJECTION                                                   = 0x1701
const GL_PROXY_TEXTURE_3D                                             = 0x8070
const GL_C4F_N3F_V3F                                                  = 0x2A26
const GL_DEBUG_ASSERT_MESA                                            = 0x875B
const GL_INDEX_MODE                                                   = 0x0C30
const GL_VERTEX_ARRAY_SIZE                                            = 0x807A
const GL_MAP_STENCIL                                                  = 0x0D11
const GL_OPERAND1_ALPHA                                               = 0x8599
const GL_POST_CONVOLUTION_BLUE_SCALE                                  = 0x801E
const GL_POST_COLOR_MATRIX_BLUE_BIAS                                  = 0x80BA
const GL_REDUCE                                                       = 0x8016
const GL_PIXEL_MAP_B_TO_B_SIZE                                        = 0x0CB8
const GL_TEXTURE27                                                    = 0x84DB
const GL_CONSTANT_COLOR                                               = 0x8001
const GL_TEXTURE22_ARB                                                = 0x84D6
const GL_VENDOR                                                       = 0x1F00
const GL_DEPTH_TEST                                                   = 0x0B71
const GL_TEXTURE_RED_SIZE                                             = 0x805C
const GL_TEXTURE_BORDER                                               = 0x1005
const GL_TEXTURE_COORD_ARRAY_TYPE                                     = 0x8089
const GL_UNSIGNED_BYTE                                                = 0x1401
const GL_TRANSPOSE_MODELVIEW_MATRIX                                   = 0x84E3
const GL_TEXTURE_BIT                                                  = 0x00040000
const GL_ATI_blend_equation_separate                                  = 1
const GL_RGB5_A1                                                      = 0x8057
const GL_AUX1                                                         = 0x040A
const GL_BLUE_BITS                                                    = 0x0D54
const GL_LOAD                                                         = 0x0101
const GL_MESA_program_debug                                           = 1
const GL_UNSIGNED_SHORT_15_1_MESA                                     = 0x8753
const GL_COLOR_LOGIC_OP                                               = 0x0BF2
const GL_POST_COLOR_MATRIX_COLOR_TABLE                                = 0x80D2
const GL_HINT_BIT                                                     = 0x00008000
const GL_TRANSPOSE_PROJECTION_MATRIX                                  = 0x84E4
const GL_FLOAT                                                        = 0x1406
const GL_SPHERE_MAP                                                   = 0x2402
const GL_COLOR_INDEX                                                  = 0x1900
const GL_INTENSITY16                                                  = 0x804D
const GL_SOURCE1_RGB                                                  = 0x8581
const GL_SCISSOR_BOX                                                  = 0x0C10
const GL_MAX_3D_TEXTURE_SIZE                                          = 0x8073
const GL_EDGE_FLAG_ARRAY_STRIDE                                       = 0x808C
const GL_PIXEL_MAP_I_TO_R_SIZE                                        = 0x0CB2
const GL_LEFT                                                         = 0x0406
const GL_MAX_CONVOLUTION_HEIGHT                                       = 0x801B
const GL_PIXEL_MAP_I_TO_A_SIZE                                        = 0x0CB5
const GL_CLIP_PLANE4                                                  = 0x3004
const GL_TEXTURE_MAG_FILTER                                           = 0x2800
const GL_UNPACK_SKIP_PIXELS                                           = 0x0CF4
const GL_COLOR_BUFFER_BIT                                             = 0x00004000
const GL_RGBA2                                                        = 0x8055
const GL_MAX_ATTRIB_STACK_DEPTH                                       = 0x0D35
const GL_SMOOTH_LINE_WIDTH_RANGE                                      = 0x0B22
const GL_SOURCE2_ALPHA                                                = 0x858A
const GL_SRC_ALPHA                                                    = 0x0302
const GL_TABLE_TOO_LARGE                                              = 0x8031
const GL_BLEND_EQUATION                                               = 0x8009
const GL_REFLECTION_MAP                                               = 0x8512
const GL_FOG_START                                                    = 0x0B63
const GL_HISTOGRAM_GREEN_SIZE                                         = 0x8029
const GL_VERTEX_PROGRAM_POSITION_MESA                                 = 0x8bb4
const GL_LUMINANCE12                                                  = 0x8041
const GL_UNSIGNED_SHORT_5_5_5_1                                       = 0x8034
const GL_MULT                                                         = 0x0103
const GL_GREEN_BITS                                                   = 0x0D53
const GL_LIGHT_MODEL_COLOR_CONTROL                                    = 0x81F8
const GL_CURRENT_RASTER_DISTANCE                                      = 0x0B09
const GL_BGRA                                                         = 0x80E1
const GL_STENCIL_WRITEMASK                                            = 0x0B98
const GL_EYE_PLANE                                                    = 0x2502
const GL_LINE_WIDTH_GRANULARITY                                       = 0x0B23
const GL_STENCIL_FUNC                                                 = 0x0B92
const GL_3D_COLOR                                                     = 0x0602
const GL_DEPTH_CLEAR_VALUE                                            = 0x0B73
const GL_BLUE                                                         = 0x1905
const GL_VERTEX_ARRAY                                                 = 0x8074
const GL_POLYGON_OFFSET_FACTOR                                        = 0x8038
const GL_TEXTURE10                                                    = 0x84CA
const GL_RIGHT                                                        = 0x0407
const GL_MAP1_NORMAL                                                  = 0x0D92
const GL_TEXTURE28                                                    = 0x84DC
const GL_ONE_MINUS_CONSTANT_COLOR                                     = 0x8002
const GL_FRONT_FACE                                                   = 0x0B46
const GL_RGBA12                                                       = 0x805A
const GL_VERTEX_PROGRAM_CALLBACK_MESA                                 = 0x8bb5
const GL_COLOR_TABLE_BLUE_SIZE                                        = 0x80DC
const GL_INVALID_OPERATION                                            = 0x0502
const GL_TEXTURE_GEN_T                                                = 0x0C61
const GL_TEXTURE15_ARB                                                = 0x84CF
const GL_POLYGON_MODE                                                 = 0x0B40
const GL_MAP1_TEXTURE_COORD_4                                         = 0x0D96
const GL_TEXTURE_BINDING_1D_ARRAY_EXT                                 = 0x8C1C
const GL_LOGIC_OP_MODE                                                = 0x0BF0
const GL_LINE_WIDTH                                                   = 0x0B21
const GL_INTENSITY4                                                   = 0x804A
const GL_SOURCE1_ALPHA                                                = 0x8589
const GL_POLYGON                                                      = 0x0009
const GL_PASS_THROUGH_TOKEN                                           = 0x0700
const GL_LINE_BIT                                                     = 0x00000004
const GL_LIGHTING_BIT                                                 = 0x00000040
const GL_FRAGMENT_PROGRAM_CALLBACK_MESA                               = 0x8bb1
const GL_POLYGON_STIPPLE                                              = 0x0B42
const GL_ALPHA8                                                       = 0x803C
const GL_FRONT                                                        = 0x0404
const GL_TEXTURE24                                                    = 0x84D8
const GL_TEXTURE11_ARB                                                = 0x84CB
const GL_TEXTURE24_ARB                                                = 0x84D8
const GL_MAX_NAME_STACK_DEPTH                                         = 0x0D37
const GL_COLOR_ARRAY                                                  = 0x8076
const GL_CLIENT_ACTIVE_TEXTURE_ARB                                    = 0x84E1
const GL_FRONT_LEFT                                                   = 0x0400
const GL_TEXTURE_CUBE_MAP_POSITIVE_Y                                  = 0x8517
const GL_CLIENT_ACTIVE_TEXTURE                                        = 0x84E1
const GL_FEEDBACK_BUFFER_TYPE                                         = 0x0DF2
const GL_MINMAX_SINK                                                  = 0x8030
const GL_CONSTANT_ATTENUATION                                         = 0x1207
const GL_LUMINANCE_ALPHA                                              = 0x190A
const GL_FLAT                                                         = 0x1D00
const GL_CONVOLUTION_2D                                               = 0x8011
const GL_TEXTURE28_ARB                                                = 0x84DC
const GL_COPY_INVERTED                                                = 0x150C
const GL_LIST_MODE                                                    = 0x0B30
const GL_FOG_END                                                      = 0x0B64
const GL_NORMAL_ARRAY_TYPE                                            = 0x807E
const GL_MODELVIEW_STACK_DEPTH                                        = 0x0BA3
const GL_TEXTURE25_ARB                                                = 0x84D9
const GL_NEAREST_MIPMAP_NEAREST                                       = 0x2700
const GL_DOUBLEBUFFER                                                 = 0x0C32
const GL_TRIANGLE_STRIP                                               = 0x0005
const GL_MODELVIEW_MATRIX                                             = 0x0BA6
const GL_TEXTURE13_ARB                                                = 0x84CD
const GL_ALIASED_POINT_SIZE_RANGE                                     = 0x846D
const GL_DEPTH_STENCIL_MESA                                           = 0x8750
const GL_COLOR_TABLE                                                  = 0x80D0
const GL_TEXTURE13                                                    = 0x84CD
const GL_TEXTURE_BASE_LEVEL                                           = 0x813C
const GL_TEXTURE3_ARB                                                 = 0x84C3
const GL_TEXTURE_MIN_LOD                                              = 0x813A
const GL_INDEX_OFFSET                                                 = 0x0D13
const GL_HISTOGRAM_WIDTH                                              = 0x8026
const GL_SAMPLE_COVERAGE_INVERT                                       = 0x80AB
const GL_FOG_INDEX                                                    = 0x0B61
const GL_TEXTURE_BINDING_CUBE_MAP                                     = 0x8514
const GL_VERTEX_ARRAY_POINTER                                         = 0x808E
const GL_TRIANGLES                                                    = 0x0004
const GL_INT                                                          = 0x1404
const GL_ALIASED_LINE_WIDTH_RANGE                                     = 0x846E
const GL_NAND                                                         = 0x150E
const GL_SEPARATE_SPECULAR_COLOR                                      = 0x81FA
const GL_SELECTION_BUFFER_SIZE                                        = 0x0DF4
const GL_RGB10                                                        = 0x8052
const GL_ACCUM_BLUE_BITS                                              = 0x0D5A
const GL_TEXTURE30                                                    = 0x84DE
const GL_FRAGMENT_PROGRAM_CALLBACK_FUNC_MESA                          = 0x8bb2
const GL_POST_COLOR_MATRIX_GREEN_SCALE                                = 0x80B5
const GL_TEXTURE_BORDER_COLOR                                         = 0x1004
const GL_ALPHA16                                                      = 0x803E
const GL_LINE_STIPPLE_PATTERN                                         = 0x0B25
const GL_ACCUM_ALPHA_BITS                                             = 0x0D5B
const GL_CLIP_PLANE3                                                  = 0x3003
const GL_TEXTURE_INTERNAL_FORMAT                                      = 0x1003
const GL_EDGE_FLAG                                                    = 0x0B43
const GL_POLYGON_TOKEN                                                = 0x0703
const GL_DEPTH_BIAS                                                   = 0x0D1F
const GL_FALSE                                                        = 0x0
const GL_PROXY_TEXTURE_CUBE_MAP                                       = 0x851B
const GL_TEXTURE4_ARB                                                 = 0x84C4
const GL_UNSIGNED_INT_8_8_8_8_REV                                     = 0x8367
const GL_STENCIL_TEST                                                 = 0x0B90
const GL_LINE_STIPPLE                                                 = 0x0B24
const GL_OPERAND2_RGB                                                 = 0x8592
const GL_PERSPECTIVE_CORRECTION_HINT                                  = 0x0C50
const GL_MESA_packed_depth_stencil                                    = 1
const GL_LIGHT0                                                       = 0x4000
const GL_REPLICATE_BORDER                                             = 0x8153
const GL_R                                                            = 0x2002
const GL_POST_CONVOLUTION_RED_BIAS                                    = 0x8020
const GL_RGBA4                                                        = 0x8056
const GL_RGBA_MODE                                                    = 0x0C31
const GL_TRANSFORM_BIT                                                = 0x00001000
const GL_LOGIC_OP                                                     = 0x0BF1
const GL_4_BYTES                                                      = 0x1409
const GL_ADD                                                          = 0x0104
const GL_PACK_SWAP_BYTES                                              = 0x0D00
const GL_LINE_SMOOTH                                                  = 0x0B20
const GL_DEBUG_OBJECT_MESA                                            = 0x8759
const GL_RED_SCALE                                                    = 0x0D14
const GL_STACK_OVERFLOW                                               = 0x0503
const GL_COLOR_MATERIAL_FACE                                          = 0x0B55
const GL_TEXTURE_HEIGHT                                               = 0x1001
const GL_PIXEL_MAP_R_TO_R_SIZE                                        = 0x0CB6
const GL_TEXTURE30_ARB                                                = 0x84DE
const GL_EXTENSIONS                                                   = 0x1F03
const GL_LUMINANCE6_ALPHA2                                            = 0x8044
const GL_ORDER                                                        = 0x0A01
const GL_PIXEL_MAP_I_TO_I_SIZE                                        = 0x0CB0
const GL_TEXTURE15                                                    = 0x84CF
const GL_PIXEL_MAP_I_TO_A                                             = 0x0C75
# Export everything!
export glColor3i, glVertex4sv, glBlendEquation, glVertex4d, glTexEnvi, glTexCoord3d, glRectiv, glGetMapiv, strtoimax, imaxdiv, glReadBuffer, glGenTextures, glRasterPos3f, glEvalPoint2, glGetConvolutionFilter, glEvalCoord1dv, glLoadTransposeMatrixf, glGetFloatv, glCreateDebugObjectMESA, glVertex2sv, glMultiTexCoord2s, glGetColorTable, glConvolutionParameterf, glGetMinmaxParameterfv, glRasterPos4sv, glPassThrough, glClearDepth, glColor4bv, glBitmap, glMultiTexCoord1dvARB, glEvalPoint1, glGetLightfv, glColor3f, glColor3iv, glRasterPos2fv, glRectf, glMultiTexCoord2svARB, glPixelMapuiv, glBlendColor, glLoadMatrixd, glFeedbackBuffer, glColor4fv, glInitNames, glDisable, glCopyConvolutionFilter1D, glNormal3b, glMultiTexCoord2iv, glHint, glVertex3s, glVertex4i, glIndexub, glTexGeni, glEvalCoord2dv, glTexGend, glIndexfv, glPushName, glTexCoord2f, glVertex2f, glColor4dv, glPixelMapusv, glConvolutionParameterfv, glCopyConvolutionFilter2D, glNormal3f, glFinish, glTexImage3D, glClear, glEvalCoord1fv, glColor3sv, glTexSubImage3D, glNormal3sv, glBindTexture, glColor3d, glMultiTexCoord1dv, glCopyPixels, glTexCoord1d, glVertex4f, glMatrixMode, glMultiTexCoord1s, glLineStipple, glBlendEquationSeparateATI, glRasterPos3fv, glConvolutionParameteri, glClientActiveTexture, glTexCoord3i, glDepthRange, glTexGenf, glClientActiveTextureARB, glVertex3fv, glGetPointerv, glVertex3sv, glNewList, glRectsv, glGenLists, glColor3s, glVertex4iv, glColor3b, glEndList, glHistogram, glTexCoord2iv, glGetTexParameterfv, glMultiTexCoord1iv, glResetMinmax, glMultiTexCoord4dvARB, glScissor, glLightfv, glRasterPos3i, glMultiTexCoord4iARB, glTexCoord3s, glGetPixelMapuiv, glColor4b, glEnd, glRasterPos4d, glStencilMask, glCopyTexSubImage2D, glNormalPointer, glVertex4dv, glGetTexLevelParameterfv, glMultiTexCoord4f, glMultiTexCoord2f, glGetDebugLogLengthMESA, glTexCoord2s, glColorTable, glOrtho, glColor3uiv, glEvalMesh2, glRects, glMateriali, glTexCoord3dv, glArrayElement, glVertex2dv, glInterleavedArrays, glGetMaterialfv, glMultiTexCoord4fARB, glTexParameteri, glCompressedTexImage2D, glMultiTexCoord2ivARB, glVertex4s, glRasterPos4fv, glNormal3bv, glTexCoord2dv, glGetDebugLogMESA, glTexCoordPointer, glMultiTexCoord2fvARB, glTexCoord3sv, glRasterPos3s, glClearAccum, glGetSeparableFilter, glDrawArrays, glRasterPos4iv, glCopyTexImage1D, glDeleteLists, glMultiTexCoord2sv, glStencilFunc, glTexGendv, glRasterPos2f, glMaterialiv, glEvalMesh1, glColor3us, glMultiTexCoord4fvARB, wcstoimax, glGetMapdv, glConvolutionFilter1D, glCompressedTexImage1D, glGetError, glVertex2s, glMultiTexCoord1fv, glMultiTexCoord2d, glDisableClientState, glGetHistogramParameteriv, strtoumax, glMap1f, glColor4uiv, glPopClientAttrib, glColor4s, glIndexd, glColor4ub, glGetHistogram, glMultiTexCoord1i, glMultiTexCoord3svARB, glMultiTexCoord3ivARB, glCallLists, glDeleteTextures, glNormal3i, glFogiv, glRasterPos2s, glCompressedTexSubImage1D, glIndexiv, glPrioritizeTextures, glMultiTexCoord4svARB, glMultiTexCoord3d, glTexParameterf, glTexEnviv, glMultiTexCoord2iARB, glTexCoord1sv, glColor4usv, glCullFace, glVertex4fv, glIndexf, glRectfv, glMultMatrixf, glColor4f, glMultiTexCoord1dARB, glTexCoord1i, glTexParameterfv, glActiveTextureARB, glMultiTexCoord1sARB, glMultiTexCoord4s, glMultiTexCoord1svARB, glMultiTexCoord3fARB, glTexCoord1s, glEvalCoord2f, glMultiTexCoord4i, glDepthMask, glTexCoord3f, glDrawPixels, glMultiTexCoord1iARB, glMultiTexCoord3dvARB, glLineWidth, glPolygonMode, glMultiTexCoord1d, glMultiTexCoord4sv, glIsList, glGetTexEnvfv, glClearDebugLogMESA, glColorTableParameterfv, glCompressedTexSubImage3D, glFlush, glFrustum, glPushClientAttrib, glScalef, glSelectBuffer, glVertex2iv, glTexCoord4s, glColor3bv, glVertex3i, glRasterPos2iv, glEvalCoord2fv, glColor4ubv, glMap2f, glMapGrid2f, glConvolutionFilter2D, glActiveTexture, glMultiTexCoord2dARB, glIsTexture, glColorSubTable, glAlphaFunc, glPolygonOffset, glCallList, glColor4us, glDrawRangeElements, glCopyTexSubImage3D, glNormal3d, glVertex3d, glMultMatrixd, glTranslated, glMultiTexCoord3sv, glMaterialf, glNormal3fv, glRasterPos3sv, glMultiTexCoord3fvARB, glTexCoord1iv, glRotated, glLoadIdentity, glGetColorTableParameteriv, glTexParameteriv, glTexGenfv, glGetTexGeniv, glRasterPos2d, glGetIntegerv, glIndexdv, glEnable, glColor4i, glLightModeliv, glRasterPos2i, glMultiTexCoord4d, glMapGrid1f, glAreTexturesResident, glIndexubv, glMap2d, glVertex2d, glMultiTexCoord2fv, glLightModelfv, glGetCompressedTexImage, glColorPointer, glTranslatef, glGetColorTableParameterfv, glVertex2i, glMultiTexCoord3iv, glMultiTexCoord2i, glMultiTexCoord1fvARB, glGetTexGendv, glTexCoord3iv, glTexCoord2i, glVertex2fv, glRasterPos4i, glMultiTexCoord1f, glMultiTexCoord1fARB, glMultiTexCoord3sARB, glMultiTexCoord4iv, glGetClipPlane, glVertexPointer, glGetDoublev, glViewport, glTexImage1D, glStencilOp, glTexCoord4iv, glGetMapfv, glResetHistogram, glRectdv, glCompressedTexImage3D, glNormal3dv, glEdgeFlagPointer, glColor3ui, glMultiTexCoord3s, glColor4sv, glLoadMatrixf, glMap1d, glNormal3s, glIndexs, glMultiTexCoord3iARB, glCompressedTexSubImage2D, glTexCoord1f, glMultiTexCoord2dvARB, glTexCoord4sv, glRenderMode, glMinmax, glPixelTransferi, glGetTexEnviv, glColor3ub, glShadeModel, glAccum, glTexCoord4f, glTexCoord3fv, glIndexPointer, glPixelStorei, glPixelTransferf, glGetPixelMapusv, glDrawBuffer, glTexEnvfv, glMultiTexCoord3dv, glMultiTexCoord2sARB, glLogicOp, glPopMatrix, glEnableClientState, glFogf, glMultiTexCoord1sv, glMultiTexCoord4dv, glGetMaterialiv, glCopyColorTable, glIndexsv, glMultiTexCoord2dv, glTexCoord1dv, glColor3fv, glColorMask, glMultiTexCoord4fv, glEdgeFlag, glPointSize, glConvolutionParameteriv, glTexGeniv, glListBase, glVertex3dv, glGetTexGenfv, glBegin, glMapGrid1d, glTexCoord1fv, glLoadTransposeMatrixd, glRasterPos4s, glCopyTexSubImage1D, glGetMinmax, glLightModelf, glIsEnabled, glGetPolygonStipple, glReadPixels, glMultiTexCoord3f, glTexCoord2fv, glTexEnvf, glTexCoord4fv, glGetConvolutionParameterfv, glTexImage2D, glColor3dv, glEdgeFlagv, glColor4ui, glGetMinmaxParameteriv, glEvalCoord2d, glGetConvolutionParameteriv, glGetTexLevelParameteriv, glGetTexImage, glPushAttrib, glColor3usv, glTexSubImage2D, glGetHistogramParameterfv, glPixelStoref, glGetProgramRegisterfvMESA, glPushMatrix, glFogi, glPixelZoom, glTexSubImage1D, glLightModeli, glTexCoord4i, imaxabs, glDrawElements, glFogfv, glScaled, glRasterPos3d, glColor3ubv, glColor4iv, glGetLightiv, glMultiTexCoord2fARB, glMaterialfv, glRasterPos3dv, glPixelMapfv, glMultiTexCoord4sARB, glPolygonStipple, glEvalCoord1f, glIndexi, glLoadName, glRasterPos4f, glIndexMask, glTexCoord2d, glMultTransposeMatrixf, glDepthFunc, glVertex3f, glProgramCallbackMESA, glMultTransposeMatrixd, glColorMaterial, glCopyColorSubTable, glRecti, glCopyTexImage2D, glRotatef, glRasterPos2sv, glClearIndex, glTexCoord4d, glPopName, glLighti, glMultiTexCoord1ivARB, glRasterPos4dv, glClipPlane, glTexCoord4dv, glMultiTexCoord3dARB, glBlendFunc, glGetPixelMapfv, glRasterPos2dv, glEvalCoord1d, glMapGrid2d, glMultiTexCoord4ivARB, glGetBooleanv, glMultiTexCoord3fv, glGetTexParameteriv, glFrontFace, glMultiTexCoord4dARB, glColorTableParameteriv, glRasterPos3iv, glColor4d, wcstoumax, glLightiv, glPopAttrib, glSampleCoverage, glClearColor, glSeparableFilter2D, glRectd, glNormal3iv, glTexCoord2sv, glVertex3iv, glClearStencil, glLightf, glGetString, glMultiTexCoord3i, GL_MAP1_GRID_SEGMENTS, GL_COMPILE, GL_INTENSITY, GL_FOG_HINT, GL_LUMINANCE12_ALPHA12, GL_UNPACK_LSB_FIRST, GL_ACCUM_RED_BITS, GL_LIGHT4, GL_COLOR_TABLE_WIDTH, GL_TEXTURE5_ARB, GL_LIGHT_MODEL_LOCAL_VIEWER, GL_OBJECT_LINEAR, GL_COLOR_ARRAY_SIZE, GL_TEXTURE12, GL_TEXTURE9_ARB, GL_OPERAND1_RGB, GL_TEXTURE_BINDING_3D, GL_MINMAX_FORMAT, GL_UNSIGNED_SHORT_5_6_5_REV, GL_PACK_ROW_LENGTH, GL_SET, GL_LINES, GL_QUADS, GL_EYE_LINEAR, GL_POLYGON_OFFSET_POINT, GL_TEXTURE, GL_RGB5, GL_LIST_BIT, GL_COLOR_TABLE_INTENSITY_SIZE, GL_TEXTURE_PRIORITY, GL_TEXTURE26_ARB, GL_EVAL_BIT, GL_POST_COLOR_MATRIX_ALPHA_BIAS, GL_CCW, GL_TEXTURE26, GL_SMOOTH_LINE_WIDTH_GRANULARITY, GL_CONVOLUTION_BORDER_COLOR, GL_C3F_V3F, GL_TEXTURE_CUBE_MAP_NEGATIVE_X, GL_MAP2_INDEX, GL_STENCIL_BITS, GL_DEPTH_BUFFER_BIT, GL_INTENSITY12, GL_LIST_BASE, GL_COLOR_TABLE_BIAS, GL_POINT_SMOOTH, GL_PIXEL_MAP_S_TO_S, GL_FUNC_REVERSE_SUBTRACT, GL_DOUBLE, GL_T2F_C4UB_V3F, GL_RGB16, GL_TEXTURE_MATRIX, GL_HISTOGRAM_ALPHA_SIZE, GL_VERSION_1_3, GL_COLOR_ARRAY_STRIDE, GL_TEXTURE_CUBE_MAP_POSITIVE_X, GL_BITMAP, GL_CURRENT_INDEX, GL_MAP1_GRID_DOMAIN, GL_STENCIL_PASS_DEPTH_FAIL, GL_TEXTURE_CUBE_MAP_NEGATIVE_Y, GL_XOR, GL_LIGHT_MODEL_AMBIENT, GL_OPERAND0_ALPHA, GL_AMBIENT, GL_EQUIV, GL_CURRENT_RASTER_INDEX, GL_POLYGON_OFFSET_FILL, GL_ARB_imaging, GL_POINT_TOKEN, GL_COLOR_WRITEMASK, GL_TEXTURE8, GL_EQUAL, GL_TEXTURE1, GL_RETURN, GL_RGBA16, GL_TEXTURE_2D, GL_TEXTURE_BINDING_1D, GL_LINE_WIDTH_RANGE, GL_PIXEL_MAP_I_TO_B, GL_TEXTURE_2D_ARRAY_EXT, GL_ACCUM_BUFFER_BIT, GL_SEPARABLE_2D, GL_MAP2_GRID_SEGMENTS, GL_INDEX_CLEAR_VALUE, GL_ENABLE_BIT, GL_TEXTURE12_ARB, GL_MAP2_VERTEX_3, GL_OUT_OF_MEMORY, GL_UNSIGNED_SHORT_4_4_4_4, GL_HISTOGRAM_BLUE_SIZE, GL_MAP1_VERTEX_3, GL_POST_CONVOLUTION_BLUE_BIAS, GL_TEXTURE18, GL_UNPACK_ALIGNMENT, GL_FRAGMENT_PROGRAM_CALLBACK_DATA_MESA, GL_ONE_MINUS_SRC_ALPHA, GL_PIXEL_MAP_I_TO_I, GL_TEXTURE1_ARB, GL_CURRENT_TEXTURE_COORDS, GL_DIFFUSE, GL_TEXTURE_INTENSITY_SIZE, GL_COLOR_TABLE_SCALE, GL_TEXTURE_GEN_R, GL_QUAD_STRIP, GL_DEPTH_FUNC, GL_MAP2_VERTEX_4, GL_ALL_CLIENT_ATTRIB_BITS, GL_HISTOGRAM, GL_PIXEL_MAP_G_TO_G, GL_INTENSITY8, GL_PIXEL_MAP_A_TO_A_SIZE, GL_N3F_V3F, GL_MAP2_GRID_DOMAIN, GL_DOMAIN, GL_TEXTURE_1D, GL_POINT_SIZE, GL_VIEWPORT, GL_RGBA, GL_DRAW_PIXEL_TOKEN, GL_PROXY_HISTOGRAM, GL_CLAMP, GL_TEXTURE31, GL_TEXTURE_GEN_MODE, GL_ONE_MINUS_CONSTANT_ALPHA, GL_TEXTURE3, GL_PIXEL_MAP_I_TO_R, GL_COMBINE_ALPHA, GL_SUBTRACT, GL_RGB4, GL_HISTOGRAM_LUMINANCE_SIZE, GL_COLOR_ARRAY_TYPE, GL_COMBINE_RGB, GL_POST_COLOR_MATRIX_RED_BIAS, GL_MAP1_TEXTURE_COORD_3, GL_TEXTURE27_ARB, GL_SUBPIXEL_BITS, GL_UNPACK_SKIP_ROWS, GL_SOURCE0_RGB, GL_TEXTURE23_ARB, GL_POINTS, GL_VERSION_1_1, GL_TEXTURE5, GL_ALPHA12, GL_GREEN_SCALE, GL_PROXY_TEXTURE_1D, GL_TEXTURE_WRAP_S, GL_POST_COLOR_MATRIX_ALPHA_SCALE, GL_TEXTURE_COORD_ARRAY_POINTER, GL_INDEX_ARRAY, GL_T, GL_PROXY_TEXTURE_1D_ARRAY_EXT, GL_LESS, GL_MINMAX, GL_INCR, GL_MAX_TEXTURE_SIZE, GL_TEXTURE_ENV_MODE, GL_3_BYTES, GL_VERSION_1_2, GL_LIGHT3, GL_TEXTURE_BLUE_SIZE, GL_EDGE_FLAG_ARRAY, GL_TEXTURE_WRAP_R, GL_DECAL, GL_ONE_MINUS_DST_ALPHA, GL_PACK_SKIP_PIXELS, GL_TEXTURE_GREEN_SIZE, GL_LIGHT1, GL_EXP2, GL_POST_CONVOLUTION_RED_SCALE, GL_DEPTH, GL_CULL_FACE_MODE, GL_CLIP_PLANE5, GL_COMPRESSED_RGB, GL_ALPHA_BIAS, GL_TEXTURE_GEN_S, GL_MAP2_TEXTURE_COORD_1, GL_AND_REVERSE, GL_CLEAR, GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE, GL_TEXTURE_MAX_LOD, GL_MAX_CLIENT_ATTRIB_STACK_DEPTH, GL_SAMPLE_ALPHA_TO_ONE, GL_COLOR_TABLE_GREEN_SIZE, GL_FOG_DENSITY, GL_LINE_TOKEN, GL_C4UB_V3F, GL_SAMPLE_BUFFERS, GL_NEAREST, GL_LINE_LOOP, GL_CONSTANT_BORDER, GL_COMPRESSED_ALPHA, GL_ALPHA_TEST, GL_LIGHT6, GL_RED_BITS, GL_PREVIOUS, GL_COMPRESSED_LUMINANCE, GL_BITMAP_TOKEN, GL_UNSIGNED_SHORT_4_4_4_4_REV, GL_TEXTURE4, GL_ACCUM_GREEN_BITS, GL_POINT_SIZE_RANGE, GL_UNSIGNED_BYTE_3_3_2, GL_PIXEL_MAP_A_TO_A, GL_TEXTURE_COMPONENTS, GL_INVALID_VALUE, GL_POST_CONVOLUTION_GREEN_SCALE, GL_ACCUM, GL_RGB_SCALE, GL_PIXEL_MAP_S_TO_S_SIZE, GL_VERTEX_ARRAY_TYPE, GL_SINGLE_COLOR, GL_MAX, GL_LUMINANCE, GL_ACTIVE_TEXTURE_ARB, GL_REPLACE, GL_MATRIX_MODE, GL_DEPTH_COMPONENT, GL_OBJECT_PLANE, GL_RGBA8, GL_TEXTURE_GEN_Q, GL_COLOR_TABLE_RED_SIZE, GL_TEXTURE_STACK_DEPTH, GL_TEXTURE16_ARB, GL_STEREO, GL_LIGHT2, GL_SCISSOR_TEST, GL_TEXTURE_COMPRESSED_IMAGE_SIZE, GL_AUTO_NORMAL, GL_TEXTURE_1D_ARRAY_EXT, GL_TEXTURE22, GL_CLAMP_TO_EDGE, GL_ZOOM_X, GL_ACTIVE_TEXTURE, GL_MAX_EVAL_ORDER, GL_TEXTURE_DEPTH, GL_FRONT_RIGHT, GL_DEPTH_RANGE, GL_NORMAL_ARRAY, GL_LINE_RESET_TOKEN, GL_PROXY_TEXTURE_2D_ARRAY_EXT, GL_ONE, GL_STENCIL_PASS_DEPTH_PASS, GL_POST_COLOR_MATRIX_RED_SCALE, GL_NO_ERROR, GL_SMOOTH_POINT_SIZE_RANGE, GL_AUX_BUFFERS, GL_MAX_TEXTURE_STACK_DEPTH, GL_LEQUAL, GL_NONE, GL_PIXEL_MAP_B_TO_B, GL_TEXTURE19_ARB, GL_OR_INVERTED, GL_PACK_SKIP_ROWS, GL_NUM_COMPRESSED_TEXTURE_FORMATS, GL_RESCALE_NORMAL, GL_BACK_LEFT, GL_MAP2_TEXTURE_COORD_4, GL_COLOR, GL_CONSTANT, GL_UNSIGNED_SHORT, GL_MODULATE, GL_UNSIGNED_INT, GL_LUMINANCE4_ALPHA4, GL_POSITION, GL_COMPRESSED_INTENSITY, GL_COLOR_CLEAR_VALUE, GL_R3_G3_B2, GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER_EXT, GL_PIXEL_MAP_G_TO_G_SIZE, GL_BACK_RIGHT, GL_LUMINANCE12_ALPHA4, GL_FRONT_AND_BACK, GL_RENDERER, GL_ATTRIB_STACK_DEPTH, GL_LINE_STIPPLE_REPEAT, GL_POLYGON_SMOOTH_HINT, GL_LUMINANCE4, GL_SMOOTH_POINT_SIZE_GRANULARITY, GL_OR_REVERSE, GL_MAP2_TEXTURE_COORD_2, GL_FOG_MODE, GL_FRAGMENT_PROGRAM_POSITION_MESA, GL_LUMINANCE16, GL_OPERAND0_RGB, GL_STENCIL_BUFFER_BIT, GL_MAX_PROJECTION_STACK_DEPTH, GL_POLYGON_SMOOTH, GL_EDGE_FLAG_ARRAY_POINTER, GL_TEXTURE23, GL_INDEX_LOGIC_OP, GL_DOT3_RGBA, GL_NORMAL_ARRAY_POINTER, GL_TEXTURE11, GL_DEPTH_BITS, GL_BLUE_SCALE, GL_POST_CONVOLUTION_GREEN_BIAS, GL_COLOR_MATRIX_STACK_DEPTH, GL_LIGHT_MODEL_TWO_SIDE, GL_READ_BUFFER, GL_NORMALIZE, GL_CURRENT_COLOR, GL_FASTEST, GL_INDEX_ARRAY_POINTER, GL_MULTISAMPLE_BIT, GL_ALPHA_BLEND_EQUATION_ATI, GL_MAP1_TEXTURE_COORD_1, GL_C4UB_V2F, GL_AUX2, GL_CURRENT_RASTER_POSITION_VALID, GL_COLOR_MATERIAL, GL_NAME_STACK_DEPTH, GL_OES_EGL_image, GL_TEXTURE0_ARB, GL_COLOR_TABLE_ALPHA_SIZE, GL_TEXTURE6_ARB, GL_AND_INVERTED, GL_LIGHT7, GL_NICEST, GL_PIXEL_MAP_I_TO_G, GL_KEEP, GL_SOURCE0_ALPHA, GL_ZERO, GL_ACCUM_CLEAR_VALUE, GL_INDEX_ARRAY_STRIDE, GL_AMBIENT_AND_DIFFUSE, GL_DRAW_BUFFER, GL_BYTE, GL_GREATER, GL_COPY, GL_ADD_SIGNED, GL_HISTOGRAM_FORMAT, GL_DONT_CARE, GL_MAX_ELEMENTS_VERTICES, GL_DST_ALPHA, GL_MAX_LIST_NESTING, GL_LIGHTING, GL_COLOR_MATERIAL_PARAMETER, GL_AND, GL_SPOT_DIRECTION, GL_CONVOLUTION_FILTER_SCALE, GL_PIXEL_MAP_I_TO_B_SIZE, GL_CONVOLUTION_1D, GL_COPY_PIXEL_TOKEN, GL_TRIANGLE_FAN, GL_PROXY_POST_CONVOLUTION_COLOR_TABLE, GL_UNSIGNED_BYTE_2_3_3_REV, GL_GREEN_BIAS, GL_RGB12, GL_COLOR_TABLE_FORMAT, GL_POINT_SIZE_GRANULARITY, GL_FEEDBACK_BUFFER_SIZE, GL_TRUE, GL_PACK_SKIP_IMAGES, GL_INTERPOLATE, GL_RGB8, GL_COMPRESSED_LUMINANCE_ALPHA, GL_T2F_C3F_V3F, GL_TEXTURE_CUBE_MAP_POSITIVE_Z, GL_T2F_N3F_V3F, GL_QUADRATIC_ATTENUATION, GL_RENDER_MODE, GL_UNPACK_ROW_LENGTH, GL_LINE, GL_LINE_SMOOTH_HINT, GL_3D_COLOR_TEXTURE, GL_FUNC_ADD, GL_MAP1_COLOR_4, GL_ALPHA_SCALE, GL_COMPRESSED_TEXTURE_FORMATS, GL_CONSTANT_ALPHA, GL_LINE_STRIP, GL_VERSION, GL_MAX_COLOR_MATRIX_STACK_DEPTH, GL_CLIENT_VERTEX_ARRAY_BIT, GL_PROJECTION_STACK_DEPTH, GL_MIN, GL_TEXTURE25, GL_SAMPLE_COVERAGE_VALUE, GL_CURRENT_BIT, GL_MAX_ARRAY_TEXTURE_LAYERS_EXT, GL_SHORT, GL_POINT_BIT, GL_POLYGON_BIT, GL_BLUE_BIAS, GL_TEXTURE20, GL_SPECULAR, GL_BLEND_COLOR, GL_RENDER, GL_MAX_CUBE_MAP_TEXTURE_SIZE, GL_POINT_SMOOTH_HINT, GL_DOT3_RGB, GL_MAX_PIXEL_MAP_TABLE, GL_CLIP_PLANE0, GL_CURRENT_RASTER_TEXTURE_COORDS, GL_COMPILE_AND_EXECUTE, GL_BLEND_SRC, GL_NEAREST_MIPMAP_LINEAR, GL_COLOR_TABLE_LUMINANCE_SIZE, GL_LUMINANCE16_ALPHA16, GL_SPOT_EXPONENT, GL_SHADE_MODEL, GL_BLEND_DST, GL_TEXTURE_COMPRESSION_HINT, GL_TRANSPOSE_TEXTURE_MATRIX, GL_CLIP_PLANE1, GL_FEEDBACK_BUFFER_POINTER, GL_VERTEX_ARRAY_STRIDE, GL_TEXTURE31_ARB, GL_2_BYTES, GL_MAX_CLIP_PLANES, GL_CONVOLUTION_BORDER_MODE, GL_DEPTH_WRITEMASK, GL_LINEAR, GL_RGB10_A2, GL_INDEX_WRITEMASK, GL_SOURCE2_RGB, GL_COMBINE, GL_TEXTURE_ENV_COLOR, GL_TEXTURE8_ARB, GL_EXP, GL_DST_COLOR, GL_TEXTURE_WIDTH, GL_UNSIGNED_INT_2_10_10_10_REV, GL_V2F, GL_NEVER, GL_UNPACK_IMAGE_HEIGHT, GL_PROXY_TEXTURE_2D, GL_TEXTURE0, GL_ALPHA4, GL_MAP2_COLOR_4, GL_T2F_V3F, GL_FEEDBACK, GL_MESA_texture_array, GL_MAP2_NORMAL, GL_VERTEX_PROGRAM_CALLBACK_DATA_MESA, GL_BACK, GL_SMOOTH, GL_BGR, GL_STENCIL, GL_TEXTURE_3D, GL_UNPACK_SWAP_BYTES, GL_ALWAYS, GL_LINEAR_ATTENUATION, GL_PIXEL_MAP_R_TO_R, GL_UNSIGNED_INT_8_24_REV_MESA, GL_AUX0, GL_ZOOM_Y, GL_PROXY_COLOR_TABLE, GL_CURRENT_NORMAL, GL_SELECT, GL_MAX_TEXTURE_UNITS, GL_TEXTURE_BINDING_2D_ARRAY_EXT, GL_CONVOLUTION_HEIGHT, GL_LIST_INDEX, GL_SHININESS, GL_DECR, GL_AUX3, GL_ALPHA_TEST_FUNC, GL_PIXEL_MAP_I_TO_G_SIZE, GL_STENCIL_VALUE_MASK, GL_MAP2_TEXTURE_COORD_3, GL_BLEND, GL_GREEN, GL_MAX_TEXTURE_UNITS_ARB, GL_DEBUG_PRINT_MESA, GL_POST_CONVOLUTION_ALPHA_SCALE, GL_RGB, GL_COLOR_MATRIX, GL_NORMAL_MAP, GL_TEXTURE_MIN_FILTER, GL_UNSIGNED_INT_10_10_10_2, GL_HISTOGRAM_RED_SIZE, GL_CULL_FACE, GL_STENCIL_FAIL, GL_CONVOLUTION_WIDTH, GL_TEXTURE_LUMINANCE_SIZE, GL_COLOR_ARRAY_POINTER, GL_TEXTURE_BINDING_2D, GL_ALPHA, GL_CONVOLUTION_FILTER_BIAS, GL_TEXTURE_WRAP_T, GL_ALL_ATTRIB_BITS, GL_UNSIGNED_INT_8_8_8_8, GL_TEXTURE29, GL_Q, GL_2D, GL_INDEX_BITS, GL_SPOT_CUTOFF, GL_PACK_LSB_FIRST, GL_STENCIL_INDEX, GL_MODELVIEW, GL_POLYGON_OFFSET_UNITS, GL_TEXTURE9, GL_V3F, GL_FOG_COLOR, GL_HISTOGRAM_SINK, GL_MAP_COLOR, GL_NORMAL_ARRAY_STRIDE, GL_TEXTURE_COORD_ARRAY_SIZE, GL_STENCIL_REF, GL_CLIENT_ALL_ATTRIB_BITS, GL_DEPTH_SCALE, GL_VIEWPORT_BIT, GL_TEXTURE7_ARB, GL_UNSIGNED_SHORT_1_5_5_5_REV, GL_EMISSION, GL_CURRENT_RASTER_COLOR, GL_TEXTURE_RESIDENT, GL_TEXTURE17, GL_TEXTURE16, GL_3D, GL_DITHER, GL_MAP1_TEXTURE_COORD_2, GL_S, GL_TEXTURE17_ARB, GL_NOTEQUAL, GL_TEXTURE_CUBE_MAP_NEGATIVE_Z, GL_NOR, GL_LINEAR_MIPMAP_NEAREST, GL_T4F_C4F_N3F_V4F, GL_RED_BIAS, GL_OPERAND2_ALPHA, GL_SRC_COLOR, GL_POLYGON_OFFSET_LINE, GL_TEXTURE10_ARB, GL_POLYGON_STIPPLE_BIT, GL_POST_COLOR_MATRIX_GREEN_BIAS, GL_PROJECTION_MATRIX, GL_MULTISAMPLE, GL_COLOR_INDEXES, GL_INVALID_ENUM, GL_NOOP, GL_INDEX_SHIFT, GL_INDEX_ARRAY_TYPE, GL_TEXTURE18_ARB, GL_SAMPLES, GL_TEXTURE14, GL_TRANSPOSE_COLOR_MATRIX, GL_TEXTURE_COMPRESSED, GL_POINT, GL_ARB_multitexture, GL_UNSIGNED_INT_24_8_MESA, GL_SAMPLE_ALPHA_TO_COVERAGE, GL_TEXTURE20_ARB, GL_TEXTURE_COORD_ARRAY, GL_TEXTURE29_ARB, GL_FOG, GL_CLIENT_PIXEL_STORE_BIT, GL_FUNC_SUBTRACT, GL_MAX_CONVOLUTION_WIDTH, GL_SAMPLE_COVERAGE, GL_ONE_MINUS_DST_COLOR, GL_SELECTION_BUFFER_POINTER, GL_UNPACK_SKIP_IMAGES, GL_MAX_MODELVIEW_STACK_DEPTH, GL_STACK_UNDERFLOW, GL_LUMINANCE8, GL_INVERT, GL_LIGHT5, GL_SCISSOR_BIT, GL_CLIENT_ATTRIB_STACK_DEPTH, GL_CURRENT_RASTER_POSITION, GL_TEXTURE2_ARB, GL_STENCIL_CLEAR_VALUE, GL_REPEAT, GL_UNSIGNED_SHORT_5_6_5, GL_FILL, GL_ONE_MINUS_SRC_COLOR, GL_PACK_ALIGNMENT, GL_TEXTURE2, GL_TEXTURE_ENV, GL_POST_COLOR_MATRIX_BLUE_SCALE, GL_PIXEL_MODE_BIT, GL_GEQUAL, GL_VERTEX_PROGRAM_CALLBACK_FUNC_MESA, GL_RED, GL_LUMINANCE8_ALPHA8, GL_PRIMARY_COLOR, GL_CLAMP_TO_BORDER, GL_POST_CONVOLUTION_COLOR_TABLE, GL_COEFF, GL_TEXTURE7, GL_TEXTURE6, GL_TEXTURE21_ARB, GL_MESA_shader_debug, GL_CW, GL_TEXTURE_CUBE_MAP, GL_ALPHA_TEST_REF, GL_FOG_BIT, GL_TEXTURE_MAX_LEVEL, GL_TEXTURE_ALPHA_SIZE, GL_ALPHA_BITS, GL_OR, GL_T2F_C4F_N3F_V3F, GL_TEXTURE19, GL_4D_COLOR_TEXTURE, GL_CONVOLUTION_FORMAT, GL_MAX_LIGHTS, GL_MAX_VIEWPORT_DIMS, GL_POST_CONVOLUTION_ALPHA_BIAS, GL_CLIP_PLANE2, GL_T4F_V4F, GL_UNSIGNED_SHORT_1_15_REV_MESA, GL_MAP1_INDEX, GL_TEXTURE_COORD_ARRAY_STRIDE, GL_LINEAR_MIPMAP_LINEAR, GL_COMPRESSED_RGBA, GL_MAX_ELEMENTS_INDICES, GL_TEXTURE14_ARB, GL_TEXTURE21, GL_PACK_IMAGE_HEIGHT, GL_MAP1_VERTEX_4, GL_SRC_ALPHA_SATURATE, GL_PROJECTION, GL_PROXY_TEXTURE_3D, GL_C4F_N3F_V3F, GL_DEBUG_ASSERT_MESA, GL_INDEX_MODE, GL_VERTEX_ARRAY_SIZE, GL_MAP_STENCIL, GL_OPERAND1_ALPHA, GL_POST_CONVOLUTION_BLUE_SCALE, GL_POST_COLOR_MATRIX_BLUE_BIAS, GL_REDUCE, GL_PIXEL_MAP_B_TO_B_SIZE, GL_TEXTURE27, GL_CONSTANT_COLOR, GL_TEXTURE22_ARB, GL_VENDOR, GL_DEPTH_TEST, GL_TEXTURE_RED_SIZE, GL_TEXTURE_BORDER, GL_TEXTURE_COORD_ARRAY_TYPE, GL_UNSIGNED_BYTE, GL_TRANSPOSE_MODELVIEW_MATRIX, GL_TEXTURE_BIT, GL_ATI_blend_equation_separate, GL_RGB5_A1, GL_AUX1, GL_BLUE_BITS, GL_LOAD, GL_MESA_program_debug, GL_UNSIGNED_SHORT_15_1_MESA, GL_COLOR_LOGIC_OP, GL_POST_COLOR_MATRIX_COLOR_TABLE, GL_HINT_BIT, GL_TRANSPOSE_PROJECTION_MATRIX, GL_FLOAT, GL_SPHERE_MAP, GL_COLOR_INDEX, GL_INTENSITY16, GL_SOURCE1_RGB, GL_SCISSOR_BOX, GL_MAX_3D_TEXTURE_SIZE, GL_EDGE_FLAG_ARRAY_STRIDE, GL_PIXEL_MAP_I_TO_R_SIZE, GL_LEFT, GL_MAX_CONVOLUTION_HEIGHT, GL_PIXEL_MAP_I_TO_A_SIZE, GL_CLIP_PLANE4, GL_TEXTURE_MAG_FILTER, GL_UNPACK_SKIP_PIXELS, GL_COLOR_BUFFER_BIT, GL_RGBA2, GL_MAX_ATTRIB_STACK_DEPTH, GL_SMOOTH_LINE_WIDTH_RANGE, GL_SOURCE2_ALPHA, GL_SRC_ALPHA, GL_TABLE_TOO_LARGE, GL_BLEND_EQUATION, GL_REFLECTION_MAP, GL_FOG_START, GL_HISTOGRAM_GREEN_SIZE, GL_VERTEX_PROGRAM_POSITION_MESA, GL_LUMINANCE12, GL_UNSIGNED_SHORT_5_5_5_1, GL_MULT, GL_GREEN_BITS, GL_LIGHT_MODEL_COLOR_CONTROL, GL_CURRENT_RASTER_DISTANCE, GL_BGRA, GL_STENCIL_WRITEMASK, GL_EYE_PLANE, GL_LINE_WIDTH_GRANULARITY, GL_STENCIL_FUNC, GL_3D_COLOR, GL_DEPTH_CLEAR_VALUE, GL_BLUE, GL_VERTEX_ARRAY, GL_POLYGON_OFFSET_FACTOR, GL_TEXTURE10, GL_RIGHT, GL_MAP1_NORMAL, GL_TEXTURE28, GL_ONE_MINUS_CONSTANT_COLOR, GL_FRONT_FACE, GL_RGBA12, GL_VERTEX_PROGRAM_CALLBACK_MESA, GL_COLOR_TABLE_BLUE_SIZE, GL_INVALID_OPERATION, GL_TEXTURE_GEN_T, GL_TEXTURE15_ARB, GL_POLYGON_MODE, GL_MAP1_TEXTURE_COORD_4, GL_TEXTURE_BINDING_1D_ARRAY_EXT, GL_LOGIC_OP_MODE, GL_LINE_WIDTH, GL_INTENSITY4, GL_SOURCE1_ALPHA, GL_POLYGON, GL_PASS_THROUGH_TOKEN, GL_LINE_BIT, GL_LIGHTING_BIT, GL_FRAGMENT_PROGRAM_CALLBACK_MESA, GL_POLYGON_STIPPLE, GL_ALPHA8, GL_FRONT, GL_TEXTURE24, GL_TEXTURE11_ARB, GL_TEXTURE24_ARB, GL_MAX_NAME_STACK_DEPTH, GL_COLOR_ARRAY, GL_CLIENT_ACTIVE_TEXTURE_ARB, GL_FRONT_LEFT, GL_TEXTURE_CUBE_MAP_POSITIVE_Y, GL_CLIENT_ACTIVE_TEXTURE, GL_FEEDBACK_BUFFER_TYPE, GL_MINMAX_SINK, GL_CONSTANT_ATTENUATION, GL_LUMINANCE_ALPHA, GL_FLAT, GL_CONVOLUTION_2D, GL_TEXTURE28_ARB, GL_COPY_INVERTED, GL_LIST_MODE, GL_FOG_END, GL_NORMAL_ARRAY_TYPE, GL_MODELVIEW_STACK_DEPTH, GL_TEXTURE25_ARB, GL_NEAREST_MIPMAP_NEAREST, GL_DOUBLEBUFFER, GL_TRIANGLE_STRIP, GL_MODELVIEW_MATRIX, GL_TEXTURE13_ARB, GL_ALIASED_POINT_SIZE_RANGE, GL_DEPTH_STENCIL_MESA, GL_COLOR_TABLE, GL_TEXTURE13, GL_TEXTURE_BASE_LEVEL, GL_TEXTURE3_ARB, GL_TEXTURE_MIN_LOD, GL_INDEX_OFFSET, GL_HISTOGRAM_WIDTH, GL_SAMPLE_COVERAGE_INVERT, GL_FOG_INDEX, GL_TEXTURE_BINDING_CUBE_MAP, GL_VERTEX_ARRAY_POINTER, GL_TRIANGLES, GL_INT, GL_ALIASED_LINE_WIDTH_RANGE, GL_NAND, GL_SEPARATE_SPECULAR_COLOR, GL_SELECTION_BUFFER_SIZE, GL_RGB10, GL_ACCUM_BLUE_BITS, GL_TEXTURE30, GL_FRAGMENT_PROGRAM_CALLBACK_FUNC_MESA, GL_POST_COLOR_MATRIX_GREEN_SCALE, GL_TEXTURE_BORDER_COLOR, GL_ALPHA16, GL_LINE_STIPPLE_PATTERN, GL_ACCUM_ALPHA_BITS, GL_CLIP_PLANE3, GL_TEXTURE_INTERNAL_FORMAT, GL_EDGE_FLAG, GL_POLYGON_TOKEN, GL_DEPTH_BIAS, GL_FALSE, GL_PROXY_TEXTURE_CUBE_MAP, GL_TEXTURE4_ARB, GL_UNSIGNED_INT_8_8_8_8_REV, GL_STENCIL_TEST, GL_LINE_STIPPLE, GL_OPERAND2_RGB, GL_PERSPECTIVE_CORRECTION_HINT, GL_MESA_packed_depth_stencil, GL_LIGHT0, GL_REPLICATE_BORDER, GL_R, GL_POST_CONVOLUTION_RED_BIAS, GL_RGBA4, GL_RGBA_MODE, GL_TRANSFORM_BIT, GL_LOGIC_OP, GL_4_BYTES, GL_ADD, GL_PACK_SWAP_BYTES, GL_LINE_SMOOTH, GL_DEBUG_OBJECT_MESA, GL_RED_SCALE, GL_STACK_OVERFLOW, GL_COLOR_MATERIAL_FACE, GL_TEXTURE_HEIGHT, GL_PIXEL_MAP_R_TO_R_SIZE, GL_TEXTURE30_ARB, GL_EXTENSIONS, GL_LUMINANCE6_ALPHA2, GL_ORDER, GL_PIXEL_MAP_I_TO_I_SIZE, GL_TEXTURE15, GL_PIXEL_MAP_I_TO_A
