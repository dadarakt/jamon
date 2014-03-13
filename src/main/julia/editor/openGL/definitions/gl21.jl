#function bodies
@createOpenGLFun glColor3i(red::GLint, green::GLint, blue::GLint)::Void
@createOpenGLFun glVertex4sv(v::Ptr{GLshort})::Void
@createOpenGLFun glBlendEquation(mode::GLenum)::Void
@createOpenGLFun glVertex4d(x::GLdouble, y::GLdouble, z::GLdouble, w::GLdouble)::Void
@createOpenGLFun glTexEnvi(target::GLenum, pname::GLenum, param::GLint)::Void
@createOpenGLFun glRectiv(v1::Ptr{GLint}, v2::Ptr{GLint})::Void
@createOpenGLFun glTexCoord3d(s::GLdouble, t::GLdouble, r::GLdouble)::Void
@createOpenGLFun glGetMapiv(target::GLenum, query::GLenum, v::Ptr{GLint})::Void
@createOpenGLFun glVertexAttrib3s(index::GLuint, x::GLshort, y::GLshort, z::GLshort)::Void
@createOpenGLFun glReadBuffer(mode::GLenum)::Void
@createOpenGLFun glGenTextures(n::GLsizei, textures::Ptr{GLuint})::Void
@createOpenGLFun glRasterPos3f(x::GLfloat, y::GLfloat, z::GLfloat)::Void
@createOpenGLFun glEvalPoint2(i::GLint, j::GLint)::Void
@createOpenGLFun glGetConvolutionFilter(target::GLenum, format::GLenum, type_::GLenum, image::Ptr{Void})::Void
@createOpenGLFun glEvalCoord1dv(u::Ptr{GLdouble})::Void
@createOpenGLFun glLoadTransposeMatrixf(m::Ptr{GLfloat})::Void
@createOpenGLFun glGetFloatv(pname::GLenum, params::Ptr{GLfloat})::Void
@createOpenGLFun glVertexAttrib1d(index::GLuint, x::GLdouble)::Void
@createOpenGLFun glVertex2sv(v::Ptr{GLshort})::Void
@createOpenGLFun glMultiTexCoord2s(target::GLenum, s::GLshort, t::GLshort)::Void
@createOpenGLFun glUniform3f(location::GLint, v0::GLfloat, v1::GLfloat, v2::GLfloat)::Void
@createOpenGLFun glGetColorTable(target::GLenum, format::GLenum, type_::GLenum, table::Ptr{Void})::Void
@createOpenGLFun glConvolutionParameterf(target::GLenum, pname::GLenum, params::GLfloat)::Void
@createOpenGLFun glGetQueryObjectiv(id::GLuint, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glGetMinmaxParameterfv(target::GLenum, pname::GLenum, params::Ptr{GLfloat})::Void
@createOpenGLFun glRasterPos4sv(v::Ptr{GLshort})::Void
@createOpenGLFun glPassThrough(token::GLfloat)::Void
@createOpenGLFun glClearDepth(depth::GLdouble)::Void
@createOpenGLFun glColor4bv(v::Ptr{GLbyte})::Void
@createOpenGLFun glUniformMatrix2fv(location::GLint, count::GLsizei, transpose::GLboolean, value::Ptr{GLfloat})::Void
@createOpenGLFun glBitmap(width::GLsizei, height::GLsizei, xorig::GLfloat, yorig::GLfloat, xmove::GLfloat, ymove::GLfloat, bitmap::Ptr{GLubyte})::Void
@createOpenGLFun glVertexAttrib4d(index::GLuint, x::GLdouble, y::GLdouble, z::GLdouble, w::GLdouble)::Void
@createOpenGLFun glEvalPoint1(i::GLint)::Void
@createOpenGLFun glGetLightfv(light::GLenum, pname::GLenum, params::Ptr{GLfloat})::Void
@createOpenGLFun glVertexAttrib1dv(index::GLuint, v::Ptr{GLdouble})::Void
@createOpenGLFun glColor3f(red::GLfloat, green::GLfloat, blue::GLfloat)::Void
@createOpenGLFun glColor3iv(v::Ptr{GLint})::Void
@createOpenGLFun glRasterPos2fv(v::Ptr{GLfloat})::Void
@createOpenGLFun glRectf(x1::GLfloat, y1::GLfloat, x2::GLfloat, y2::GLfloat)::Void
@createOpenGLFun glPixelMapuiv(map_::GLenum, mapsize::GLsizei, values::Ptr{GLuint})::Void
@createOpenGLFun glUniformMatrix4fv(location::GLint, count::GLsizei, transpose::GLboolean, value::Ptr{GLfloat})::Void
@createOpenGLFun glBlendColor(red::GLfloat, green::GLfloat, blue::GLfloat, alpha::GLfloat)::Void
@createOpenGLFun glFeedbackBuffer(size::GLsizei, type_::GLenum, buffer::Ptr{GLfloat})::Void
@createOpenGLFun glLoadMatrixd(m::Ptr{GLdouble})::Void
@createOpenGLFun glColor4fv(v::Ptr{GLfloat})::Void
@createOpenGLFun glUniformMatrix3x2fv(location::GLint, count::GLsizei, transpose::GLboolean, value::Ptr{GLfloat})::Void
@createOpenGLFun glInitNames()::Void
@createOpenGLFun glDisable(cap::GLenum)::Void
@createOpenGLFun glCopyConvolutionFilter1D(target::GLenum, internalformat::GLenum, x::GLint, y::GLint, width::GLsizei)::Void
@createOpenGLFun glStencilFuncSeparate(face::GLenum, func_::GLenum, ref::GLint, mask::GLuint)::Void
@createOpenGLFun glNormal3b(nx::GLbyte, ny::GLbyte, nz::GLbyte)::Void
@createOpenGLFun glMultiTexCoord2iv(target::GLenum, v::Ptr{GLint})::Void
@createOpenGLFun glHint(target::GLenum, mode::GLenum)::Void
@createOpenGLFun glVertex3s(x::GLshort, y::GLshort, z::GLshort)::Void
@createOpenGLFun glVertex4i(x::GLint, y::GLint, z::GLint, w::GLint)::Void
@createOpenGLFun glTexGeni(coord::GLenum, pname::GLenum, param::GLint)::Void
@createOpenGLFun glPushName(name::GLuint)::Void
@createOpenGLFun glEvalCoord2dv(u::Ptr{GLdouble})::Void
@createOpenGLFun glTexGend(coord::GLenum, pname::GLenum, param::GLdouble)::Void
@createOpenGLFun glIndexfv(c::Ptr{GLfloat})::Void
@createOpenGLFun glIndexub(c::GLubyte)::Void
@createOpenGLFun glTexCoord2f(s::GLfloat, t::GLfloat)::Void
@createOpenGLFun glVertex2f(x::GLfloat, y::GLfloat)::Void
@createOpenGLFun glColor4dv(v::Ptr{GLdouble})::Void
@createOpenGLFun glPixelMapusv(map_::GLenum, mapsize::GLsizei, values::Ptr{GLushort})::Void
@createOpenGLFun glConvolutionParameterfv(target::GLenum, pname::GLenum, params::Ptr{GLfloat})::Void
@createOpenGLFun glWindowPos2i(x::GLint, y::GLint)::Void
@createOpenGLFun glCopyConvolutionFilter2D(target::GLenum, internalformat::GLenum, x::GLint, y::GLint, width::GLsizei, height::GLsizei)::Void
@createOpenGLFun glNormal3f(nx::GLfloat, ny::GLfloat, nz::GLfloat)::Void
@createOpenGLFun glFinish()::Void
@createOpenGLFun glTexImage3D(target::GLenum, level::GLint, internalformat::GLint, width::GLsizei, height::GLsizei, depth::GLsizei, border::GLint, format::GLenum, type_::GLenum, pixels::Ptr{Void})::Void
@createOpenGLFun glVertexAttrib4Nbv(index::GLuint, v::Ptr{GLbyte})::Void
@createOpenGLFun glClear(mask::GLbitfield)::Void
@createOpenGLFun glEvalCoord1fv(u::Ptr{GLfloat})::Void
@createOpenGLFun glColor3sv(v::Ptr{GLshort})::Void
@createOpenGLFun glTexSubImage3D(target::GLenum, level::GLint, xoffset::GLint, yoffset::GLint, zoffset::GLint, width::GLsizei, height::GLsizei, depth::GLsizei, format::GLenum, type_::GLenum, pixels::Ptr{Void})::Void
@createOpenGLFun glShaderSource(shader::GLuint, count::GLsizei, string_::Ptr{Uint8}, length::Ptr{GLint})::Void
@createOpenGLFun glNormal3sv(v::Ptr{GLshort})::Void
@createOpenGLFun glUniform2iv(location::GLint, count::GLsizei, value::Ptr{GLint})::Void
@createOpenGLFun glBindTexture(target::GLenum, texture::GLuint)::Void
@createOpenGLFun glColor3d(red::GLdouble, green::GLdouble, blue::GLdouble)::Void
@createOpenGLFun glMultiTexCoord1dv(target::GLenum, v::Ptr{GLdouble})::Void
@createOpenGLFun glCopyPixels(x::GLint, y::GLint, width::GLsizei, height::GLsizei, type_::GLenum)::Void
@createOpenGLFun glTexCoord1d(s::GLdouble)::Void
@createOpenGLFun glSecondaryColor3ubv(v::Ptr{GLubyte})::Void
@createOpenGLFun glVertex4f(x::GLfloat, y::GLfloat, z::GLfloat, w::GLfloat)::Void
@createOpenGLFun glMatrixMode(mode::GLenum)::Void
@createOpenGLFun glMultiTexCoord1s(target::GLenum, s::GLshort)::Void
@createOpenGLFun glVertexAttrib4iv(index::GLuint, v::Ptr{GLint})::Void
@createOpenGLFun glLineStipple(factor::GLint, pattern::GLushort)::Void
@createOpenGLFun glRasterPos3fv(v::Ptr{GLfloat})::Void
@createOpenGLFun glConvolutionParameteri(target::GLenum, pname::GLenum, params::GLint)::Void
@createOpenGLFun glClientActiveTexture(texture::GLenum)::Void
@createOpenGLFun glTexCoord3i(s::GLint, t::GLint, r::GLint)::Void
@createOpenGLFun glWindowPos2f(x::GLfloat, y::GLfloat)::Void
@createOpenGLFun glDepthRange(near_::GLdouble, far_::GLdouble)::Void
@createOpenGLFun glTexGenf(coord::GLenum, pname::GLenum, param::GLfloat)::Void
@createOpenGLFun glGetVertexAttribfv(index::GLuint, pname::GLenum, params::Ptr{GLfloat})::Void
@createOpenGLFun glGetShaderInfoLog(shader::GLuint, bufSize::GLsizei, length::Ptr{GLsizei}, infoLog::Ptr{GLchar})::Void
@createOpenGLFun glVertex3fv(v::Ptr{GLfloat})::Void
@createOpenGLFun glGetPointerv(pname::GLenum, params::Ptr{Ptr{Void}})::Void
@createOpenGLFun glVertex3sv(v::Ptr{GLshort})::Void
@createOpenGLFun glSecondaryColor3usv(v::Ptr{GLushort})::Void
@createOpenGLFun glVertexAttrib3f(index::GLuint, x::GLfloat, y::GLfloat, z::GLfloat)::Void
@createOpenGLFun glNewList(list::GLuint, mode::GLenum)::Void
@createOpenGLFun glRectsv(v1::Ptr{GLshort}, v2::Ptr{GLshort})::Void
@createOpenGLFun glGenLists(range_::GLsizei)::Cuint
@createOpenGLFun glUniformMatrix2x3fv(location::GLint, count::GLsizei, transpose::GLboolean, value::Ptr{GLfloat})::Void
@createOpenGLFun glColor3s(red::GLshort, green::GLshort, blue::GLshort)::Void
@createOpenGLFun glVertexAttrib3dv(index::GLuint, v::Ptr{GLdouble})::Void
@createOpenGLFun glColor3b(red::GLbyte, green::GLbyte, blue::GLbyte)::Void
@createOpenGLFun glVertex4iv(v::Ptr{GLint})::Void
@createOpenGLFun glEndList()::Void
@createOpenGLFun glHistogram(target::GLenum, width::GLsizei, internalformat::GLenum, sink::GLboolean)::Void
@createOpenGLFun glTexCoord2iv(v::Ptr{GLint})::Void
@createOpenGLFun glGetTexParameterfv(target::GLenum, pname::GLenum, params::Ptr{GLfloat})::Void
@createOpenGLFun glMultiTexCoord1iv(target::GLenum, v::Ptr{GLint})::Void
@createOpenGLFun glResetMinmax(target::GLenum)::Void
@createOpenGLFun glUniformMatrix3fv(location::GLint, count::GLsizei, transpose::GLboolean, value::Ptr{GLfloat})::Void
@createOpenGLFun glScissor(x::GLint, y::GLint, width::GLsizei, height::GLsizei)::Void
@createOpenGLFun glLightfv(light::GLenum, pname::GLenum, params::Ptr{GLfloat})::Void
@createOpenGLFun glDeleteProgram(program::GLuint)::Void
@createOpenGLFun glRasterPos3i(x::GLint, y::GLint, z::GLint)::Void
@createOpenGLFun glTexCoord3s(s::GLshort, t::GLshort, r::GLshort)::Void
@createOpenGLFun glGetProgramiv(program::GLuint, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glGetVertexAttribiv(index::GLuint, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glGetPixelMapuiv(map_::GLenum, values::Ptr{GLuint})::Void
@createOpenGLFun glColor4b(red::GLbyte, green::GLbyte, blue::GLbyte, alpha::GLbyte)::Void
@createOpenGLFun glBindBuffer(target::GLenum, buffer::GLuint)::Void
@createOpenGLFun glEnd()::Void
@createOpenGLFun glRasterPos4d(x::GLdouble, y::GLdouble, z::GLdouble, w::GLdouble)::Void
@createOpenGLFun glStencilMask(mask::GLuint)::Void
@createOpenGLFun glCopyTexSubImage2D(target::GLenum, level::GLint, xoffset::GLint, yoffset::GLint, x::GLint, y::GLint, width::GLsizei, height::GLsizei)::Void
@createOpenGLFun glNormalPointer(type_::GLenum, stride::GLsizei, pointer::Ptr{Void})::Void
@createOpenGLFun glSecondaryColor3ui(red::GLuint, green::GLuint, blue::GLuint)::Void
@createOpenGLFun glGetTexLevelParameterfv(target::GLenum, level::GLint, pname::GLenum, params::Ptr{GLfloat})::Void
@createOpenGLFun glVertex4dv(v::Ptr{GLdouble})::Void
@createOpenGLFun glMultiTexCoord4f(target::GLenum, s::GLfloat, t::GLfloat, r::GLfloat, q::GLfloat)::Void
@createOpenGLFun glMultiTexCoord2f(target::GLenum, s::GLfloat, t::GLfloat)::Void
@createOpenGLFun glTexCoord2s(s::GLshort, t::GLshort)::Void
@createOpenGLFun glColorTable(target::GLenum, internalformat::GLenum, width::GLsizei, format::GLenum, type_::GLenum, table::Ptr{Void})::Void
@createOpenGLFun glOrtho(left::GLdouble, right::GLdouble, bottom::GLdouble, top::GLdouble, zNear::GLdouble, zFar::GLdouble)::Void
@createOpenGLFun glColor3uiv(v::Ptr{GLuint})::Void
@createOpenGLFun glEvalMesh2(mode::GLenum, i1::GLint, i2::GLint, j1::GLint, j2::GLint)::Void
@createOpenGLFun glRects(x1::GLshort, y1::GLshort, x2::GLshort, y2::GLshort)::Void
@createOpenGLFun glGetAttribLocation(program::GLuint, name::Ptr{GLchar})::Cint
@createOpenGLFun glMateriali(face::GLenum, pname::GLenum, param::GLint)::Void
@createOpenGLFun glTexCoord3dv(v::Ptr{GLdouble})::Void
@createOpenGLFun glArrayElement(i::GLint)::Void
@createOpenGLFun glWindowPos2sv(v::Ptr{GLshort})::Void
@createOpenGLFun glVertex2dv(v::Ptr{GLdouble})::Void
@createOpenGLFun glGetMaterialfv(face::GLenum, pname::GLenum, params::Ptr{GLfloat})::Void
@createOpenGLFun glInterleavedArrays(format::GLenum, stride::GLsizei, pointer::Ptr{Void})::Void
@createOpenGLFun glTexParameteri(target::GLenum, pname::GLenum, param::GLint)::Void
@createOpenGLFun glCompressedTexImage2D(target::GLenum, level::GLint, internalformat::GLenum, width::GLsizei, height::GLsizei, border::GLint, imageSize::GLsizei, data::Ptr{Void})::Void
@createOpenGLFun glVertexAttrib2f(index::GLuint, x::GLfloat, y::GLfloat)::Void
@createOpenGLFun glGetShaderSource(shader::GLuint, bufSize::GLsizei, length::Ptr{GLsizei}, source::Ptr{GLchar})::Void
@createOpenGLFun glWindowPos2dv(v::Ptr{GLdouble})::Void
@createOpenGLFun glIsBuffer(buffer::GLuint)::Bool
@createOpenGLFun glUniform3iv(location::GLint, count::GLsizei, value::Ptr{GLint})::Void
@createOpenGLFun glVertexAttrib3fv(index::GLuint, v::Ptr{GLfloat})::Void
@createOpenGLFun glVertex4s(x::GLshort, y::GLshort, z::GLshort, w::GLshort)::Void
@createOpenGLFun glGetAttachedShaders(program::GLuint, maxCount::GLsizei, count::Ptr{GLsizei}, obj::Ptr{GLuint})::Void
@createOpenGLFun glRasterPos4fv(v::Ptr{GLfloat})::Void
@createOpenGLFun glNormal3bv(v::Ptr{GLbyte})::Void
@createOpenGLFun glTexCoord2dv(v::Ptr{GLdouble})::Void
@createOpenGLFun glWindowPos3sv(v::Ptr{GLshort})::Void
@createOpenGLFun glTexCoordPointer(size::GLint, type_::GLenum, stride::GLsizei, pointer::Ptr{Void})::Void
@createOpenGLFun glTexCoord3sv(v::Ptr{GLshort})::Void
@createOpenGLFun glRasterPos3s(x::GLshort, y::GLshort, z::GLshort)::Void
@createOpenGLFun glClearAccum(red::GLfloat, green::GLfloat, blue::GLfloat, alpha::GLfloat)::Void
@createOpenGLFun glSecondaryColor3d(red::GLdouble, green::GLdouble, blue::GLdouble)::Void
@createOpenGLFun glEnableVertexAttribArray(index::GLuint)::Void
@createOpenGLFun glWindowPos2s(x::GLshort, y::GLshort)::Void
@createOpenGLFun glGetSeparableFilter(target::GLenum, format::GLenum, type_::GLenum, row::Ptr{Void}, column::Ptr{Void}, span::Ptr{Void})::Void
@createOpenGLFun glDrawArrays(mode::GLenum, first::GLint, count::GLsizei)::Void
@createOpenGLFun glRasterPos4iv(v::Ptr{GLint})::Void
@createOpenGLFun glGetActiveAttrib(program::GLuint, index::GLuint, bufSize::GLsizei, length::Ptr{GLsizei}, size::Ptr{GLint}, type_::Ptr{GLenum}, name::Ptr{GLchar})::Void
@createOpenGLFun glCopyTexImage1D(target::GLenum, level::GLint, internalformat::GLenum, x::GLint, y::GLint, width::GLsizei, border::GLint)::Void
@createOpenGLFun glWindowPos3i(x::GLint, y::GLint, z::GLint)::Void
@createOpenGLFun glDeleteLists(list::GLuint, range_::GLsizei)::Void
@createOpenGLFun glMultiTexCoord2sv(target::GLenum, v::Ptr{GLshort})::Void
@createOpenGLFun glStencilFunc(func_::GLenum, ref::GLint, mask::GLuint)::Void
@createOpenGLFun glTexGendv(coord::GLenum, pname::GLenum, params::Ptr{GLdouble})::Void
@createOpenGLFun glRasterPos2f(x::GLfloat, y::GLfloat)::Void
@createOpenGLFun glMaterialiv(face::GLenum, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glEvalMesh1(mode::GLenum, i1::GLint, i2::GLint)::Void
@createOpenGLFun glColor3us(red::GLushort, green::GLushort, blue::GLushort)::Void
@createOpenGLFun glGetMapdv(target::GLenum, query::GLenum, v::Ptr{GLdouble})::Void
@createOpenGLFun glConvolutionFilter1D(target::GLenum, internalformat::GLenum, width::GLsizei, format::GLenum, type_::GLenum, image::Ptr{Void})::Void
@createOpenGLFun glCompressedTexImage1D(target::GLenum, level::GLint, internalformat::GLenum, width::GLsizei, border::GLint, imageSize::GLsizei, data::Ptr{Void})::Void
@createOpenGLFun glGetError()::Cint
@createOpenGLFun glVertex2s(x::GLshort, y::GLshort)::Void
@createOpenGLFun glMultiTexCoord1fv(target::GLenum, v::Ptr{GLfloat})::Void
@createOpenGLFun glMultiTexCoord2d(target::GLenum, s::GLdouble, t::GLdouble)::Void
@createOpenGLFun glDisableClientState(array::GLenum)::Void
@createOpenGLFun glGetHistogramParameteriv(target::GLenum, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glGetActiveUniform(program::GLuint, index::GLuint, bufSize::GLsizei, length::Ptr{GLsizei}, size::Ptr{GLint}, type_::Ptr{GLenum}, name::Ptr{GLchar})::Void
@createOpenGLFun glMap1f(target::GLenum, u1::GLfloat, u2::GLfloat, stride::GLint, order::GLint, points::Ptr{GLfloat})::Void
@createOpenGLFun glFogCoordfv(coord::Ptr{GLfloat})::Void
@createOpenGLFun glColor4uiv(v::Ptr{GLuint})::Void
@createOpenGLFun glColor4s(red::GLshort, green::GLshort, blue::GLshort, alpha::GLshort)::Void
@createOpenGLFun glPopClientAttrib()::Void
@createOpenGLFun glColor4ub(red::GLubyte, green::GLubyte, blue::GLubyte, alpha::GLubyte)::Void
@createOpenGLFun glIndexd(c::GLdouble)::Void
@createOpenGLFun glGetHistogram(target::GLenum, reset::GLboolean, format::GLenum, type_::GLenum, values::Ptr{Void})::Void
@createOpenGLFun glUseProgram(program::GLuint)::Void
@createOpenGLFun glMultiTexCoord1i(target::GLenum, s::GLint)::Void
@createOpenGLFun glCallLists(n::GLsizei, type_::GLenum, lists::Ptr{Void})::Void
@createOpenGLFun glUniformMatrix4x2fv(location::GLint, count::GLsizei, transpose::GLboolean, value::Ptr{GLfloat})::Void
@createOpenGLFun glDeleteTextures(n::GLsizei, textures::Ptr{GLuint})::Void
@createOpenGLFun glNormal3i(nx::GLint, ny::GLint, nz::GLint)::Void
@createOpenGLFun glFogiv(pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glRasterPos2s(x::GLshort, y::GLshort)::Void
@createOpenGLFun glCompressedTexSubImage1D(target::GLenum, level::GLint, xoffset::GLint, width::GLsizei, format::GLenum, imageSize::GLsizei, data::Ptr{Void})::Void
@createOpenGLFun glIndexiv(c::Ptr{GLint})::Void
@createOpenGLFun glVertexAttrib4sv(index::GLuint, v::Ptr{GLshort})::Void
@createOpenGLFun glPrioritizeTextures(n::GLsizei, textures::Ptr{GLuint}, priorities::Ptr{GLfloat})::Void
@createOpenGLFun glWindowPos3f(x::GLfloat, y::GLfloat, z::GLfloat)::Void
@createOpenGLFun glMultiTexCoord3d(target::GLenum, s::GLdouble, t::GLdouble, r::GLdouble)::Void
@createOpenGLFun glSecondaryColor3dv(v::Ptr{GLdouble})::Void
@createOpenGLFun glTexParameterf(target::GLenum, pname::GLenum, param::GLfloat)::Void
@createOpenGLFun glTexEnviv(target::GLenum, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glTexCoord1sv(v::Ptr{GLshort})::Void
@createOpenGLFun glVertexAttrib1s(index::GLuint, x::GLshort)::Void
@createOpenGLFun glColor4usv(v::Ptr{GLushort})::Void
@createOpenGLFun glDeleteShader(shader::GLuint)::Void
@createOpenGLFun glCullFace(mode::GLenum)::Void
@createOpenGLFun glIndexf(c::GLfloat)::Void
@createOpenGLFun glRectfv(v1::Ptr{GLfloat}, v2::Ptr{GLfloat})::Void
@createOpenGLFun glVertex4fv(v::Ptr{GLfloat})::Void
@createOpenGLFun glMultMatrixf(m::Ptr{GLfloat})::Void
@createOpenGLFun glColor4f(red::GLfloat, green::GLfloat, blue::GLfloat, alpha::GLfloat)::Void
@createOpenGLFun glGenBuffers(n::GLsizei, buffers::Ptr{GLuint})::Void
@createOpenGLFun glTexCoord1i(s::GLint)::Void
@createOpenGLFun glTexParameterfv(target::GLenum, pname::GLenum, params::Ptr{GLfloat})::Void
@createOpenGLFun glMultiTexCoord4s(target::GLenum, s::GLshort, t::GLshort, r::GLshort, q::GLshort)::Void
@createOpenGLFun glTexCoord1s(s::GLshort)::Void
@createOpenGLFun glEvalCoord2f(u::GLfloat, v::GLfloat)::Void
@createOpenGLFun glMultiTexCoord4i(target::GLenum, s::GLint, t::GLint, r::GLint, q::GLint)::Void
@createOpenGLFun glMultiDrawElements(mode::GLenum, count::Ptr{GLsizei}, type_::GLenum, indices::Ptr{Ptr{Void}}, drawcount::GLsizei)::Void
@createOpenGLFun glDepthMask(flag::GLboolean)::Void
@createOpenGLFun glTexCoord3f(s::GLfloat, t::GLfloat, r::GLfloat)::Void
@createOpenGLFun glDrawPixels(width::GLsizei, height::GLsizei, format::GLenum, type_::GLenum, pixels::Ptr{Void})::Void
@createOpenGLFun glLineWidth(width::GLfloat)::Void
@createOpenGLFun glPolygonMode(face::GLenum, mode::GLenum)::Void
@createOpenGLFun glMultiTexCoord1d(target::GLenum, s::GLdouble)::Void
@createOpenGLFun glMultiTexCoord4sv(target::GLenum, v::Ptr{GLshort})::Void
@createOpenGLFun glGetTexEnvfv(target::GLenum, pname::GLenum, params::Ptr{GLfloat})::Void
@createOpenGLFun glIsList(list::GLuint)::Bool
@createOpenGLFun glGetBufferPointerv(target::GLenum, pname::GLenum, params::Ptr{Ptr{Void}})::Void
@createOpenGLFun glColorTableParameterfv(target::GLenum, pname::GLenum, params::Ptr{GLfloat})::Void
@createOpenGLFun glCompressedTexSubImage3D(target::GLenum, level::GLint, xoffset::GLint, yoffset::GLint, zoffset::GLint, width::GLsizei, height::GLsizei, depth::GLsizei, format::GLenum, imageSize::GLsizei, data::Ptr{Void})::Void
@createOpenGLFun glVertexAttrib4uiv(index::GLuint, v::Ptr{GLuint})::Void
@createOpenGLFun glUniform1i(location::GLint, v0::GLint)::Void
@createOpenGLFun glFlush()::Void
@createOpenGLFun glFrustum(left::GLdouble, right::GLdouble, bottom::GLdouble, top::GLdouble, zNear::GLdouble, zFar::GLdouble)::Void
@createOpenGLFun glScalef(x::GLfloat, y::GLfloat, z::GLfloat)::Void
@createOpenGLFun glPushClientAttrib(mask::GLbitfield)::Void
@createOpenGLFun glSelectBuffer(size::GLsizei, buffer::Ptr{GLuint})::Void
@createOpenGLFun glVertex2iv(v::Ptr{GLint})::Void
@createOpenGLFun glTexCoord4s(s::GLshort, t::GLshort, r::GLshort, q::GLshort)::Void
@createOpenGLFun glColor3bv(v::Ptr{GLbyte})::Void
@createOpenGLFun glUniform1iv(location::GLint, count::GLsizei, value::Ptr{GLint})::Void
@createOpenGLFun glVertex3i(x::GLint, y::GLint, z::GLint)::Void
@createOpenGLFun glRasterPos2iv(v::Ptr{GLint})::Void
@createOpenGLFun glUniform1fv(location::GLint, count::GLsizei, value::Ptr{GLfloat})::Void
@createOpenGLFun glEvalCoord2fv(u::Ptr{GLfloat})::Void
@createOpenGLFun glColor4ubv(v::Ptr{GLubyte})::Void
@createOpenGLFun glMap2f(target::GLenum, u1::GLfloat, u2::GLfloat, ustride::GLint, uorder::GLint, v1::GLfloat, v2::GLfloat, vstride::GLint, vorder::GLint, points::Ptr{GLfloat})::Void
@createOpenGLFun glMapGrid2f(un::GLint, u1::GLfloat, u2::GLfloat, vn::GLint, v1::GLfloat, v2::GLfloat)::Void
@createOpenGLFun glConvolutionFilter2D(target::GLenum, internalformat::GLenum, width::GLsizei, height::GLsizei, format::GLenum, type_::GLenum, image::Ptr{Void})::Void
@createOpenGLFun glActiveTexture(texture::GLenum)::Void
@createOpenGLFun glIsTexture(texture::GLuint)::Bool
@createOpenGLFun glColorSubTable(target::GLenum, start::GLsizei, count::GLsizei, format::GLenum, type_::GLenum, data::Ptr{Void})::Void
@createOpenGLFun glIsProgram(program::GLuint)::Bool
@createOpenGLFun glAlphaFunc(func_::GLenum, ref::GLfloat)::Void
@createOpenGLFun glCallList(list::GLuint)::Void
@createOpenGLFun glColor4us(red::GLushort, green::GLushort, blue::GLushort, alpha::GLushort)::Void
@createOpenGLFun glPolygonOffset(factor::GLfloat, units::GLfloat)::Void
@createOpenGLFun glDrawRangeElements(mode::GLenum, start::GLuint, END::GLuint, count::GLsizei, type_::GLenum, indices::Ptr{Void})::Void
@createOpenGLFun glDetachShader(program::GLuint, shader::GLuint)::Void
@createOpenGLFun glVertexAttrib4f(index::GLuint, x::GLfloat, y::GLfloat, z::GLfloat, w::GLfloat)::Void
@createOpenGLFun glCopyTexSubImage3D(target::GLenum, level::GLint, xoffset::GLint, yoffset::GLint, zoffset::GLint, x::GLint, y::GLint, width::GLsizei, height::GLsizei)::Void
@createOpenGLFun glNormal3d(nx::GLdouble, ny::GLdouble, nz::GLdouble)::Void
@createOpenGLFun glVertex3d(x::GLdouble, y::GLdouble, z::GLdouble)::Void
@createOpenGLFun glMultMatrixd(m::Ptr{GLdouble})::Void
@createOpenGLFun glSecondaryColor3uiv(v::Ptr{GLuint})::Void
@createOpenGLFun glStencilMaskSeparate(face::GLenum, mask::GLuint)::Void
@createOpenGLFun glGetProgramInfoLog(program::GLuint, bufSize::GLsizei, length::Ptr{GLsizei}, infoLog::Ptr{GLchar})::Void
@createOpenGLFun glTranslated(x::GLdouble, y::GLdouble, z::GLdouble)::Void
@createOpenGLFun glMultiTexCoord3sv(target::GLenum, v::Ptr{GLshort})::Void
@createOpenGLFun glMaterialf(face::GLenum, pname::GLenum, param::GLfloat)::Void
@createOpenGLFun glVertexAttrib4dv(index::GLuint, v::Ptr{GLdouble})::Void
@createOpenGLFun glVertexAttrib2d(index::GLuint, x::GLdouble, y::GLdouble)::Void
@createOpenGLFun glNormal3fv(v::Ptr{GLfloat})::Void
@createOpenGLFun glRasterPos3sv(v::Ptr{GLshort})::Void
@createOpenGLFun glCreateProgram()::Cuint
@createOpenGLFun glTexCoord1iv(v::Ptr{GLint})::Void
@createOpenGLFun glRotated(angle::GLdouble, x::GLdouble, y::GLdouble, z::GLdouble)::Void
@createOpenGLFun glLoadIdentity()::Void
@createOpenGLFun glGetColorTableParameteriv(target::GLenum, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glTexParameteriv(target::GLenum, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glTexGenfv(coord::GLenum, pname::GLenum, params::Ptr{GLfloat})::Void
@createOpenGLFun glGetTexGeniv(coord::GLenum, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glRasterPos2d(x::GLdouble, y::GLdouble)::Void
@createOpenGLFun glGetIntegerv(pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glGetVertexAttribdv(index::GLuint, pname::GLenum, params::Ptr{GLdouble})::Void
@createOpenGLFun glBlendEquationSeparate(modeRGB::GLenum, modeAlpha::GLenum)::Void
@createOpenGLFun glIndexdv(c::Ptr{GLdouble})::Void
@createOpenGLFun glEnable(cap::GLenum)::Void
@createOpenGLFun glColor4i(red::GLint, green::GLint, blue::GLint, alpha::GLint)::Void
@createOpenGLFun glLightModeliv(pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glRasterPos2i(x::GLint, y::GLint)::Void
@createOpenGLFun glMultiTexCoord4d(target::GLenum, s::GLdouble, t::GLdouble, r::GLdouble, q::GLdouble)::Void
@createOpenGLFun glBindAttribLocation(program::GLuint, index::GLuint, name::Ptr{GLchar})::Void
@createOpenGLFun glMapGrid1f(un::GLint, u1::GLfloat, u2::GLfloat)::Void
@createOpenGLFun glIsShader(shader::GLuint)::Bool
@createOpenGLFun glUniformMatrix4x3fv(location::GLint, count::GLsizei, transpose::GLboolean, value::Ptr{GLfloat})::Void
@createOpenGLFun glAreTexturesResident(n::GLsizei, textures::Ptr{GLuint}, residences::Ptr{GLboolean})::Bool
@createOpenGLFun glGetQueryObjectuiv(id::GLuint, pname::GLenum, params::Ptr{GLuint})::Void
@createOpenGLFun glValidateProgram(program::GLuint)::Void
@createOpenGLFun glPointParameterf(pname::GLenum, param::GLfloat)::Void
@createOpenGLFun glIndexubv(c::Ptr{GLubyte})::Void
@createOpenGLFun glMap2d(target::GLenum, u1::GLdouble, u2::GLdouble, ustride::GLint, uorder::GLint, v1::GLdouble, v2::GLdouble, vstride::GLint, vorder::GLint, points::Ptr{GLdouble})::Void
@createOpenGLFun glVertex2d(x::GLdouble, y::GLdouble)::Void
@createOpenGLFun glMultiTexCoord2fv(target::GLenum, v::Ptr{GLfloat})::Void
@createOpenGLFun glLightModelfv(pname::GLenum, params::Ptr{GLfloat})::Void
@createOpenGLFun glGetCompressedTexImage(target::GLenum, level::GLint, img::Ptr{Void})::Void
@createOpenGLFun glColorPointer(size::GLint, type_::GLenum, stride::GLsizei, pointer::Ptr{Void})::Void
@createOpenGLFun glTranslatef(x::GLfloat, y::GLfloat, z::GLfloat)::Void
@createOpenGLFun glWindowPos3fv(v::Ptr{GLfloat})::Void
@createOpenGLFun glGetColorTableParameterfv(target::GLenum, pname::GLenum, params::Ptr{GLfloat})::Void
@createOpenGLFun glStencilOpSeparate(face::GLenum, sfail::GLenum, dpfail::GLenum, dppass::GLenum)::Void
@createOpenGLFun glVertex2i(x::GLint, y::GLint)::Void
@createOpenGLFun glMultiTexCoord3iv(target::GLenum, v::Ptr{GLint})::Void
@createOpenGLFun glMultiTexCoord2i(target::GLenum, s::GLint, t::GLint)::Void
@createOpenGLFun glGetTexGendv(coord::GLenum, pname::GLenum, params::Ptr{GLdouble})::Void
@createOpenGLFun glTexCoord3iv(v::Ptr{GLint})::Void
@createOpenGLFun glTexCoord2i(s::GLint, t::GLint)::Void
@createOpenGLFun glWindowPos3dv(v::Ptr{GLdouble})::Void
@createOpenGLFun glVertex2fv(v::Ptr{GLfloat})::Void
@createOpenGLFun glRasterPos4i(x::GLint, y::GLint, z::GLint, w::GLint)::Void
@createOpenGLFun glMultiTexCoord1f(target::GLenum, s::GLfloat)::Void
@createOpenGLFun glMultiTexCoord4iv(target::GLenum, v::Ptr{GLint})::Void
@createOpenGLFun glGetClipPlane(plane::GLenum, equation::Ptr{GLdouble})::Void
@createOpenGLFun glWindowPos2fv(v::Ptr{GLfloat})::Void
@createOpenGLFun glVertexPointer(size::GLint, type_::GLenum, stride::GLsizei, pointer::Ptr{Void})::Void
@createOpenGLFun glUnmapBuffer(target::GLenum)::Bool
@createOpenGLFun glVertexAttrib3d(index::GLuint, x::GLdouble, y::GLdouble, z::GLdouble)::Void
@createOpenGLFun glGetDoublev(pname::GLenum, params::Ptr{GLdouble})::Void
@createOpenGLFun glEndQuery(target::GLenum)::Void
@createOpenGLFun glViewport(x::GLint, y::GLint, width::GLsizei, height::GLsizei)::Void
@createOpenGLFun glTexImage1D(target::GLenum, level::GLint, internalformat::GLint, width::GLsizei, border::GLint, format::GLenum, type_::GLenum, pixels::Ptr{Void})::Void
@createOpenGLFun glStencilOp(fail::GLenum, zfail::GLenum, zpass::GLenum)::Void
@createOpenGLFun glTexCoord4iv(v::Ptr{GLint})::Void
@createOpenGLFun glGetMapfv(target::GLenum, query::GLenum, v::Ptr{GLfloat})::Void
@createOpenGLFun glResetHistogram(target::GLenum)::Void
@createOpenGLFun glRectdv(v1::Ptr{GLdouble}, v2::Ptr{GLdouble})::Void
@createOpenGLFun glCompressedTexImage3D(target::GLenum, level::GLint, internalformat::GLenum, width::GLsizei, height::GLsizei, depth::GLsizei, border::GLint, imageSize::GLsizei, data::Ptr{Void})::Void
@createOpenGLFun glFogCoorddv(coord::Ptr{GLdouble})::Void
@createOpenGLFun glNormal3dv(v::Ptr{GLdouble})::Void
@createOpenGLFun glEdgeFlagPointer(stride::GLsizei, pointer::Ptr{Void})::Void
@createOpenGLFun glColor3ui(red::GLuint, green::GLuint, blue::GLuint)::Void
@createOpenGLFun glMultiTexCoord3s(target::GLenum, s::GLshort, t::GLshort, r::GLshort)::Void
@createOpenGLFun glColor4sv(v::Ptr{GLshort})::Void
@createOpenGLFun glLoadMatrixf(m::Ptr{GLfloat})::Void
@createOpenGLFun glDisableVertexAttribArray(index::GLuint)::Void
@createOpenGLFun glMap1d(target::GLenum, u1::GLdouble, u2::GLdouble, stride::GLint, order::GLint, points::Ptr{GLdouble})::Void
@createOpenGLFun glIndexs(c::GLshort)::Void
@createOpenGLFun glNormal3s(nx::GLshort, ny::GLshort, nz::GLshort)::Void
@createOpenGLFun glVertexAttrib4Nubv(index::GLuint, v::Ptr{GLubyte})::Void
@createOpenGLFun glUniform1f(location::GLint, v0::GLfloat)::Void
@createOpenGLFun glCompressedTexSubImage2D(target::GLenum, level::GLint, xoffset::GLint, yoffset::GLint, width::GLsizei, height::GLsizei, format::GLenum, imageSize::GLsizei, data::Ptr{Void})::Void
@createOpenGLFun glGetVertexAttribPointerv(index::GLuint, pname::GLenum, pointer::Ptr{Ptr{Void}})::Void
@createOpenGLFun glTexCoord1f(s::GLfloat)::Void
@createOpenGLFun glGetQueryiv(target::GLenum, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glTexCoord4sv(v::Ptr{GLshort})::Void
@createOpenGLFun glRenderMode(mode::GLenum)::Cint
@createOpenGLFun glMinmax(target::GLenum, internalformat::GLenum, sink::GLboolean)::Void
@createOpenGLFun glPixelTransferi(pname::GLenum, param::GLint)::Void
@createOpenGLFun glGetTexEnviv(target::GLenum, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glColor3ub(red::GLubyte, green::GLubyte, blue::GLubyte)::Void
@createOpenGLFun glShadeModel(mode::GLenum)::Void
@createOpenGLFun glAccum(op::GLenum, value::GLfloat)::Void
@createOpenGLFun glTexCoord3fv(v::Ptr{GLfloat})::Void
@createOpenGLFun glPixelStorei(pname::GLenum, param::GLint)::Void
@createOpenGLFun glTexCoord4f(s::GLfloat, t::GLfloat, r::GLfloat, q::GLfloat)::Void
@createOpenGLFun glPixelTransferf(pname::GLenum, param::GLfloat)::Void
@createOpenGLFun glGetPixelMapusv(map_::GLenum, values::Ptr{GLushort})::Void
@createOpenGLFun glIndexPointer(type_::GLenum, stride::GLsizei, pointer::Ptr{Void})::Void
@createOpenGLFun glMultiDrawArrays(mode::GLenum, first::Ptr{GLint}, count::Ptr{GLsizei}, drawcount::GLsizei)::Void
@createOpenGLFun glSecondaryColor3b(red::GLbyte, green::GLbyte, blue::GLbyte)::Void
@createOpenGLFun glBeginQuery(target::GLenum, id::GLuint)::Void
@createOpenGLFun glVertexAttrib3sv(index::GLuint, v::Ptr{GLshort})::Void
@createOpenGLFun glVertexAttrib4Nub(index::GLuint, x::GLubyte, y::GLubyte, z::GLubyte, w::GLubyte)::Void
@createOpenGLFun glVertexAttrib4usv(index::GLuint, v::Ptr{GLushort})::Void
@createOpenGLFun glDrawBuffer(mode::GLenum)::Void
@createOpenGLFun glTexEnvfv(target::GLenum, pname::GLenum, params::Ptr{GLfloat})::Void
@createOpenGLFun glMultiTexCoord3dv(target::GLenum, v::Ptr{GLdouble})::Void
@createOpenGLFun glLogicOp(opcode::GLenum)::Void
@createOpenGLFun glPopMatrix()::Void
@createOpenGLFun glFogf(pname::GLenum, param::GLfloat)::Void
@createOpenGLFun glEnableClientState(array::GLenum)::Void
@createOpenGLFun glMultiTexCoord1sv(target::GLenum, v::Ptr{GLshort})::Void
@createOpenGLFun glMultiTexCoord4dv(target::GLenum, v::Ptr{GLdouble})::Void
@createOpenGLFun glVertexAttrib4Nusv(index::GLuint, v::Ptr{GLushort})::Void
@createOpenGLFun glGetMaterialiv(face::GLenum, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glVertexAttrib1f(index::GLuint, x::GLfloat)::Void
@createOpenGLFun glCopyColorTable(target::GLenum, internalformat::GLenum, x::GLint, y::GLint, width::GLsizei)::Void
@createOpenGLFun glIndexsv(c::Ptr{GLshort})::Void
@createOpenGLFun glGetShaderiv(shader::GLuint, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glGetBufferParameteriv(target::GLenum, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glVertexAttrib4Nuiv(index::GLuint, v::Ptr{GLuint})::Void
@createOpenGLFun glVertexAttrib2sv(index::GLuint, v::Ptr{GLshort})::Void
@createOpenGLFun glMultiTexCoord2dv(target::GLenum, v::Ptr{GLdouble})::Void
@createOpenGLFun glTexCoord1dv(v::Ptr{GLdouble})::Void
@createOpenGLFun glColor3fv(v::Ptr{GLfloat})::Void
@createOpenGLFun glColorMask(red::GLboolean, green::GLboolean, blue::GLboolean, alpha::GLboolean)::Void
@createOpenGLFun glMultiTexCoord4fv(target::GLenum, v::Ptr{GLfloat})::Void
@createOpenGLFun glPointParameteri(pname::GLenum, param::GLint)::Void
@createOpenGLFun glSecondaryColor3iv(v::Ptr{GLint})::Void
@createOpenGLFun glWindowPos2d(x::GLdouble, y::GLdouble)::Void
@createOpenGLFun glBlendFuncSeparate(sfactorRGB::GLenum, dfactorRGB::GLenum, sfactorAlpha::GLenum, dfactorAlpha::GLenum)::Void
@createOpenGLFun glEdgeFlag(flag::GLboolean)::Void
@createOpenGLFun glPointSize(size::GLfloat)::Void
@createOpenGLFun glConvolutionParameteriv(target::GLenum, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glTexGeniv(coord::GLenum, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glSecondaryColor3us(red::GLushort, green::GLushort, blue::GLushort)::Void
@createOpenGLFun glUniform3fv(location::GLint, count::GLsizei, value::Ptr{GLfloat})::Void
@createOpenGLFun glSecondaryColor3fv(v::Ptr{GLfloat})::Void
@createOpenGLFun glUniform4i(location::GLint, v0::GLint, v1::GLint, v2::GLint, v3::GLint)::Void
@createOpenGLFun glListBase(base::GLuint)::Void
@createOpenGLFun glVertex3dv(v::Ptr{GLdouble})::Void
@createOpenGLFun glMapGrid1d(un::GLint, u1::GLdouble, u2::GLdouble)::Void
@createOpenGLFun glBegin(mode::GLenum)::Void
@createOpenGLFun glGetTexGenfv(coord::GLenum, pname::GLenum, params::Ptr{GLfloat})::Void
@createOpenGLFun glGetUniformfv(program::GLuint, location::GLint, params::Ptr{GLfloat})::Void
@createOpenGLFun glSecondaryColor3s(red::GLshort, green::GLshort, blue::GLshort)::Void
@createOpenGLFun glTexCoord1fv(v::Ptr{GLfloat})::Void
@createOpenGLFun glDrawBuffers(n::GLsizei, bufs::Ptr{GLenum})::Void
@createOpenGLFun glLoadTransposeMatrixd(m::Ptr{GLdouble})::Void
@createOpenGLFun glRasterPos4s(x::GLshort, y::GLshort, z::GLshort, w::GLshort)::Void
@createOpenGLFun glCopyTexSubImage1D(target::GLenum, level::GLint, xoffset::GLint, x::GLint, y::GLint, width::GLsizei)::Void
@createOpenGLFun glGetMinmax(target::GLenum, reset::GLboolean, format::GLenum, type_::GLenum, values::Ptr{Void})::Void
@createOpenGLFun glLightModelf(pname::GLenum, param::GLfloat)::Void
@createOpenGLFun glDeleteQueries(n::GLsizei, ids::Ptr{GLuint})::Void
@createOpenGLFun glIsEnabled(cap::GLenum)::Bool
@createOpenGLFun glCompileShader(shader::GLuint)::Void
@createOpenGLFun glVertexAttrib1sv(index::GLuint, v::Ptr{GLshort})::Void
@createOpenGLFun glLinkProgram(program::GLuint)::Void
@createOpenGLFun glGetPolygonStipple(mask::Ptr{GLubyte})::Void
@createOpenGLFun glReadPixels(x::GLint, y::GLint, width::GLsizei, height::GLsizei, format::GLenum, type_::GLenum, pixels::Ptr{Void})::Void
@createOpenGLFun glMultiTexCoord3f(target::GLenum, s::GLfloat, t::GLfloat, r::GLfloat)::Void
@createOpenGLFun glTexCoord2fv(v::Ptr{GLfloat})::Void
@createOpenGLFun glVertexAttrib2dv(index::GLuint, v::Ptr{GLdouble})::Void
@createOpenGLFun glTexEnvf(target::GLenum, pname::GLenum, param::GLfloat)::Void
@createOpenGLFun glTexCoord4fv(v::Ptr{GLfloat})::Void
@createOpenGLFun glBufferData(target::GLenum, size::GLsizeiptr, data::Ptr{Void}, usage::GLenum)::Void
@createOpenGLFun glCreateShader(type_::GLenum)::Cuint
@createOpenGLFun glGetUniformiv(program::GLuint, location::GLint, params::Ptr{GLint})::Void
@createOpenGLFun glGetConvolutionParameterfv(target::GLenum, pname::GLenum, params::Ptr{GLfloat})::Void
@createOpenGLFun glTexImage2D(target::GLenum, level::GLint, internalformat::GLint, width::GLsizei, height::GLsizei, border::GLint, format::GLenum, type_::GLenum, pixels::Ptr{Void})::Void
@createOpenGLFun glColor3dv(v::Ptr{GLdouble})::Void
@createOpenGLFun glEdgeFlagv(flag::Ptr{GLboolean})::Void
@createOpenGLFun glColor4ui(red::GLuint, green::GLuint, blue::GLuint, alpha::GLuint)::Void
@createOpenGLFun glGetMinmaxParameteriv(target::GLenum, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glPointParameteriv(pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glEvalCoord2d(u::GLdouble, v::GLdouble)::Void
@createOpenGLFun glGetConvolutionParameteriv(target::GLenum, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glGetUniformLocation(program::GLuint, name::Ptr{GLchar})::Cint
@createOpenGLFun glGetTexImage(target::GLenum, level::GLint, format::GLenum, type_::GLenum, pixels::Ptr{Void})::Void
@createOpenGLFun glGetTexLevelParameteriv(target::GLenum, level::GLint, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glPushAttrib(mask::GLbitfield)::Void
@createOpenGLFun glVertexAttrib2fv(index::GLuint, v::Ptr{GLfloat})::Void
@createOpenGLFun glVertexAttrib4bv(index::GLuint, v::Ptr{GLbyte})::Void
@createOpenGLFun glUniform2fv(location::GLint, count::GLsizei, value::Ptr{GLfloat})::Void
@createOpenGLFun glColor3usv(v::Ptr{GLushort})::Void
@createOpenGLFun glTexSubImage2D(target::GLenum, level::GLint, xoffset::GLint, yoffset::GLint, width::GLsizei, height::GLsizei, format::GLenum, type_::GLenum, pixels::Ptr{Void})::Void
@createOpenGLFun glGetHistogramParameterfv(target::GLenum, pname::GLenum, params::Ptr{GLfloat})::Void
@createOpenGLFun glPixelStoref(pname::GLenum, param::GLfloat)::Void
@createOpenGLFun glPushMatrix()::Void
@createOpenGLFun glFogi(pname::GLenum, param::GLint)::Void
@createOpenGLFun glPixelZoom(xfactor::GLfloat, yfactor::GLfloat)::Void
@createOpenGLFun glTexSubImage1D(target::GLenum, level::GLint, xoffset::GLint, width::GLsizei, format::GLenum, type_::GLenum, pixels::Ptr{Void})::Void
@createOpenGLFun glLightModeli(pname::GLenum, param::GLint)::Void
@createOpenGLFun glTexCoord4i(s::GLint, t::GLint, r::GLint, q::GLint)::Void
@createOpenGLFun glFogCoordf(coord::GLfloat)::Void
@createOpenGLFun glVertexAttrib2s(index::GLuint, x::GLshort, y::GLshort)::Void
@createOpenGLFun glDrawElements(mode::GLenum, count::GLsizei, type_::GLenum, indices::Ptr{Void})::Void
@createOpenGLFun glWindowPos3d(x::GLdouble, y::GLdouble, z::GLdouble)::Void
@createOpenGLFun glFogfv(pname::GLenum, params::Ptr{GLfloat})::Void
@createOpenGLFun glScaled(x::GLdouble, y::GLdouble, z::GLdouble)::Void
@createOpenGLFun glGetBufferSubData(target::GLenum, offset::GLintptr, size::GLsizeiptr, data::Ptr{Void})::Void
@createOpenGLFun glUniform4fv(location::GLint, count::GLsizei, value::Ptr{GLfloat})::Void
@createOpenGLFun glRasterPos3d(x::GLdouble, y::GLdouble, z::GLdouble)::Void
@createOpenGLFun glColor3ubv(v::Ptr{GLubyte})::Void
@createOpenGLFun glColor4iv(v::Ptr{GLint})::Void
@createOpenGLFun glGetLightiv(light::GLenum, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glUniform2i(location::GLint, v0::GLint, v1::GLint)::Void
@createOpenGLFun glWindowPos3s(x::GLshort, y::GLshort, z::GLshort)::Void
@createOpenGLFun glMaterialfv(face::GLenum, pname::GLenum, params::Ptr{GLfloat})::Void
@createOpenGLFun glSecondaryColor3i(red::GLint, green::GLint, blue::GLint)::Void
@createOpenGLFun glRasterPos3dv(v::Ptr{GLdouble})::Void
@createOpenGLFun glPixelMapfv(map_::GLenum, mapsize::GLsizei, values::Ptr{GLfloat})::Void
@createOpenGLFun glAttachShader(program::GLuint, shader::GLuint)::Void
@createOpenGLFun glPolygonStipple(mask::Ptr{GLubyte})::Void
@createOpenGLFun glEvalCoord1f(u::GLfloat)::Void
@createOpenGLFun glIndexi(c::GLint)::Void
@createOpenGLFun glLoadName(name::GLuint)::Void
@createOpenGLFun glRasterPos4f(x::GLfloat, y::GLfloat, z::GLfloat, w::GLfloat)::Void
@createOpenGLFun glIndexMask(mask::GLuint)::Void
@createOpenGLFun glTexCoord2d(s::GLdouble, t::GLdouble)::Void
@createOpenGLFun glMultTransposeMatrixf(m::Ptr{GLfloat})::Void
@createOpenGLFun glVertexAttrib4fv(index::GLuint, v::Ptr{GLfloat})::Void
@createOpenGLFun glDepthFunc(func_::GLenum)::Void
@createOpenGLFun glSecondaryColor3sv(v::Ptr{GLshort})::Void
@createOpenGLFun glVertex3f(x::GLfloat, y::GLfloat, z::GLfloat)::Void
@createOpenGLFun glUniformMatrix2x4fv(location::GLint, count::GLsizei, transpose::GLboolean, value::Ptr{GLfloat})::Void
@createOpenGLFun glMultTransposeMatrixd(m::Ptr{GLdouble})::Void
@createOpenGLFun glBufferSubData(target::GLenum, offset::GLintptr, size::GLsizeiptr, data::Ptr{Void})::Void
@createOpenGLFun glUniformMatrix3x4fv(location::GLint, count::GLsizei, transpose::GLboolean, value::Ptr{GLfloat})::Void
@createOpenGLFun glColorMaterial(face::GLenum, mode::GLenum)::Void
@createOpenGLFun glCopyColorSubTable(target::GLenum, start::GLsizei, x::GLint, y::GLint, width::GLsizei)::Void
@createOpenGLFun glRecti(x1::GLint, y1::GLint, x2::GLint, y2::GLint)::Void
@createOpenGLFun glIsQuery(id::GLuint)::Bool
@createOpenGLFun glUniform4iv(location::GLint, count::GLsizei, value::Ptr{GLint})::Void
@createOpenGLFun glCopyTexImage2D(target::GLenum, level::GLint, internalformat::GLenum, x::GLint, y::GLint, width::GLsizei, height::GLsizei, border::GLint)::Void
@createOpenGLFun glRotatef(angle::GLfloat, x::GLfloat, y::GLfloat, z::GLfloat)::Void
@createOpenGLFun glRasterPos2sv(v::Ptr{GLshort})::Void
@createOpenGLFun glGenQueries(n::GLsizei, ids::Ptr{GLuint})::Void
@createOpenGLFun glWindowPos2iv(v::Ptr{GLint})::Void
@createOpenGLFun glClearIndex(c::GLfloat)::Void
@createOpenGLFun glVertexAttrib4Nsv(index::GLuint, v::Ptr{GLshort})::Void
@createOpenGLFun glTexCoord4d(s::GLdouble, t::GLdouble, r::GLdouble, q::GLdouble)::Void
@createOpenGLFun glFogCoordd(coord::GLdouble)::Void
@createOpenGLFun glPopName()::Void
@createOpenGLFun glUniform2f(location::GLint, v0::GLfloat, v1::GLfloat)::Void
@createOpenGLFun glVertexAttrib4ubv(index::GLuint, v::Ptr{GLubyte})::Void
@createOpenGLFun glLighti(light::GLenum, pname::GLenum, param::GLint)::Void
@createOpenGLFun glSecondaryColorPointer(size::GLint, type_::GLenum, stride::GLsizei, pointer::Ptr{Void})::Void
@createOpenGLFun glRasterPos4dv(v::Ptr{GLdouble})::Void
@createOpenGLFun glDeleteBuffers(n::GLsizei, buffers::Ptr{GLuint})::Void
@createOpenGLFun glTexCoord4dv(v::Ptr{GLdouble})::Void
@createOpenGLFun glClipPlane(plane::GLenum, equation::Ptr{GLdouble})::Void
@createOpenGLFun glFogCoordPointer(type_::GLenum, stride::GLsizei, pointer::Ptr{Void})::Void
@createOpenGLFun glBlendFunc(sfactor::GLenum, dfactor::GLenum)::Void
@createOpenGLFun glGetPixelMapfv(map_::GLenum, values::Ptr{GLfloat})::Void
@createOpenGLFun glRasterPos2dv(v::Ptr{GLdouble})::Void
@createOpenGLFun glMapGrid2d(un::GLint, u1::GLdouble, u2::GLdouble, vn::GLint, v1::GLdouble, v2::GLdouble)::Void
@createOpenGLFun glEvalCoord1d(u::GLdouble)::Void
@createOpenGLFun glSecondaryColor3ub(red::GLubyte, green::GLubyte, blue::GLubyte)::Void
@createOpenGLFun glGetBooleanv(pname::GLenum, params::Ptr{GLboolean})::Void
@createOpenGLFun glMultiTexCoord3fv(target::GLenum, v::Ptr{GLfloat})::Void
@createOpenGLFun glVertexAttrib4s(index::GLuint, x::GLshort, y::GLshort, z::GLshort, w::GLshort)::Void
@createOpenGLFun glGetTexParameteriv(target::GLenum, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glVertexAttribPointer(index::GLuint, size::GLint, type_::GLenum, normalized::GLboolean, stride::GLsizei, pointer::Ptr{Void})::Void
@createOpenGLFun glFrontFace(mode::GLenum)::Void
@createOpenGLFun glColorTableParameteriv(target::GLenum, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glRasterPos3iv(v::Ptr{GLint})::Void
@createOpenGLFun glColor4d(red::GLdouble, green::GLdouble, blue::GLdouble, alpha::GLdouble)::Void
@createOpenGLFun glPointParameterfv(pname::GLenum, params::Ptr{GLfloat})::Void
@createOpenGLFun glVertexAttrib1fv(index::GLuint, v::Ptr{GLfloat})::Void
@createOpenGLFun glLightiv(light::GLenum, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glPopAttrib()::Void
@createOpenGLFun glWindowPos3iv(v::Ptr{GLint})::Void
@createOpenGLFun glSampleCoverage(value::GLfloat, invert::GLboolean)::Void
@createOpenGLFun glClearColor(red::GLfloat, green::GLfloat, blue::GLfloat, alpha::GLfloat)::Void
@createOpenGLFun glSeparableFilter2D(target::GLenum, internalformat::GLenum, width::GLsizei, height::GLsizei, format::GLenum, type_::GLenum, row::Ptr{Void}, column::Ptr{Void})::Void
@createOpenGLFun glVertexAttrib4Niv(index::GLuint, v::Ptr{GLint})::Void
@createOpenGLFun glRectd(x1::GLdouble, y1::GLdouble, x2::GLdouble, y2::GLdouble)::Void
@createOpenGLFun glNormal3iv(v::Ptr{GLint})::Void
@createOpenGLFun glSecondaryColor3bv(v::Ptr{GLbyte})::Void
@createOpenGLFun glSecondaryColor3f(red::GLfloat, green::GLfloat, blue::GLfloat)::Void
@createOpenGLFun glUniform3i(location::GLint, v0::GLint, v1::GLint, v2::GLint)::Void
@createOpenGLFun glTexCoord2sv(v::Ptr{GLshort})::Void
@createOpenGLFun glClearStencil(s::GLint)::Void
@createOpenGLFun glVertex3iv(v::Ptr{GLint})::Void
@createOpenGLFun glLightf(light::GLenum, pname::GLenum, param::GLfloat)::Void
@createOpenGLFun glGetString(name::GLenum)::Ptr{Cuchar}
@createOpenGLFun glMultiTexCoord3i(target::GLenum, s::GLint, t::GLint, r::GLint)::Void
@createOpenGLFun glUniform4f(location::GLint, v0::GLfloat, v1::GLfloat, v2::GLfloat, v3::GLfloat)::Void
@createOpenGLFun glMapBuffer(target::GLenum, access::GLenum)::Ptr{Void}
#constants
const GL_MAP1_GRID_SEGMENTS                                           = 0x0DD1
const GL_COMPILE                                                      = 0x1300
const GL_SAMPLER_3D                                                   = 0x8B5F
const GL_INTENSITY                                                    = 0x8049
const GL_FOG_HINT                                                     = 0x0C54
const GL_FOG_COORDINATE_ARRAY_BUFFER_BINDING                          = 0x889D
const GL_BUFFER_ACCESS                                                = 0x88BB
const GL_LUMINANCE12_ALPHA12                                          = 0x8047
const GL_UNPACK_LSB_FIRST                                             = 0x0CF1
const GL_ACCUM_RED_BITS                                               = 0x0D58
const GL_LIGHT4                                                       = 0x4004
const GL_POINT_SPRITE                                                 = 0x8861
const GL_LIGHT_MODEL_LOCAL_VIEWER                                     = 0x0B51
const GL_OBJECT_LINEAR                                                = 0x2401
const GL_COLOR_ARRAY_SIZE                                             = 0x8081
const GL_TEXTURE12                                                    = 0x84CC
const GL_OPERAND1_RGB                                                 = 0x8591
const GL_X3D                                                          = 0x0601
const GL_TEXTURE_BINDING_3D                                           = 0x806A
const GL_SECONDARY_COLOR_ARRAY                                        = 0x845E
const GL_UNSIGNED_SHORT_5_6_5_REV                                     = 0x8364
const GL_PACK_ROW_LENGTH                                              = 0x0D02
const GL_SET                                                          = 0x150F
const GL_LINES                                                        = 0x0001
const GL_QUADS                                                        = 0x0007
const GL_EYE_LINEAR                                                   = 0x2400
const GL_POLYGON_OFFSET_POINT                                         = 0x2A01
const GL_TEXTURE                                                      = 0x1702
const GL_BLEND_EQUATION_ALPHA                                         = 0x883D
const GL_INFO_LOG_LENGTH                                              = 0x8B84
const GL_COMPILE_STATUS                                               = 0x8B81
const GL_QUERY_RESULT                                                 = 0x8866
const GL_RGB5                                                         = 0x8050
const GL_VERTEX_SHADER                                                = 0x8B31
const GL_LIST_BIT                                                     = 0x00020000
const GL_TEXTURE_PRIORITY                                             = 0x8066
const GL_EVAL_BIT                                                     = 0x00010000
const GL_POINT_SPRITE_COORD_ORIGIN                                    = 0x8CA0
const GL_CCW                                                          = 0x0901
const GL_TEXTURE26                                                    = 0x84DA
const GL_SMOOTH_LINE_WIDTH_GRANULARITY                                = 0x0B23
const GL_ATTACHED_SHADERS                                             = 0x8B85
const GL_BLEND_SRC_ALPHA                                              = 0x80CB
const GL_C3F_V3F                                                      = 0x2A24
const GL_TEXTURE_CUBE_MAP_NEGATIVE_X                                  = 0x8516
const GL_MAP2_INDEX                                                   = 0x0DB1
const GL_DEPTH_BUFFER_BIT                                             = 0x00000100
const GL_STENCIL_BITS                                                 = 0x0D57
const GL_INTENSITY12                                                  = 0x804C
const GL_DEPTH_COMPONENT32                                            = 0x81A7
const GL_LIST_BASE                                                    = 0x0B32
const GL_DRAW_BUFFER7                                                 = 0x882C
const GL_POINT_SMOOTH                                                 = 0x0B10
const GL_PIXEL_MAP_S_TO_S                                             = 0x0C71
const GL_DOUBLE                                                       = 0x140A
const GL_FOG_COORDINATE_ARRAY_STRIDE                                  = 0x8455
const GL_GENERATE_MIPMAP                                              = 0x8191
const GL_T2F_C4UB_V3F                                                 = 0x2A29
const GL_RGB16                                                        = 0x8054
const GL_TEXTURE_MATRIX                                               = 0x0BA8
const GL_SRGB8_ALPHA8                                                 = 0x8C43
const GL_COLOR_ARRAY_STRIDE                                           = 0x8083
const GL_TEXTURE_CUBE_MAP_POSITIVE_X                                  = 0x8515
const GL_BITMAP                                                       = 0x1A00
const GL_CURRENT_INDEX                                                = 0x0B01
const GL_MAP1_GRID_DOMAIN                                             = 0x0DD0
const GL_VERTEX_PROGRAM_POINT_SIZE                                    = 0x8642
const GL_STENCIL_PASS_DEPTH_FAIL                                      = 0x0B95
const GL_TEXTURE_CUBE_MAP_NEGATIVE_Y                                  = 0x8518
const GL_STENCIL_BACK_FAIL                                            = 0x8801
const GL_XOR                                                          = 0x1506
const GL_VERTEX_PROGRAM_TWO_SIDE                                      = 0x8643
const GL_LIGHT_MODEL_AMBIENT                                          = 0x0B53
const GL_OPERAND0_ALPHA                                               = 0x8598
const GL_FOG_COORD_ARRAY_BUFFER_BINDING                               = 0x889D
const GL_AMBIENT                                                      = 0x1200
const GL_DYNAMIC_COPY                                                 = 0x88EA
const GL_EQUIV                                                        = 0x1509
const GL_CURRENT_RASTER_INDEX                                         = 0x0B05
const GL_POLYGON_OFFSET_FILL                                          = 0x8037
const GL_COLOR_WRITEMASK                                              = 0x0C23
const GL_POINT_TOKEN                                                  = 0x0701
const GL_TEXTURE8                                                     = 0x84C8
const GL_EQUAL                                                        = 0x0202
const GL_TEXTURE1                                                     = 0x84C1
const GL_SECONDARY_COLOR_ARRAY_STRIDE                                 = 0x845C
const GL_SRC1_RGB                                                     = 0x8581
const GL_RETURN                                                       = 0x0102
const GL_RGBA16                                                       = 0x805B
const GL_TEXTURE_2D                                                   = 0x0DE1
const GL_TEXTURE_BINDING_1D                                           = 0x8068
const GL_LINE_WIDTH_RANGE                                             = 0x0B22
const GL_PIXEL_MAP_I_TO_B                                             = 0x0C74
const GL_ACCUM_BUFFER_BIT                                             = 0x00000200
const GL_SAMPLES_PASSED                                               = 0x8914
const GL_MAP2_GRID_SEGMENTS                                           = 0x0DD3
const GL_INDEX_CLEAR_VALUE                                            = 0x0C20
const GL_ENABLE_BIT                                                   = 0x00002000
const GL_MAP2_VERTEX_3                                                = 0x0DB7
const GL_OUT_OF_MEMORY                                                = 0x0505
const GL_UNSIGNED_SHORT_4_4_4_4                                       = 0x8033
const GL_MAP1_VERTEX_3                                                = 0x0D97
const GL_TEXTURE18                                                    = 0x84D2
const GL_UNPACK_ALIGNMENT                                             = 0x0CF5
const GL_ONE_MINUS_SRC_ALPHA                                          = 0x0303
const GL_PIXEL_MAP_I_TO_I                                             = 0x0C70
const GL_CURRENT_TEXTURE_COORDS                                       = 0x0B03
const GL_COORD_REPLACE                                                = 0x8862
const GL_DIFFUSE                                                      = 0x1201
const GL_TEXTURE_INTENSITY_SIZE                                       = 0x8061
const GL_DRAW_BUFFER6                                                 = 0x882B
const GL_TEXTURE_GEN_R                                                = 0x0C62
const GL_FLOAT_MAT2                                                   = 0x8B5A
const GL_QUAD_STRIP                                                   = 0x0008
const GL_DYNAMIC_DRAW                                                 = 0x88E8
const GL_DEPTH_FUNC                                                   = 0x0B74
const GL_MAP2_VERTEX_4                                                = 0x0DB8
const GL_FLOAT_MAT3x2                                                 = 0x8B67
const GL_PIXEL_MAP_G_TO_G                                             = 0x0C77
const GL_INTENSITY8                                                   = 0x804B
const GL_PIXEL_MAP_A_TO_A_SIZE                                        = 0x0CB9
const GL_MAP2_GRID_DOMAIN                                             = 0x0DD2
const GL_N3F_V3F                                                      = 0x2A25
const GL_SRC0_ALPHA                                                   = 0x8588
const GL_DOMAIN                                                       = 0x0A02
const GL_TEXTURE_1D                                                   = 0x0DE0
const GL_POINT_SIZE                                                   = 0x0B11
const GL_VIEWPORT                                                     = 0x0BA2
const GL_RGBA                                                         = 0x1908
const GL_DRAW_PIXEL_TOKEN                                             = 0x0705
const GL_CLAMP                                                        = 0x2900
const GL_TEXTURE31                                                    = 0x84DF
const GL_TEXTURE_GEN_MODE                                             = 0x2500
const GL_FOG_COORD_ARRAY_STRIDE                                       = 0x8455
const GL_TEXTURE3                                                     = 0x84C3
const GL_PIXEL_MAP_I_TO_R                                             = 0x0C72
const GL_COMBINE_ALPHA                                                = 0x8572
const GL_SUBTRACT                                                     = 0x84E7
const GL_DRAW_BUFFER2                                                 = 0x8827
const GL_RGB4                                                         = 0x804F
const GL_COLOR_ARRAY_TYPE                                             = 0x8082
const GL_COMBINE_RGB                                                  = 0x8571
const GL_MAP1_TEXTURE_COORD_3                                         = 0x0D95
const GL_ELEMENT_ARRAY_BUFFER                                         = 0x8893
const GL_COMPRESSED_SLUMINANCE                                        = 0x8C4A
const GL_SUBPIXEL_BITS                                                = 0x0D50
const GL_UNPACK_SKIP_ROWS                                             = 0x0CF3
const GL_SOURCE0_RGB                                                  = 0x8580
const GL_POINTS                                                       = 0x0000
const GL_INCR_WRAP                                                    = 0x8507
const GL_ACTIVE_ATTRIBUTES                                            = 0x8B89
const GL_TEXTURE5                                                     = 0x84C5
const GL_ALPHA12                                                      = 0x803D
const GL_GREEN_SCALE                                                  = 0x0D18
const GL_CURRENT_FOG_COORD                                            = 0x8453
const GL_SRC1_ALPHA                                                   = 0x8589
const GL_PROXY_TEXTURE_1D                                             = 0x8063
const GL_TEXTURE_WRAP_S                                               = 0x2802
const GL_X2D                                                          = 0x0600
const GL_SRGB                                                         = 0x8C40
const GL_STATIC_DRAW                                                  = 0x88E4
const GL_TEXTURE_COORD_ARRAY_POINTER                                  = 0x8092
const GL_INDEX_ARRAY                                                  = 0x8077
const GL_T                                                            = 0x2001
const GL_LESS                                                         = 0x0201
const GL_INCR                                                         = 0x1E02
const GL_MAX_TEXTURE_SIZE                                             = 0x0D33
const GL_MAX_DRAW_BUFFERS                                             = 0x8824
const GL_TEXTURE_ENV_MODE                                             = 0x2200
const GL_LIGHT3                                                       = 0x4003
const GL_TEXTURE_BLUE_SIZE                                            = 0x805E
const GL_EDGE_FLAG_ARRAY                                              = 0x8079
const GL_TEXTURE_WRAP_R                                               = 0x8072
const GL_QUERY_COUNTER_BITS                                           = 0x8864
const GL_DECAL                                                        = 0x2101
const GL_ONE_MINUS_DST_ALPHA                                          = 0x0305
const GL_PACK_SKIP_PIXELS                                             = 0x0D04
const GL_SECONDARY_COLOR_ARRAY_TYPE                                   = 0x845B
const GL_TEXTURE_GREEN_SIZE                                           = 0x805D
const GL_EXP2                                                         = 0x0801
const GL_LIGHT1                                                       = 0x4001
const GL_DRAW_BUFFER13                                                = 0x8832
const GL_DEPTH                                                        = 0x1801
const GL_CULL_FACE_MODE                                               = 0x0B45
const GL_CLIP_PLANE5                                                  = 0x3005
const GL_COMPRESSED_RGB                                               = 0x84ED
const GL_ALPHA_BIAS                                                   = 0x0D1D
const GL_TEXTURE_GEN_S                                                = 0x0C60
const GL_MAP2_TEXTURE_COORD_1                                         = 0x0DB3
const GL_FLOAT_MAT4x3                                                 = 0x8B6A
const GL_SAMPLER_2D                                                   = 0x8B5E
const GL_TEXTURE_DEPTH_SIZE                                           = 0x884A
const GL_SRC0_RGB                                                     = 0x8580
const GL_AND_REVERSE                                                  = 0x1502
const GL_CLEAR                                                        = 0x1500
const GL_DEPTH_TEXTURE_MODE                                           = 0x884B
const GL_TEXTURE_MAX_LOD                                              = 0x813B
const GL_MAX_CLIENT_ATTRIB_STACK_DEPTH                                = 0x0D3B
const GL_SAMPLE_ALPHA_TO_ONE                                          = 0x809F
const GL_FLOAT_VEC4                                                   = 0x8B52
const GL_FOG_DENSITY                                                  = 0x0B62
const GL_LINE_TOKEN                                                   = 0x0702
const GL_SLUMINANCE                                                   = 0x8C46
const GL_C4UB_V3F                                                     = 0x2A23
const GL_SAMPLE_BUFFERS                                               = 0x80A8
const GL_NEAREST                                                      = 0x2600
const GL_LINE_LOOP                                                    = 0x0002
const GL_PIXEL_PACK_BUFFER                                            = 0x88EB
const GL_COMPRESSED_ALPHA                                             = 0x84E9
const GL_FLOAT_MAT2x3                                                 = 0x8B65
const GL_ALPHA_TEST                                                   = 0x0BC0
const GL_BOOL_VEC2                                                    = 0x8B57
const GL_READ_ONLY                                                    = 0x88B8
const GL_LIGHT6                                                       = 0x4006
const GL_SECONDARY_COLOR_ARRAY_SIZE                                   = 0x845A
const GL_RED_BITS                                                     = 0x0D52
const GL_STENCIL_BACK_REF                                             = 0x8CA3
const GL_PREVIOUS                                                     = 0x8578
const GL_STENCIL_BACK_FUNC                                            = 0x8800
const GL_COMPRESSED_LUMINANCE                                         = 0x84EA
const GL_BITMAP_TOKEN                                                 = 0x0704
const GL_UNSIGNED_SHORT_4_4_4_4_REV                                   = 0x8365
const GL_TEXTURE4                                                     = 0x84C4
const GL_ACCUM_GREEN_BITS                                             = 0x0D59
const GL_POINT_SIZE_RANGE                                             = 0x0B12
const GL_UNSIGNED_BYTE_3_3_2                                          = 0x8032
const GL_WRITE_ONLY                                                   = 0x88B9
const GL_PIXEL_MAP_A_TO_A                                             = 0x0C79
const GL_TEXTURE_COMPONENTS                                           = 0x1003
const GL_INVALID_VALUE                                                = 0x0501
const GL_ACCUM                                                        = 0x0100
const GL_RGB_SCALE                                                    = 0x8573
const GL_PIXEL_MAP_S_TO_S_SIZE                                        = 0x0CB1
const GL_CURRENT_RASTER_SECONDARY_COLOR                               = 0x845F
const GL_VERTEX_ARRAY_TYPE                                            = 0x807B
const GL_SRGB8                                                        = 0x8C41
const GL_SINGLE_COLOR                                                 = 0x81F9
const GL_LUMINANCE                                                    = 0x1909
const GL_REPLACE                                                      = 0x1E01
const GL_MATRIX_MODE                                                  = 0x0BA0
const GL_DEPTH_COMPONENT                                              = 0x1902
const GL_OBJECT_PLANE                                                 = 0x2501
const GL_WEIGHT_ARRAY_BUFFER_BINDING                                  = 0x889E
const GL_RGBA8                                                        = 0x8058
const GL_TEXTURE_GEN_Q                                                = 0x0C63
const GL_TEXTURE_STACK_DEPTH                                          = 0x0BA5
const GL_SCISSOR_TEST                                                 = 0x0C11
const GL_LIGHT2                                                       = 0x4002
const GL_STEREO                                                       = 0x0C33
const GL_TEXTURE_COMPRESSED_IMAGE_SIZE                                = 0x86A0
const GL_AUTO_NORMAL                                                  = 0x0D80
const GL_TEXTURE22                                                    = 0x84D6
const GL_CLAMP_TO_EDGE                                                = 0x812F
const GL_ZOOM_X                                                       = 0x0D16
const GL_DRAW_BUFFER0                                                 = 0x8825
const GL_ACTIVE_TEXTURE                                               = 0x84E0
const GL_MAX_EVAL_ORDER                                               = 0x0D30
const GL_TEXTURE_DEPTH                                                = 0x8071
const GL_FRONT_RIGHT                                                  = 0x0401
const GL_DEPTH_RANGE                                                  = 0x0B70
const GL_X4_BYTES                                                     = 0x1409
const GL_NORMAL_ARRAY                                                 = 0x8075
const GL_BLEND_SRC_RGB                                                = 0x80C9
const GL_LINE_RESET_TOKEN                                             = 0x0707
const GL_ONE                                                          = 1
const GL_STENCIL_PASS_DEPTH_PASS                                      = 0x0B96
const GL_NO_ERROR                                                     = 0
const GL_SMOOTH_POINT_SIZE_RANGE                                      = 0x0B12
const GL_AUX_BUFFERS                                                  = 0x0C00
const GL_MAX_TEXTURE_STACK_DEPTH                                      = 0x0D39
const GL_LEQUAL                                                       = 0x0203
const GL_POINT_SIZE_MAX                                               = 0x8127
const GL_MAX_TEXTURE_COORDS                                           = 0x8871
const GL_NONE                                                         = 0
const GL_BUFFER_SIZE                                                  = 0x8764
const GL_PIXEL_MAP_B_TO_B                                             = 0x0C78
const GL_INT_VEC4                                                     = 0x8B55
const GL_OR_INVERTED                                                  = 0x150D
const GL_PACK_SKIP_ROWS                                               = 0x0D03
const GL_NUM_COMPRESSED_TEXTURE_FORMATS                               = 0x86A2
const GL_RESCALE_NORMAL                                               = 0x803A
const GL_DEPTH_COMPONENT24                                            = 0x81A6
const GL_BACK_LEFT                                                    = 0x0402
const GL_MAP2_TEXTURE_COORD_4                                         = 0x0DB6
const GL_COLOR                                                        = 0x1800
const GL_CONSTANT                                                     = 0x8576
const GL_INT_VEC2                                                     = 0x8B53
const GL_UNSIGNED_SHORT                                               = 0x1403
const GL_MODULATE                                                     = 0x2100
const GL_UNSIGNED_INT                                                 = 0x1405
const GL_LUMINANCE4_ALPHA4                                            = 0x8043
const GL_X3D_COLOR                                                    = 0x0602
const GL_POSITION                                                     = 0x1203
const GL_COMPRESSED_INTENSITY                                         = 0x84EC
const GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS                               = 0x8B4C
const GL_COLOR_CLEAR_VALUE                                            = 0x0C22
const GL_R3_G3_B2                                                     = 0x2A10
const GL_DELETE_STATUS                                                = 0x8B80
const GL_PIXEL_MAP_G_TO_G_SIZE                                        = 0x0CB7
const GL_FLOAT_MAT4                                                   = 0x8B5C
const GL_BACK_RIGHT                                                   = 0x0403
const GL_LUMINANCE12_ALPHA4                                           = 0x8046
const GL_FRONT_AND_BACK                                               = 0x0408
const GL_RENDERER                                                     = 0x1F01
const GL_FOG_COORDINATE_SOURCE                                        = 0x8450
const GL_ATTRIB_STACK_DEPTH                                           = 0x0BB0
const GL_LINE_STIPPLE_REPEAT                                          = 0x0B26
const GL_POLYGON_SMOOTH_HINT                                          = 0x0C53
const GL_LUMINANCE4                                                   = 0x803F
const GL_SMOOTH_POINT_SIZE_GRANULARITY                                = 0x0B13
const GL_OR_REVERSE                                                   = 0x150B
const GL_MAP2_TEXTURE_COORD_2                                         = 0x0DB4
const GL_FOG_MODE                                                     = 0x0B65
const GL_LUMINANCE16                                                  = 0x8042
const GL_OPERAND0_RGB                                                 = 0x8590
const GL_STENCIL_BUFFER_BIT                                           = 0x00000400
const GL_MAX_PROJECTION_STACK_DEPTH                                   = 0x0D38
const GL_ARRAY_BUFFER                                                 = 0x8892
const GL_POLYGON_SMOOTH                                               = 0x0B41
const GL_EDGE_FLAG_ARRAY_POINTER                                      = 0x8093
const GL_FOG_COORD                                                    = 0x8451
const GL_TEXTURE23                                                    = 0x84D7
const GL_INDEX_LOGIC_OP                                               = 0x0BF1
const GL_DOT3_RGBA                                                    = 0x86AF
const GL_NORMAL_ARRAY_POINTER                                         = 0x808F
const GL_TEXTURE11                                                    = 0x84CB
const GL_BLUE_SCALE                                                   = 0x0D1A
const GL_DEPTH_BITS                                                   = 0x0D56
const GL_STENCIL_BACK_PASS_DEPTH_PASS                                 = 0x8803
const GL_LIGHT_MODEL_TWO_SIDE                                         = 0x0B52
const GL_READ_BUFFER                                                  = 0x0C02
const GL_SLUMINANCE_ALPHA                                             = 0x8C44
const GL_NORMALIZE                                                    = 0x0BA1
const GL_CURRENT_COLOR                                                = 0x0B00
const GL_FASTEST                                                      = 0x1101
const GL_INDEX_ARRAY_POINTER                                          = 0x8091
const GL_MULTISAMPLE_BIT                                              = 0x20000000
const GL_CURRENT_SECONDARY_COLOR                                      = 0x8459
const GL_MAP1_TEXTURE_COORD_1                                         = 0x0D93
const GL_C4UB_V2F                                                     = 0x2A22
const GL_AUX2                                                         = 0x040B
const GL_CURRENT_RASTER_POSITION_VALID                                = 0x0B08
const GL_COLOR_MATERIAL                                               = 0x0B57
const GL_NAME_STACK_DEPTH                                             = 0x0D70
const GL_AND_INVERTED                                                 = 0x1504
const GL_LIGHT7                                                       = 0x4007
const GL_DRAW_BUFFER3                                                 = 0x8828
const GL_NICEST                                                       = 0x1102
const GL_PIXEL_MAP_I_TO_G                                             = 0x0C73
const GL_KEEP                                                         = 0x1E00
const GL_SOURCE0_ALPHA                                                = 0x8588
const GL_ZERO                                                         = 0
const GL_ACCUM_CLEAR_VALUE                                            = 0x0B80
const GL_INDEX_ARRAY_STRIDE                                           = 0x8086
const GL_AMBIENT_AND_DIFFUSE                                          = 0x1602
const GL_DRAW_BUFFER                                                  = 0x0C01
const GL_BYTE                                                         = 0x1400
const GL_COMPARE_R_TO_TEXTURE                                         = 0x884E
const GL_GREATER                                                      = 0x0204
const GL_COPY                                                         = 0x1503
const GL_NORMAL_ARRAY_BUFFER_BINDING                                  = 0x8897
const GL_ADD_SIGNED                                                   = 0x8574
const GL_DONT_CARE                                                    = 0x1100
const GL_MAX_ELEMENTS_VERTICES                                        = 0x80E8
const GL_DST_ALPHA                                                    = 0x0304
const GL_MAX_LIST_NESTING                                             = 0x0B31
const GL_POINT_DISTANCE_ATTENUATION                                   = 0x8129
const GL_COLOR_MATERIAL_PARAMETER                                     = 0x0B56
const GL_LIGHTING                                                     = 0x0B50
const GL_ELEMENT_ARRAY_BUFFER_BINDING                                 = 0x8895
const GL_AND                                                          = 0x1501
const GL_SPOT_DIRECTION                                               = 0x1204
const GL_PIXEL_MAP_I_TO_B_SIZE                                        = 0x0CB4
const GL_COPY_PIXEL_TOKEN                                             = 0x0706
const GL_TRIANGLE_FAN                                                 = 0x0006
const GL_UNSIGNED_BYTE_2_3_3_REV                                      = 0x8362
const GL_GREEN_BIAS                                                   = 0x0D19
const GL_RGB12                                                        = 0x8053
const GL_POINT_SIZE_GRANULARITY                                       = 0x0B13
const GL_FEEDBACK_BUFFER_SIZE                                         = 0x0DF1
const GL_TRUE                                                         = 1
const GL_PACK_SKIP_IMAGES                                             = 0x806B
const GL_INTERPOLATE                                                  = 0x8575
const GL_RGB8                                                         = 0x8051
const GL_COMPRESSED_LUMINANCE_ALPHA                                   = 0x84EB
const GL_T2F_C3F_V3F                                                  = 0x2A2A
const GL_TEXTURE_CUBE_MAP_POSITIVE_Z                                  = 0x8519
const GL_FOG_COORD_ARRAY_POINTER                                      = 0x8456
const GL_RENDER_MODE                                                  = 0x0C40
const GL_QUADRATIC_ATTENUATION                                        = 0x1209
const GL_T2F_N3F_V3F                                                  = 0x2A2B
const GL_UNPACK_ROW_LENGTH                                            = 0x0CF2
const GL_LINE                                                         = 0x1B01
const GL_LINE_SMOOTH_HINT                                             = 0x0C52
const GL_STREAM_DRAW                                                  = 0x88E0
const GL_MAP1_COLOR_4                                                 = 0x0D90
const GL_ALPHA_SCALE                                                  = 0x0D1C
const GL_COMPRESSED_TEXTURE_FORMATS                                   = 0x86A3
const GL_MAX_VERTEX_ATTRIBS                                           = 0x8869
const GL_LINE_STRIP                                                   = 0x0003
const GL_VERSION                                                      = 0x1F02
const GL_CLIENT_VERTEX_ARRAY_BIT                                      = 0x00000002
const GL_PROJECTION_STACK_DEPTH                                       = 0x0BA4
const GL_TEXTURE25                                                    = 0x84D9
const GL_SAMPLE_COVERAGE_VALUE                                        = 0x80AA
const GL_VERTEX_ATTRIB_ARRAY_POINTER                                  = 0x8645
const GL_CURRENT_FOG_COORDINATE                                       = 0x8453
const GL_CURRENT_BIT                                                  = 0x00000001
const GL_FLOAT_MAT3x4                                                 = 0x8B68
const GL_SHORT                                                        = 0x1402
const GL_POINT_BIT                                                    = 0x00000002
const GL_POLYGON_BIT                                                  = 0x00000008
const GL_BOOL                                                         = 0x8B56
const GL_BLUE_BIAS                                                    = 0x0D1B
const GL_DYNAMIC_READ                                                 = 0x88E9
const GL_TEXTURE20                                                    = 0x84D4
const GL_SPECULAR                                                     = 0x1202
const GL_RENDER                                                       = 0x1C00
const GL_MAX_CUBE_MAP_TEXTURE_SIZE                                    = 0x851C
const GL_X3D_COLOR_TEXTURE                                            = 0x0603
const GL_POINT_SMOOTH_HINT                                            = 0x0C51
const GL_DOT3_RGB                                                     = 0x86AE
const GL_MAX_PIXEL_MAP_TABLE                                          = 0x0D34
const GL_STENCIL_BACK_PASS_DEPTH_FAIL                                 = 0x8802
const GL_CLIP_PLANE0                                                  = 0x3000
const GL_INDEX_ARRAY_BUFFER_BINDING                                   = 0x8899
const GL_CURRENT_RASTER_TEXTURE_COORDS                                = 0x0B06
const GL_COMPILE_AND_EXECUTE                                          = 0x1301
const GL_BLEND_SRC                                                    = 0x0BE1
const GL_NEAREST_MIPMAP_LINEAR                                        = 0x2702
const GL_LUMINANCE16_ALPHA16                                          = 0x8048
const GL_SPOT_EXPONENT                                                = 0x1205
const GL_BLEND_DST                                                    = 0x0BE0
const GL_SHADE_MODEL                                                  = 0x0B54
const GL_TEXTURE_COMPRESSION_HINT                                     = 0x84EF
const GL_ACTIVE_ATTRIBUTE_MAX_LENGTH                                  = 0x8B8A
const GL_TRANSPOSE_TEXTURE_MATRIX                                     = 0x84E5
const GL_CLIP_PLANE1                                                  = 0x3001
const GL_VERTEX_ATTRIB_ARRAY_ENABLED                                  = 0x8622
const GL_FEEDBACK_BUFFER_POINTER                                      = 0x0DF0
const GL_VERTEX_ARRAY_STRIDE                                          = 0x807C
const GL_MAX_CLIP_PLANES                                              = 0x0D32
const GL_DEPTH_WRITEMASK                                              = 0x0B72
const GL_LINEAR                                                       = 0x2601
const GL_RGB10_A2                                                     = 0x8059
const GL_INDEX_WRITEMASK                                              = 0x0C21
const GL_FOG_COORD_ARRAY                                              = 0x8457
const GL_SOURCE2_RGB                                                  = 0x8582
const GL_COMBINE                                                      = 0x8570
const GL_FLOAT_VEC3                                                   = 0x8B51
const GL_DRAW_BUFFER5                                                 = 0x882A
const GL_TEXTURE_ENV_COLOR                                            = 0x2201
const GL_EXP                                                          = 0x0800
const GL_DST_COLOR                                                    = 0x0306
const GL_TEXTURE_WIDTH                                                = 0x1000
const GL_UNSIGNED_INT_2_10_10_10_REV                                  = 0x8368
const GL_MAX_FRAGMENT_UNIFORM_COMPONENTS                              = 0x8B49
const GL_SRGB_ALPHA                                                   = 0x8C42
const GL_V2F                                                          = 0x2A20
const GL_SECONDARY_COLOR_ARRAY_BUFFER_BINDING                         = 0x889C
const GL_NEVER                                                        = 0x0200
const GL_SLUMINANCE8                                                  = 0x8C47
const GL_UNPACK_IMAGE_HEIGHT                                          = 0x806E
const GL_PROXY_TEXTURE_2D                                             = 0x8064
const GL_TEXTURE_COMPARE_MODE                                         = 0x884C
const GL_TEXTURE0                                                     = 0x84C0
const GL_ACTIVE_UNIFORMS                                              = 0x8B86
const GL_ALPHA4                                                       = 0x803B
const GL_MAP2_COLOR_4                                                 = 0x0DB0
const GL_CURRENT_QUERY                                                = 0x8865
const GL_SAMPLER_1D                                                   = 0x8B5D
const GL_T2F_V3F                                                      = 0x2A27
const GL_FEEDBACK                                                     = 0x1C01
const GL_MAP2_NORMAL                                                  = 0x0DB2
const GL_BACK                                                         = 0x0405
const GL_SMOOTH                                                       = 0x1D01
const GL_BGR                                                          = 0x80E0
const GL_STENCIL                                                      = 0x1802
const GL_TEXTURE_3D                                                   = 0x806F
const GL_UNPACK_SWAP_BYTES                                            = 0x0CF0
const GL_ALWAYS                                                       = 0x0207
const GL_COLOR_SUM                                                    = 0x8458
const GL_LINEAR_ATTENUATION                                           = 0x1208
const GL_PIXEL_MAP_R_TO_R                                             = 0x0C76
const GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS                             = 0x8B4D
const GL_AUX0                                                         = 0x0409
const GL_ZOOM_Y                                                       = 0x0D17
const GL_SRC2_ALPHA                                                   = 0x858A
const GL_CURRENT_NORMAL                                               = 0x0B02
const GL_SELECT                                                       = 0x1C02
const GL_MAX_TEXTURE_UNITS                                            = 0x84E2
const GL_COLOR_ARRAY_BUFFER_BINDING                                   = 0x8898
const GL_LIST_INDEX                                                   = 0x0B33
const GL_SHININESS                                                    = 0x1601
const GL_TEXTURE_COMPARE_FUNC                                         = 0x884D
const GL_DECR                                                         = 0x1E03
const GL_AUX3                                                         = 0x040C
const GL_ALPHA_TEST_FUNC                                              = 0x0BC1
const GL_PIXEL_MAP_I_TO_G_SIZE                                        = 0x0CB3
const GL_STENCIL_VALUE_MASK                                           = 0x0B93
const GL_MAX_TEXTURE_IMAGE_UNITS                                      = 0x8872
const GL_PIXEL_UNPACK_BUFFER                                          = 0x88EC
const GL_MAP2_TEXTURE_COORD_3                                         = 0x0DB5
const GL_BLEND                                                        = 0x0BE2
const GL_GREEN                                                        = 0x1904
const GL_PIXEL_PACK_BUFFER_BINDING                                    = 0x88ED
const GL_RGB                                                          = 0x1907
const GL_NORMAL_MAP                                                   = 0x8511
const GL_TEXTURE_MIN_FILTER                                           = 0x2801
const GL_UNSIGNED_INT_10_10_10_2                                      = 0x8036
const GL_FRAGMENT_SHADER_DERIVATIVE_HINT                              = 0x8B8B
const GL_CULL_FACE                                                    = 0x0B44
const GL_STENCIL_FAIL                                                 = 0x0B94
const GL_COMPRESSED_SRGB                                              = 0x8C48
const GL_DRAW_BUFFER1                                                 = 0x8826
const GL_TEXTURE_LUMINANCE_SIZE                                       = 0x8060
const GL_COLOR_ARRAY_POINTER                                          = 0x8090
const GL_TEXTURE_BINDING_2D                                           = 0x8069
const GL_ALPHA                                                        = 0x1906
const GL_STREAM_READ                                                  = 0x88E1
const GL_TEXTURE_WRAP_T                                               = 0x2803
const GL_ALL_ATTRIB_BITS                                              = 0xFFFFFFFF
const GL_UNSIGNED_INT_8_8_8_8                                         = 0x8035
const GL_TEXTURE29                                                    = 0x84DD
const GL_Q                                                            = 0x2003
const GL_INDEX_BITS                                                   = 0x0D51
const GL_SPOT_CUTOFF                                                  = 0x1206
const GL_PACK_LSB_FIRST                                               = 0x0D01
const GL_BOOL_VEC4                                                    = 0x8B59
const GL_STENCIL_INDEX                                                = 0x1901
const GL_SRC2_RGB                                                     = 0x8582
const GL_MODELVIEW                                                    = 0x1700
const GL_POLYGON_OFFSET_UNITS                                         = 0x2A00
const GL_TEXTURE9                                                     = 0x84C9
const GL_V3F                                                          = 0x2A21
const GL_FRAGMENT_DEPTH                                               = 0x8452
const GL_FOG_COLOR                                                    = 0x0B66
const GL_MAP_COLOR                                                    = 0x0D10
const GL_NORMAL_ARRAY_STRIDE                                          = 0x807F
const GL_TEXTURE_COORD_ARRAY_SIZE                                     = 0x8088
const GL_STENCIL_REF                                                  = 0x0B97
const GL_CLIENT_ALL_ATTRIB_BITS                                       = 0xFFFFFFFF
const GL_DEPTH_SCALE                                                  = 0x0D1E
const GL_VIEWPORT_BIT                                                 = 0x00000800
const GL_UNSIGNED_SHORT_1_5_5_5_REV                                   = 0x8366
const GL_EMISSION                                                     = 0x1600
const GL_CURRENT_RASTER_COLOR                                         = 0x0B04
const GL_TEXTURE_RESIDENT                                             = 0x8067
const GL_TEXTURE17                                                    = 0x84D1
const GL_TEXTURE16                                                    = 0x84D0
const GL_DITHER                                                       = 0x0BD0
const GL_MAP1_TEXTURE_COORD_2                                         = 0x0D94
const GL_BLEND_DST_RGB                                                = 0x80C8
const GL_S                                                            = 0x2000
const GL_NOTEQUAL                                                     = 0x0205
const GL_TEXTURE_CUBE_MAP_NEGATIVE_Z                                  = 0x851A
const GL_NOR                                                          = 0x1508
const GL_LINEAR_MIPMAP_NEAREST                                        = 0x2701
const GL_T4F_C4F_N3F_V4F                                              = 0x2A2D
const GL_RED_BIAS                                                     = 0x0D15
const GL_OPERAND2_ALPHA                                               = 0x859A
const GL_SRC_COLOR                                                    = 0x0300
const GL_POLYGON_OFFSET_LINE                                          = 0x2A02
const GL_ACTIVE_UNIFORM_MAX_LENGTH                                    = 0x8B87
const GL_POLYGON_STIPPLE_BIT                                          = 0x00000010
const GL_PROJECTION_MATRIX                                            = 0x0BA7
const GL_MULTISAMPLE                                                  = 0x809D
const GL_STENCIL_BACK_VALUE_MASK                                      = 0x8CA4
const GL_COLOR_INDEXES                                                = 0x1603
const GL_INVALID_ENUM                                                 = 0x0500
const GL_NOOP                                                         = 0x1505
const GL_INDEX_SHIFT                                                  = 0x0D12
const GL_INDEX_ARRAY_TYPE                                             = 0x8085
const GL_SAMPLES                                                      = 0x80A9
const GL_TEXTURE14                                                    = 0x84CE
const GL_BUFFER_MAPPED                                                = 0x88BC
const GL_TRANSPOSE_COLOR_MATRIX                                       = 0x84E6
const GL_LOWER_LEFT                                                   = 0x8CA1
const GL_TEXTURE_COMPRESSED                                           = 0x86A1
const GL_POINT                                                        = 0x1B00
const GL_SAMPLE_ALPHA_TO_COVERAGE                                     = 0x809E
const GL_FLOAT_MAT4x2                                                 = 0x8B69
const GL_TEXTURE_COORD_ARRAY                                          = 0x8078
const GL_FOG                                                          = 0x0B60
const GL_FRAGMENT_SHADER                                              = 0x8B30
const GL_CLIENT_PIXEL_STORE_BIT                                       = 0x00000001
const GL_SAMPLE_COVERAGE                                              = 0x80A0
const GL_SHADER_TYPE                                                  = 0x8B4F
const GL_ONE_MINUS_DST_COLOR                                          = 0x0307
const GL_SELECTION_BUFFER_POINTER                                     = 0x0DF3
const GL_UNPACK_SKIP_IMAGES                                           = 0x806D
const GL_MAX_MODELVIEW_STACK_DEPTH                                    = 0x0D36
const GL_STACK_UNDERFLOW                                              = 0x0504
const GL_READ_WRITE                                                   = 0x88BA
const GL_LUMINANCE8                                                   = 0x8040
const GL_INVERT                                                       = 0x150A
const GL_LIGHT5                                                       = 0x4005
const GL_FLOAT_VEC2                                                   = 0x8B50
const GL_SCISSOR_BIT                                                  = 0x00080000
const GL_CLIENT_ATTRIB_STACK_DEPTH                                    = 0x0BB1
const GL_BUFFER_USAGE                                                 = 0x8765
const GL_CURRENT_RASTER_POSITION                                      = 0x0B07
const GL_STENCIL_CLEAR_VALUE                                          = 0x0B91
const GL_REPEAT                                                       = 0x2901
const GL_UNSIGNED_SHORT_5_6_5                                         = 0x8363
const GL_FILL                                                         = 0x1B02
const GL_ONE_MINUS_SRC_COLOR                                          = 0x0301
const GL_PACK_ALIGNMENT                                               = 0x0D05
const GL_TEXTURE2                                                     = 0x84C2
const GL_TEXTURE_ENV                                                  = 0x2300
const GL_PIXEL_MODE_BIT                                               = 0x00000020
const GL_BUFFER_MAP_POINTER                                           = 0x88BD
const GL_GEQUAL                                                       = 0x0206
const GL_RED                                                          = 0x1903
const GL_LUMINANCE8_ALPHA8                                            = 0x8045
const GL_PRIMARY_COLOR                                                = 0x8577
const GL_MIRRORED_REPEAT                                              = 0x8370
const GL_CLAMP_TO_BORDER                                              = 0x812D
const GL_VALIDATE_STATUS                                              = 0x8B83
const GL_COEFF                                                        = 0x0A00
const GL_TEXTURE7                                                     = 0x84C7
const GL_TEXTURE6                                                     = 0x84C6
const GL_COMPRESSED_SRGB_ALPHA                                        = 0x8C49
const GL_CW                                                           = 0x0900
const GL_TEXTURE_CUBE_MAP                                             = 0x8513
const GL_ALPHA_TEST_REF                                               = 0x0BC2
const GL_FOG_BIT                                                      = 0x00000080
const GL_X3_BYTES                                                     = 0x1408
const GL_TEXTURE_MAX_LEVEL                                            = 0x813D
const GL_TEXTURE_ALPHA_SIZE                                           = 0x805F
const GL_FOG_COORDINATE_ARRAY_TYPE                                    = 0x8454
const GL_ALPHA_BITS                                                   = 0x0D55
const GL_OR                                                           = 0x1507
const GL_T2F_C4F_N3F_V3F                                              = 0x2A2C
const GL_TEXTURE19                                                    = 0x84D3
const GL_MAX_LIGHTS                                                   = 0x0D31
const GL_MAX_VERTEX_UNIFORM_COMPONENTS                                = 0x8B4A
const GL_MAX_VIEWPORT_DIMS                                            = 0x0D3A
const GL_POINT_SIZE_MIN                                               = 0x8126
const GL_CLIP_PLANE2                                                  = 0x3002
const GL_T4F_V4F                                                      = 0x2A28
const GL_MAP1_INDEX                                                   = 0x0D91
const GL_FOG_COORDINATE_ARRAY                                         = 0x8457
const GL_TEXTURE_COORD_ARRAY_STRIDE                                   = 0x808A
const GL_LINEAR_MIPMAP_LINEAR                                         = 0x2703
const GL_COMPRESSED_RGBA                                              = 0x84EE
const GL_MAX_ELEMENTS_INDICES                                         = 0x80E9
const GL_DRAW_BUFFER10                                                = 0x882F
const GL_TEXTURE21                                                    = 0x84D5
const GL_PACK_IMAGE_HEIGHT                                            = 0x806C
const GL_MAP1_VERTEX_4                                                = 0x0D98
const GL_SRC_ALPHA_SATURATE                                           = 0x0308
const GL_PROJECTION                                                   = 0x1701
const GL_GENERATE_MIPMAP_HINT                                         = 0x8192
const GL_PROXY_TEXTURE_3D                                             = 0x8070
const GL_SHADER_SOURCE_LENGTH                                         = 0x8B88
const GL_C4F_N3F_V3F                                                  = 0x2A26
const GL_BLEND_EQUATION_RGB                                           = 0x8009
const GL_INDEX_MODE                                                   = 0x0C30
const GL_MAP_STENCIL                                                  = 0x0D11
const GL_VERTEX_ARRAY_SIZE                                            = 0x807A
const GL_STATIC_COPY                                                  = 0x88E6
const GL_OPERAND1_ALPHA                                               = 0x8599
const GL_PIXEL_MAP_B_TO_B_SIZE                                        = 0x0CB8
const GL_TEXTURE27                                                    = 0x84DB
const GL_VENDOR                                                       = 0x1F00
const GL_DEPTH_TEST                                                   = 0x0B71
const GL_TEXTURE_RED_SIZE                                             = 0x805C
const GL_TEXTURE_FILTER_CONTROL                                       = 0x8500
const GL_TEXTURE_BORDER                                               = 0x1005
const GL_TEXTURE_COORD_ARRAY_TYPE                                     = 0x8089
const GL_UNSIGNED_BYTE                                                = 0x1401
const GL_TRANSPOSE_MODELVIEW_MATRIX                                   = 0x84E3
const GL_UPPER_LEFT                                                   = 0x8CA2
const GL_TEXTURE_BIT                                                  = 0x00040000
const GL_STREAM_COPY                                                  = 0x88E2
const GL_RGB5_A1                                                      = 0x8057
const GL_AUX1                                                         = 0x040A
const GL_BLUE_BITS                                                    = 0x0D54
const GL_LOAD                                                         = 0x0101
const GL_COLOR_LOGIC_OP                                               = 0x0BF2
const GL_HINT_BIT                                                     = 0x00008000
const GL_TRANSPOSE_PROJECTION_MATRIX                                  = 0x84E4
const GL_DRAW_BUFFER14                                                = 0x8833
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
const GL_PIXEL_MAP_I_TO_A_SIZE                                        = 0x0CB5
const GL_CLIP_PLANE4                                                  = 0x3004
const GL_TEXTURE_MAG_FILTER                                           = 0x2800
const GL_UNPACK_SKIP_PIXELS                                           = 0x0CF4
const GL_TEXTURE_LOD_BIAS                                             = 0x8501
const GL_COLOR_BUFFER_BIT                                             = 0x00004000
const GL_RGBA2                                                        = 0x8055
const GL_MAX_ATTRIB_STACK_DEPTH                                       = 0x0D35
const GL_SMOOTH_LINE_WIDTH_RANGE                                      = 0x0B22
const GL_SOURCE2_ALPHA                                                = 0x858A
const GL_SRC_ALPHA                                                    = 0x0302
const GL_REFLECTION_MAP                                               = 0x8512
const GL_CURRENT_VERTEX_ATTRIB                                        = 0x8626
const GL_FOG_COORDINATE                                               = 0x8451
const GL_FOG_START                                                    = 0x0B63
const GL_LUMINANCE12                                                  = 0x8041
const GL_DRAW_BUFFER12                                                = 0x8831
const GL_UNSIGNED_SHORT_5_5_5_1                                       = 0x8034
const GL_FOG_COORD_ARRAY_TYPE                                         = 0x8454
const GL_MULT                                                         = 0x0103
const GL_GREEN_BITS                                                   = 0x0D53
const GL_LIGHT_MODEL_COLOR_CONTROL                                    = 0x81F8
const GL_CURRENT_RASTER_DISTANCE                                      = 0x0B09
const GL_BGRA                                                         = 0x80E1
const GL_STENCIL_WRITEMASK                                            = 0x0B98
const GL_EYE_PLANE                                                    = 0x2502
const GL_LINE_WIDTH_GRANULARITY                                       = 0x0B23
const GL_STENCIL_FUNC                                                 = 0x0B92
const GL_DEPTH_CLEAR_VALUE                                            = 0x0B73
const GL_BLUE                                                         = 0x1905
const GL_VERTEX_ARRAY                                                 = 0x8074
const GL_POLYGON_OFFSET_FACTOR                                        = 0x8038
const GL_TEXTURE10                                                    = 0x84CA
const GL_RIGHT                                                        = 0x0407
const GL_FOG_COORDINATE_ARRAY_POINTER                                 = 0x8456
const GL_MAP1_NORMAL                                                  = 0x0D92
const GL_TEXTURE28                                                    = 0x84DC
const GL_FRONT_FACE                                                   = 0x0B46
const GL_RGBA12                                                       = 0x805A
const GL_SAMPLER_2D_SHADOW                                            = 0x8B62
const GL_INVALID_OPERATION                                            = 0x0502
const GL_MAX_TEXTURE_LOD_BIAS                                         = 0x84FD
const GL_TEXTURE_GEN_T                                                = 0x0C61
const GL_POLYGON_MODE                                                 = 0x0B40
const GL_MAP1_TEXTURE_COORD_4                                         = 0x0D96
const GL_LOGIC_OP_MODE                                                = 0x0BF0
const GL_DRAW_BUFFER9                                                 = 0x882E
const GL_LINE_WIDTH                                                   = 0x0B21
const GL_INTENSITY4                                                   = 0x804A
const GL_SOURCE1_ALPHA                                                = 0x8589
const GL_EDGE_FLAG_ARRAY_BUFFER_BINDING                               = 0x889B
const GL_STATIC_READ                                                  = 0x88E5
const GL_POLYGON                                                      = 0x0009
const GL_PASS_THROUGH_TOKEN                                           = 0x0700
const GL_LIGHTING_BIT                                                 = 0x00000040
const GL_LINE_BIT                                                     = 0x00000004
const GL_POLYGON_STIPPLE                                              = 0x0B42
const GL_ALPHA8                                                       = 0x803C
const GL_FRONT                                                        = 0x0404
const GL_TEXTURE24                                                    = 0x84D8
const GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING                           = 0x889A
const GL_FLOAT_MAT3                                                   = 0x8B5B
const GL_POINT_FADE_THRESHOLD_SIZE                                    = 0x8128
const GL_MAX_NAME_STACK_DEPTH                                         = 0x0D37
const GL_COLOR_ARRAY                                                  = 0x8076
const GL_CURRENT_PROGRAM                                              = 0x8B8D
const GL_DRAW_BUFFER4                                                 = 0x8829
const GL_FRONT_LEFT                                                   = 0x0400
const GL_TEXTURE_CUBE_MAP_POSITIVE_Y                                  = 0x8517
const GL_VERTEX_ATTRIB_ARRAY_TYPE                                     = 0x8625
const GL_CLIENT_ACTIVE_TEXTURE                                        = 0x84E1
const GL_X2_BYTES                                                     = 0x1407
const GL_FEEDBACK_BUFFER_TYPE                                         = 0x0DF2
const GL_CONSTANT_ATTENUATION                                         = 0x1207
const GL_DRAW_BUFFER15                                                = 0x8834
const GL_LUMINANCE_ALPHA                                              = 0x190A
const GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING                           = 0x889F
const GL_SAMPLER_CUBE                                                 = 0x8B60
const GL_FLAT                                                         = 0x1D00
const GL_SLUMINANCE8_ALPHA8                                           = 0x8C45
const GL_SAMPLER_1D_SHADOW                                            = 0x8B61
const GL_FLOAT_MAT2x4                                                 = 0x8B66
const GL_COPY_INVERTED                                                = 0x150C
const GL_LIST_MODE                                                    = 0x0B30
const GL_FOG_END                                                      = 0x0B64
const GL_MODELVIEW_STACK_DEPTH                                        = 0x0BA3
const GL_NORMAL_ARRAY_TYPE                                            = 0x807E
const GL_LINK_STATUS                                                  = 0x8B82
const GL_COMPRESSED_SLUMINANCE_ALPHA                                  = 0x8C4B
const GL_INT_VEC3                                                     = 0x8B54
const GL_NEAREST_MIPMAP_NEAREST                                       = 0x2700
const GL_DOUBLEBUFFER                                                 = 0x0C32
const GL_TRIANGLE_STRIP                                               = 0x0005
const GL_MODELVIEW_MATRIX                                             = 0x0BA6
const GL_ALIASED_POINT_SIZE_RANGE                                     = 0x846D
const GL_TEXTURE13                                                    = 0x84CD
const GL_TEXTURE_BASE_LEVEL                                           = 0x813C
const GL_TEXTURE_MIN_LOD                                              = 0x813A
const GL_INDEX_OFFSET                                                 = 0x0D13
const GL_SAMPLE_COVERAGE_INVERT                                       = 0x80AB
const GL_FOG_INDEX                                                    = 0x0B61
const GL_BOOL_VEC3                                                    = 0x8B58
const GL_TEXTURE_BINDING_CUBE_MAP                                     = 0x8514
const GL_VERTEX_ARRAY_POINTER                                         = 0x808E
const GL_DRAW_BUFFER11                                                = 0x8830
const GL_INT                                                          = 0x1404
const GL_TRIANGLES                                                    = 0x0004
const GL_ALIASED_LINE_WIDTH_RANGE                                     = 0x846E
const GL_DECR_WRAP                                                    = 0x8508
const GL_NAND                                                         = 0x150E
const GL_SEPARATE_SPECULAR_COLOR                                      = 0x81FA
const GL_BLEND_DST_ALPHA                                              = 0x80CA
const GL_SELECTION_BUFFER_SIZE                                        = 0x0DF4
const GL_RGB10                                                        = 0x8052
const GL_ACCUM_BLUE_BITS                                              = 0x0D5A
const GL_TEXTURE30                                                    = 0x84DE
const GL_VERTEX_ATTRIB_ARRAY_NORMALIZED                               = 0x886A
const GL_TEXTURE_BORDER_COLOR                                         = 0x1004
const GL_ALPHA16                                                      = 0x803E
const GL_ARRAY_BUFFER_BINDING                                         = 0x8894
const GL_VERTEX_ATTRIB_ARRAY_SIZE                                     = 0x8623
const GL_LINE_STIPPLE_PATTERN                                         = 0x0B25
const GL_ACCUM_ALPHA_BITS                                             = 0x0D5B
const GL_CLIP_PLANE3                                                  = 0x3003
const GL_PIXEL_UNPACK_BUFFER_BINDING                                  = 0x88EF
const GL_TEXTURE_INTERNAL_FORMAT                                      = 0x1003
const GL_EDGE_FLAG                                                    = 0x0B43
const GL_FOG_COORD_SRC                                                = 0x8450
const GL_VERTEX_ARRAY_BUFFER_BINDING                                  = 0x8896
const GL_POLYGON_TOKEN                                                = 0x0703
const GL_X4D_COLOR_TEXTURE                                            = 0x0604
const GL_DEPTH_BIAS                                                   = 0x0D1F
const GL_FALSE                                                        = 0
const GL_PROXY_TEXTURE_CUBE_MAP                                       = 0x851B
const GL_UNSIGNED_INT_8_8_8_8_REV                                     = 0x8367
const GL_STENCIL_TEST                                                 = 0x0B90
const GL_LINE_STIPPLE                                                 = 0x0B24
const GL_SECONDARY_COLOR_ARRAY_POINTER                                = 0x845D
const GL_OPERAND2_RGB                                                 = 0x8592
const GL_PERSPECTIVE_CORRECTION_HINT                                  = 0x0C50
const GL_QUERY_RESULT_AVAILABLE                                       = 0x8867
const GL_LIGHT0                                                       = 0x4000
const GL_STENCIL_BACK_WRITEMASK                                       = 0x8CA5
const GL_R                                                            = 0x2002
const GL_MAX_VARYING_FLOATS                                           = 0x8B4B
const GL_RGBA4                                                        = 0x8056
const GL_RGBA_MODE                                                    = 0x0C31
const GL_TRANSFORM_BIT                                                = 0x00001000
const GL_LOGIC_OP                                                     = 0x0BF1
const GL_ADD                                                          = 0x0104
const GL_PACK_SWAP_BYTES                                              = 0x0D00
const GL_LINE_SMOOTH                                                  = 0x0B20
const GL_RED_SCALE                                                    = 0x0D14
const GL_STACK_OVERFLOW                                               = 0x0503
const GL_DEPTH_COMPONENT16                                            = 0x81A5
const GL_SHADING_LANGUAGE_VERSION                                     = 0x8B8C
const GL_COLOR_MATERIAL_FACE                                          = 0x0B55
const GL_TEXTURE_HEIGHT                                               = 0x1001
const GL_PIXEL_MAP_R_TO_R_SIZE                                        = 0x0CB6
const GL_EXTENSIONS                                                   = 0x1F03
const GL_LUMINANCE6_ALPHA2                                            = 0x8044
const GL_VERTEX_ATTRIB_ARRAY_STRIDE                                   = 0x8624
const GL_TEXTURE15                                                    = 0x84CF
const GL_ORDER                                                        = 0x0A01
const GL_PIXEL_MAP_I_TO_I_SIZE                                        = 0x0CB0
const GL_DRAW_BUFFER8                                                 = 0x882D
const GL_PIXEL_MAP_I_TO_A                                             = 0x0C75
# Export everything!
export glColor3i, glVertex4sv, glBlendEquation, glVertex4d, glTexEnvi, glRectiv, glTexCoord3d, glGetMapiv, glVertexAttrib3s, glReadBuffer, glGenTextures, glRasterPos3f, glEvalPoint2, glGetConvolutionFilter, glEvalCoord1dv, glLoadTransposeMatrixf, glGetFloatv, glVertexAttrib1d, glVertex2sv, glMultiTexCoord2s, glUniform3f, glGetColorTable, glConvolutionParameterf, glGetQueryObjectiv, glGetMinmaxParameterfv, glRasterPos4sv, glPassThrough, glClearDepth, glColor4bv, glUniformMatrix2fv, glBitmap, glVertexAttrib4d, glEvalPoint1, glGetLightfv, glVertexAttrib1dv, glColor3f, glColor3iv, glRasterPos2fv, glRectf, glPixelMapuiv, glUniformMatrix4fv, glBlendColor, glFeedbackBuffer, glLoadMatrixd, glColor4fv, glUniformMatrix3x2fv, glInitNames, glDisable, glCopyConvolutionFilter1D, glStencilFuncSeparate, glNormal3b, glMultiTexCoord2iv, glHint, glVertex3s, glVertex4i, glTexGeni, glPushName, glEvalCoord2dv, glTexGend, glIndexfv, glIndexub, glTexCoord2f, glVertex2f, glColor4dv, glPixelMapusv, glConvolutionParameterfv, glWindowPos2i, glCopyConvolutionFilter2D, glNormal3f, glFinish, glTexImage3D, glVertexAttrib4Nbv, glClear, glEvalCoord1fv, glColor3sv, glTexSubImage3D, glShaderSource, glNormal3sv, glUniform2iv, glBindTexture, glColor3d, glMultiTexCoord1dv, glCopyPixels, glTexCoord1d, glSecondaryColor3ubv, glVertex4f, glMatrixMode, glMultiTexCoord1s, glVertexAttrib4iv, glLineStipple, glRasterPos3fv, glConvolutionParameteri, glClientActiveTexture, glTexCoord3i, glWindowPos2f, glDepthRange, glTexGenf, glGetVertexAttribfv, glGetShaderInfoLog, glVertex3fv, glGetPointerv, glVertex3sv, glSecondaryColor3usv, glVertexAttrib3f, glNewList, glRectsv, glGenLists, glUniformMatrix2x3fv, glColor3s, glVertexAttrib3dv, glColor3b, glVertex4iv, glEndList, glHistogram, glTexCoord2iv, glGetTexParameterfv, glMultiTexCoord1iv, glResetMinmax, glUniformMatrix3fv, glScissor, glLightfv, glDeleteProgram, glRasterPos3i, glTexCoord3s, glGetProgramiv, glGetVertexAttribiv, glGetPixelMapuiv, glColor4b, glBindBuffer, glEnd, glRasterPos4d, glStencilMask, glCopyTexSubImage2D, glNormalPointer, glSecondaryColor3ui, glGetTexLevelParameterfv, glVertex4dv, glMultiTexCoord4f, glMultiTexCoord2f, glTexCoord2s, glColorTable, glOrtho, glColor3uiv, glEvalMesh2, glRects, glGetAttribLocation, glMateriali, glTexCoord3dv, glArrayElement, glWindowPos2sv, glVertex2dv, glGetMaterialfv, glInterleavedArrays, glTexParameteri, glCompressedTexImage2D, glVertexAttrib2f, glGetShaderSource, glWindowPos2dv, glIsBuffer, glUniform3iv, glVertexAttrib3fv, glVertex4s, glGetAttachedShaders, glRasterPos4fv, glNormal3bv, glTexCoord2dv, glWindowPos3sv, glTexCoordPointer, glTexCoord3sv, glRasterPos3s, glClearAccum, glSecondaryColor3d, glEnableVertexAttribArray, glWindowPos2s, glGetSeparableFilter, glDrawArrays, glRasterPos4iv, glGetActiveAttrib, glCopyTexImage1D, glWindowPos3i, glDeleteLists, glMultiTexCoord2sv, glStencilFunc, glTexGendv, glRasterPos2f, glMaterialiv, glEvalMesh1, glColor3us, glGetMapdv, glConvolutionFilter1D, glCompressedTexImage1D, glGetError, glVertex2s, glMultiTexCoord1fv, glMultiTexCoord2d, glDisableClientState, glGetHistogramParameteriv, glGetActiveUniform, glMap1f, glFogCoordfv, glColor4uiv, glColor4s, glPopClientAttrib, glColor4ub, glIndexd, glGetHistogram, glUseProgram, glMultiTexCoord1i, glCallLists, glUniformMatrix4x2fv, glDeleteTextures, glNormal3i, glFogiv, glRasterPos2s, glCompressedTexSubImage1D, glIndexiv, glVertexAttrib4sv, glPrioritizeTextures, glWindowPos3f, glMultiTexCoord3d, glSecondaryColor3dv, glTexParameterf, glTexEnviv, glTexCoord1sv, glVertexAttrib1s, glColor4usv, glDeleteShader, glCullFace, glIndexf, glRectfv, glVertex4fv, glMultMatrixf, glColor4f, glGenBuffers, glTexCoord1i, glTexParameterfv, glMultiTexCoord4s, glTexCoord1s, glEvalCoord2f, glMultiTexCoord4i, glMultiDrawElements, glDepthMask, glTexCoord3f, glDrawPixels, glLineWidth, glPolygonMode, glMultiTexCoord1d, glMultiTexCoord4sv, glGetTexEnvfv, glIsList, glGetBufferPointerv, glColorTableParameterfv, glCompressedTexSubImage3D, glVertexAttrib4uiv, glUniform1i, glFlush, glFrustum, glScalef, glPushClientAttrib, glSelectBuffer, glVertex2iv, glTexCoord4s, glColor3bv, glUniform1iv, glVertex3i, glRasterPos2iv, glUniform1fv, glEvalCoord2fv, glColor4ubv, glMap2f, glMapGrid2f, glConvolutionFilter2D, glActiveTexture, glIsTexture, glColorSubTable, glIsProgram, glAlphaFunc, glCallList, glColor4us, glPolygonOffset, glDrawRangeElements, glDetachShader, glVertexAttrib4f, glCopyTexSubImage3D, glNormal3d, glVertex3d, glMultMatrixd, glSecondaryColor3uiv, glStencilMaskSeparate, glGetProgramInfoLog, glTranslated, glMultiTexCoord3sv, glMaterialf, glVertexAttrib4dv, glVertexAttrib2d, glNormal3fv, glRasterPos3sv, glCreateProgram, glTexCoord1iv, glRotated, glLoadIdentity, glGetColorTableParameteriv, glTexParameteriv, glTexGenfv, glGetTexGeniv, glRasterPos2d, glGetIntegerv, glGetVertexAttribdv, glBlendEquationSeparate, glIndexdv, glEnable, glColor4i, glLightModeliv, glRasterPos2i, glMultiTexCoord4d, glBindAttribLocation, glMapGrid1f, glIsShader, glUniformMatrix4x3fv, glAreTexturesResident, glGetQueryObjectuiv, glValidateProgram, glPointParameterf, glIndexubv, glMap2d, glVertex2d, glMultiTexCoord2fv, glLightModelfv, glGetCompressedTexImage, glColorPointer, glTranslatef, glWindowPos3fv, glGetColorTableParameterfv, glStencilOpSeparate, glVertex2i, glMultiTexCoord3iv, glMultiTexCoord2i, glGetTexGendv, glTexCoord3iv, glTexCoord2i, glWindowPos3dv, glVertex2fv, glRasterPos4i, glMultiTexCoord1f, glMultiTexCoord4iv, glGetClipPlane, glWindowPos2fv, glVertexPointer, glUnmapBuffer, glVertexAttrib3d, glGetDoublev, glEndQuery, glViewport, glTexImage1D, glStencilOp, glTexCoord4iv, glGetMapfv, glResetHistogram, glRectdv, glCompressedTexImage3D, glFogCoorddv, glNormal3dv, glEdgeFlagPointer, glColor3ui, glMultiTexCoord3s, glColor4sv, glLoadMatrixf, glDisableVertexAttribArray, glMap1d, glIndexs, glNormal3s, glVertexAttrib4Nubv, glUniform1f, glCompressedTexSubImage2D, glGetVertexAttribPointerv, glTexCoord1f, glGetQueryiv, glTexCoord4sv, glRenderMode, glMinmax, glPixelTransferi, glGetTexEnviv, glColor3ub, glShadeModel, glAccum, glTexCoord3fv, glPixelStorei, glTexCoord4f, glPixelTransferf, glGetPixelMapusv, glIndexPointer, glMultiDrawArrays, glSecondaryColor3b, glBeginQuery, glVertexAttrib3sv, glVertexAttrib4Nub, glVertexAttrib4usv, glDrawBuffer, glTexEnvfv, glMultiTexCoord3dv, glLogicOp, glPopMatrix, glFogf, glEnableClientState, glMultiTexCoord1sv, glMultiTexCoord4dv, glVertexAttrib4Nusv, glGetMaterialiv, glVertexAttrib1f, glCopyColorTable, glIndexsv, glGetShaderiv, glGetBufferParameteriv, glVertexAttrib4Nuiv, glVertexAttrib2sv, glMultiTexCoord2dv, glTexCoord1dv, glColor3fv, glColorMask, glMultiTexCoord4fv, glPointParameteri, glSecondaryColor3iv, glWindowPos2d, glBlendFuncSeparate, glEdgeFlag, glPointSize, glConvolutionParameteriv, glTexGeniv, glSecondaryColor3us, glUniform3fv, glSecondaryColor3fv, glUniform4i, glListBase, glVertex3dv, glMapGrid1d, glBegin, glGetTexGenfv, glGetUniformfv, glSecondaryColor3s, glTexCoord1fv, glDrawBuffers, glLoadTransposeMatrixd, glRasterPos4s, glCopyTexSubImage1D, glGetMinmax, glLightModelf, glDeleteQueries, glIsEnabled, glCompileShader, glVertexAttrib1sv, glLinkProgram, glGetPolygonStipple, glReadPixels, glMultiTexCoord3f, glTexCoord2fv, glVertexAttrib2dv, glTexEnvf, glTexCoord4fv, glBufferData, glCreateShader, glGetUniformiv, glGetConvolutionParameterfv, glTexImage2D, glColor3dv, glEdgeFlagv, glColor4ui, glGetMinmaxParameteriv, glPointParameteriv, glEvalCoord2d, glGetConvolutionParameteriv, glGetUniformLocation, glGetTexImage, glGetTexLevelParameteriv, glPushAttrib, glVertexAttrib2fv, glVertexAttrib4bv, glUniform2fv, glColor3usv, glTexSubImage2D, glGetHistogramParameterfv, glPixelStoref, glPushMatrix, glFogi, glPixelZoom, glTexSubImage1D, glLightModeli, glTexCoord4i, glFogCoordf, glVertexAttrib2s, glDrawElements, glWindowPos3d, glFogfv, glScaled, glGetBufferSubData, glUniform4fv, glRasterPos3d, glColor3ubv, glColor4iv, glGetLightiv, glUniform2i, glWindowPos3s, glMaterialfv, glSecondaryColor3i, glRasterPos3dv, glPixelMapfv, glAttachShader, glPolygonStipple, glEvalCoord1f, glIndexi, glLoadName, glRasterPos4f, glIndexMask, glTexCoord2d, glMultTransposeMatrixf, glVertexAttrib4fv, glDepthFunc, glSecondaryColor3sv, glVertex3f, glUniformMatrix2x4fv, glMultTransposeMatrixd, glBufferSubData, glUniformMatrix3x4fv, glColorMaterial, glCopyColorSubTable, glRecti, glIsQuery, glUniform4iv, glCopyTexImage2D, glRotatef, glRasterPos2sv, glGenQueries, glWindowPos2iv, glClearIndex, glVertexAttrib4Nsv, glTexCoord4d, glFogCoordd, glPopName, glUniform2f, glVertexAttrib4ubv, glLighti, glSecondaryColorPointer, glRasterPos4dv, glDeleteBuffers, glTexCoord4dv, glClipPlane, glFogCoordPointer, glBlendFunc, glGetPixelMapfv, glRasterPos2dv, glMapGrid2d, glEvalCoord1d, glSecondaryColor3ub, glGetBooleanv, glMultiTexCoord3fv, glVertexAttrib4s, glGetTexParameteriv, glVertexAttribPointer, glFrontFace, glColorTableParameteriv, glRasterPos3iv, glColor4d, glPointParameterfv, glVertexAttrib1fv, glLightiv, glPopAttrib, glWindowPos3iv, glSampleCoverage, glClearColor, glSeparableFilter2D, glVertexAttrib4Niv, glRectd, glNormal3iv, glSecondaryColor3bv, glSecondaryColor3f, glUniform3i, glTexCoord2sv, glClearStencil, glVertex3iv, glLightf, glGetString, glMultiTexCoord3i, glUniform4f, glMapBuffer, GL_MAP1_GRID_SEGMENTS, GL_COMPILE, GL_SAMPLER_3D, GL_INTENSITY, GL_FOG_HINT, GL_FOG_COORDINATE_ARRAY_BUFFER_BINDING, GL_BUFFER_ACCESS, GL_LUMINANCE12_ALPHA12, GL_UNPACK_LSB_FIRST, GL_ACCUM_RED_BITS, GL_LIGHT4, GL_POINT_SPRITE, GL_LIGHT_MODEL_LOCAL_VIEWER, GL_OBJECT_LINEAR, GL_COLOR_ARRAY_SIZE, GL_TEXTURE12, GL_OPERAND1_RGB, GL_X3D, GL_TEXTURE_BINDING_3D, GL_SECONDARY_COLOR_ARRAY, GL_UNSIGNED_SHORT_5_6_5_REV, GL_PACK_ROW_LENGTH, GL_SET, GL_LINES, GL_QUADS, GL_EYE_LINEAR, GL_POLYGON_OFFSET_POINT, GL_TEXTURE, GL_BLEND_EQUATION_ALPHA, GL_INFO_LOG_LENGTH, GL_COMPILE_STATUS, GL_QUERY_RESULT, GL_RGB5, GL_VERTEX_SHADER, GL_LIST_BIT, GL_TEXTURE_PRIORITY, GL_EVAL_BIT, GL_POINT_SPRITE_COORD_ORIGIN, GL_CCW, GL_TEXTURE26, GL_SMOOTH_LINE_WIDTH_GRANULARITY, GL_ATTACHED_SHADERS, GL_BLEND_SRC_ALPHA, GL_C3F_V3F, GL_TEXTURE_CUBE_MAP_NEGATIVE_X, GL_MAP2_INDEX, GL_DEPTH_BUFFER_BIT, GL_STENCIL_BITS, GL_INTENSITY12, GL_DEPTH_COMPONENT32, GL_LIST_BASE, GL_DRAW_BUFFER7, GL_POINT_SMOOTH, GL_PIXEL_MAP_S_TO_S, GL_DOUBLE, GL_FOG_COORDINATE_ARRAY_STRIDE, GL_GENERATE_MIPMAP, GL_T2F_C4UB_V3F, GL_RGB16, GL_TEXTURE_MATRIX, GL_SRGB8_ALPHA8, GL_COLOR_ARRAY_STRIDE, GL_TEXTURE_CUBE_MAP_POSITIVE_X, GL_BITMAP, GL_CURRENT_INDEX, GL_MAP1_GRID_DOMAIN, GL_VERTEX_PROGRAM_POINT_SIZE, GL_STENCIL_PASS_DEPTH_FAIL, GL_TEXTURE_CUBE_MAP_NEGATIVE_Y, GL_STENCIL_BACK_FAIL, GL_XOR, GL_VERTEX_PROGRAM_TWO_SIDE, GL_LIGHT_MODEL_AMBIENT, GL_OPERAND0_ALPHA, GL_FOG_COORD_ARRAY_BUFFER_BINDING, GL_AMBIENT, GL_DYNAMIC_COPY, GL_EQUIV, GL_CURRENT_RASTER_INDEX, GL_POLYGON_OFFSET_FILL, GL_COLOR_WRITEMASK, GL_POINT_TOKEN, GL_TEXTURE8, GL_EQUAL, GL_TEXTURE1, GL_SECONDARY_COLOR_ARRAY_STRIDE, GL_SRC1_RGB, GL_RETURN, GL_RGBA16, GL_TEXTURE_2D, GL_TEXTURE_BINDING_1D, GL_LINE_WIDTH_RANGE, GL_PIXEL_MAP_I_TO_B, GL_ACCUM_BUFFER_BIT, GL_SAMPLES_PASSED, GL_MAP2_GRID_SEGMENTS, GL_INDEX_CLEAR_VALUE, GL_ENABLE_BIT, GL_MAP2_VERTEX_3, GL_OUT_OF_MEMORY, GL_UNSIGNED_SHORT_4_4_4_4, GL_MAP1_VERTEX_3, GL_TEXTURE18, GL_UNPACK_ALIGNMENT, GL_ONE_MINUS_SRC_ALPHA, GL_PIXEL_MAP_I_TO_I, GL_CURRENT_TEXTURE_COORDS, GL_COORD_REPLACE, GL_DIFFUSE, GL_TEXTURE_INTENSITY_SIZE, GL_DRAW_BUFFER6, GL_TEXTURE_GEN_R, GL_FLOAT_MAT2, GL_QUAD_STRIP, GL_DYNAMIC_DRAW, GL_DEPTH_FUNC, GL_MAP2_VERTEX_4, GL_FLOAT_MAT3x2, GL_PIXEL_MAP_G_TO_G, GL_INTENSITY8, GL_PIXEL_MAP_A_TO_A_SIZE, GL_MAP2_GRID_DOMAIN, GL_N3F_V3F, GL_SRC0_ALPHA, GL_DOMAIN, GL_TEXTURE_1D, GL_POINT_SIZE, GL_VIEWPORT, GL_RGBA, GL_DRAW_PIXEL_TOKEN, GL_CLAMP, GL_TEXTURE31, GL_TEXTURE_GEN_MODE, GL_FOG_COORD_ARRAY_STRIDE, GL_TEXTURE3, GL_PIXEL_MAP_I_TO_R, GL_COMBINE_ALPHA, GL_SUBTRACT, GL_DRAW_BUFFER2, GL_RGB4, GL_COLOR_ARRAY_TYPE, GL_COMBINE_RGB, GL_MAP1_TEXTURE_COORD_3, GL_ELEMENT_ARRAY_BUFFER, GL_COMPRESSED_SLUMINANCE, GL_SUBPIXEL_BITS, GL_UNPACK_SKIP_ROWS, GL_SOURCE0_RGB, GL_POINTS, GL_INCR_WRAP, GL_ACTIVE_ATTRIBUTES, GL_TEXTURE5, GL_ALPHA12, GL_GREEN_SCALE, GL_CURRENT_FOG_COORD, GL_SRC1_ALPHA, GL_PROXY_TEXTURE_1D, GL_TEXTURE_WRAP_S, GL_X2D, GL_SRGB, GL_STATIC_DRAW, GL_TEXTURE_COORD_ARRAY_POINTER, GL_INDEX_ARRAY, GL_T, GL_LESS, GL_INCR, GL_MAX_TEXTURE_SIZE, GL_MAX_DRAW_BUFFERS, GL_TEXTURE_ENV_MODE, GL_LIGHT3, GL_TEXTURE_BLUE_SIZE, GL_EDGE_FLAG_ARRAY, GL_TEXTURE_WRAP_R, GL_QUERY_COUNTER_BITS, GL_DECAL, GL_ONE_MINUS_DST_ALPHA, GL_PACK_SKIP_PIXELS, GL_SECONDARY_COLOR_ARRAY_TYPE, GL_TEXTURE_GREEN_SIZE, GL_EXP2, GL_LIGHT1, GL_DRAW_BUFFER13, GL_DEPTH, GL_CULL_FACE_MODE, GL_CLIP_PLANE5, GL_COMPRESSED_RGB, GL_ALPHA_BIAS, GL_TEXTURE_GEN_S, GL_MAP2_TEXTURE_COORD_1, GL_FLOAT_MAT4x3, GL_SAMPLER_2D, GL_TEXTURE_DEPTH_SIZE, GL_SRC0_RGB, GL_AND_REVERSE, GL_CLEAR, GL_DEPTH_TEXTURE_MODE, GL_TEXTURE_MAX_LOD, GL_MAX_CLIENT_ATTRIB_STACK_DEPTH, GL_SAMPLE_ALPHA_TO_ONE, GL_FLOAT_VEC4, GL_FOG_DENSITY, GL_LINE_TOKEN, GL_SLUMINANCE, GL_C4UB_V3F, GL_SAMPLE_BUFFERS, GL_NEAREST, GL_LINE_LOOP, GL_PIXEL_PACK_BUFFER, GL_COMPRESSED_ALPHA, GL_FLOAT_MAT2x3, GL_ALPHA_TEST, GL_BOOL_VEC2, GL_READ_ONLY, GL_LIGHT6, GL_SECONDARY_COLOR_ARRAY_SIZE, GL_RED_BITS, GL_STENCIL_BACK_REF, GL_PREVIOUS, GL_STENCIL_BACK_FUNC, GL_COMPRESSED_LUMINANCE, GL_BITMAP_TOKEN, GL_UNSIGNED_SHORT_4_4_4_4_REV, GL_TEXTURE4, GL_ACCUM_GREEN_BITS, GL_POINT_SIZE_RANGE, GL_UNSIGNED_BYTE_3_3_2, GL_WRITE_ONLY, GL_PIXEL_MAP_A_TO_A, GL_TEXTURE_COMPONENTS, GL_INVALID_VALUE, GL_ACCUM, GL_RGB_SCALE, GL_PIXEL_MAP_S_TO_S_SIZE, GL_CURRENT_RASTER_SECONDARY_COLOR, GL_VERTEX_ARRAY_TYPE, GL_SRGB8, GL_SINGLE_COLOR, GL_LUMINANCE, GL_REPLACE, GL_MATRIX_MODE, GL_DEPTH_COMPONENT, GL_OBJECT_PLANE, GL_WEIGHT_ARRAY_BUFFER_BINDING, GL_RGBA8, GL_TEXTURE_GEN_Q, GL_TEXTURE_STACK_DEPTH, GL_SCISSOR_TEST, GL_LIGHT2, GL_STEREO, GL_TEXTURE_COMPRESSED_IMAGE_SIZE, GL_AUTO_NORMAL, GL_TEXTURE22, GL_CLAMP_TO_EDGE, GL_ZOOM_X, GL_DRAW_BUFFER0, GL_ACTIVE_TEXTURE, GL_MAX_EVAL_ORDER, GL_TEXTURE_DEPTH, GL_FRONT_RIGHT, GL_DEPTH_RANGE, GL_X4_BYTES, GL_NORMAL_ARRAY, GL_BLEND_SRC_RGB, GL_LINE_RESET_TOKEN, GL_ONE, GL_STENCIL_PASS_DEPTH_PASS, GL_NO_ERROR, GL_SMOOTH_POINT_SIZE_RANGE, GL_AUX_BUFFERS, GL_MAX_TEXTURE_STACK_DEPTH, GL_LEQUAL, GL_POINT_SIZE_MAX, GL_MAX_TEXTURE_COORDS, GL_NONE, GL_BUFFER_SIZE, GL_PIXEL_MAP_B_TO_B, GL_INT_VEC4, GL_OR_INVERTED, GL_PACK_SKIP_ROWS, GL_NUM_COMPRESSED_TEXTURE_FORMATS, GL_RESCALE_NORMAL, GL_DEPTH_COMPONENT24, GL_BACK_LEFT, GL_MAP2_TEXTURE_COORD_4, GL_COLOR, GL_CONSTANT, GL_INT_VEC2, GL_UNSIGNED_SHORT, GL_MODULATE, GL_UNSIGNED_INT, GL_LUMINANCE4_ALPHA4, GL_X3D_COLOR, GL_POSITION, GL_COMPRESSED_INTENSITY, GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS, GL_COLOR_CLEAR_VALUE, GL_R3_G3_B2, GL_DELETE_STATUS, GL_PIXEL_MAP_G_TO_G_SIZE, GL_FLOAT_MAT4, GL_BACK_RIGHT, GL_LUMINANCE12_ALPHA4, GL_FRONT_AND_BACK, GL_RENDERER, GL_FOG_COORDINATE_SOURCE, GL_ATTRIB_STACK_DEPTH, GL_LINE_STIPPLE_REPEAT, GL_POLYGON_SMOOTH_HINT, GL_LUMINANCE4, GL_SMOOTH_POINT_SIZE_GRANULARITY, GL_OR_REVERSE, GL_MAP2_TEXTURE_COORD_2, GL_FOG_MODE, GL_LUMINANCE16, GL_OPERAND0_RGB, GL_STENCIL_BUFFER_BIT, GL_MAX_PROJECTION_STACK_DEPTH, GL_ARRAY_BUFFER, GL_POLYGON_SMOOTH, GL_EDGE_FLAG_ARRAY_POINTER, GL_FOG_COORD, GL_TEXTURE23, GL_INDEX_LOGIC_OP, GL_DOT3_RGBA, GL_NORMAL_ARRAY_POINTER, GL_TEXTURE11, GL_BLUE_SCALE, GL_DEPTH_BITS, GL_STENCIL_BACK_PASS_DEPTH_PASS, GL_LIGHT_MODEL_TWO_SIDE, GL_READ_BUFFER, GL_SLUMINANCE_ALPHA, GL_NORMALIZE, GL_CURRENT_COLOR, GL_FASTEST, GL_INDEX_ARRAY_POINTER, GL_MULTISAMPLE_BIT, GL_CURRENT_SECONDARY_COLOR, GL_MAP1_TEXTURE_COORD_1, GL_C4UB_V2F, GL_AUX2, GL_CURRENT_RASTER_POSITION_VALID, GL_COLOR_MATERIAL, GL_NAME_STACK_DEPTH, GL_AND_INVERTED, GL_LIGHT7, GL_DRAW_BUFFER3, GL_NICEST, GL_PIXEL_MAP_I_TO_G, GL_KEEP, GL_SOURCE0_ALPHA, GL_ZERO, GL_ACCUM_CLEAR_VALUE, GL_INDEX_ARRAY_STRIDE, GL_AMBIENT_AND_DIFFUSE, GL_DRAW_BUFFER, GL_BYTE, GL_COMPARE_R_TO_TEXTURE, GL_GREATER, GL_COPY, GL_NORMAL_ARRAY_BUFFER_BINDING, GL_ADD_SIGNED, GL_DONT_CARE, GL_MAX_ELEMENTS_VERTICES, GL_DST_ALPHA, GL_MAX_LIST_NESTING, GL_POINT_DISTANCE_ATTENUATION, GL_COLOR_MATERIAL_PARAMETER, GL_LIGHTING, GL_ELEMENT_ARRAY_BUFFER_BINDING, GL_AND, GL_SPOT_DIRECTION, GL_PIXEL_MAP_I_TO_B_SIZE, GL_COPY_PIXEL_TOKEN, GL_TRIANGLE_FAN, GL_UNSIGNED_BYTE_2_3_3_REV, GL_GREEN_BIAS, GL_RGB12, GL_POINT_SIZE_GRANULARITY, GL_FEEDBACK_BUFFER_SIZE, GL_TRUE, GL_PACK_SKIP_IMAGES, GL_INTERPOLATE, GL_RGB8, GL_COMPRESSED_LUMINANCE_ALPHA, GL_T2F_C3F_V3F, GL_TEXTURE_CUBE_MAP_POSITIVE_Z, GL_FOG_COORD_ARRAY_POINTER, GL_RENDER_MODE, GL_QUADRATIC_ATTENUATION, GL_T2F_N3F_V3F, GL_UNPACK_ROW_LENGTH, GL_LINE, GL_LINE_SMOOTH_HINT, GL_STREAM_DRAW, GL_MAP1_COLOR_4, GL_ALPHA_SCALE, GL_COMPRESSED_TEXTURE_FORMATS, GL_MAX_VERTEX_ATTRIBS, GL_LINE_STRIP, GL_VERSION, GL_CLIENT_VERTEX_ARRAY_BIT, GL_PROJECTION_STACK_DEPTH, GL_TEXTURE25, GL_SAMPLE_COVERAGE_VALUE, GL_VERTEX_ATTRIB_ARRAY_POINTER, GL_CURRENT_FOG_COORDINATE, GL_CURRENT_BIT, GL_FLOAT_MAT3x4, GL_SHORT, GL_POINT_BIT, GL_POLYGON_BIT, GL_BOOL, GL_BLUE_BIAS, GL_DYNAMIC_READ, GL_TEXTURE20, GL_SPECULAR, GL_RENDER, GL_MAX_CUBE_MAP_TEXTURE_SIZE, GL_X3D_COLOR_TEXTURE, GL_POINT_SMOOTH_HINT, GL_DOT3_RGB, GL_MAX_PIXEL_MAP_TABLE, GL_STENCIL_BACK_PASS_DEPTH_FAIL, GL_CLIP_PLANE0, GL_INDEX_ARRAY_BUFFER_BINDING, GL_CURRENT_RASTER_TEXTURE_COORDS, GL_COMPILE_AND_EXECUTE, GL_BLEND_SRC, GL_NEAREST_MIPMAP_LINEAR, GL_LUMINANCE16_ALPHA16, GL_SPOT_EXPONENT, GL_BLEND_DST, GL_SHADE_MODEL, GL_TEXTURE_COMPRESSION_HINT, GL_ACTIVE_ATTRIBUTE_MAX_LENGTH, GL_TRANSPOSE_TEXTURE_MATRIX, GL_CLIP_PLANE1, GL_VERTEX_ATTRIB_ARRAY_ENABLED, GL_FEEDBACK_BUFFER_POINTER, GL_VERTEX_ARRAY_STRIDE, GL_MAX_CLIP_PLANES, GL_DEPTH_WRITEMASK, GL_LINEAR, GL_RGB10_A2, GL_INDEX_WRITEMASK, GL_FOG_COORD_ARRAY, GL_SOURCE2_RGB, GL_COMBINE, GL_FLOAT_VEC3, GL_DRAW_BUFFER5, GL_TEXTURE_ENV_COLOR, GL_EXP, GL_DST_COLOR, GL_TEXTURE_WIDTH, GL_UNSIGNED_INT_2_10_10_10_REV, GL_MAX_FRAGMENT_UNIFORM_COMPONENTS, GL_SRGB_ALPHA, GL_V2F, GL_SECONDARY_COLOR_ARRAY_BUFFER_BINDING, GL_NEVER, GL_SLUMINANCE8, GL_UNPACK_IMAGE_HEIGHT, GL_PROXY_TEXTURE_2D, GL_TEXTURE_COMPARE_MODE, GL_TEXTURE0, GL_ACTIVE_UNIFORMS, GL_ALPHA4, GL_MAP2_COLOR_4, GL_CURRENT_QUERY, GL_SAMPLER_1D, GL_T2F_V3F, GL_FEEDBACK, GL_MAP2_NORMAL, GL_BACK, GL_SMOOTH, GL_BGR, GL_STENCIL, GL_TEXTURE_3D, GL_UNPACK_SWAP_BYTES, GL_ALWAYS, GL_COLOR_SUM, GL_LINEAR_ATTENUATION, GL_PIXEL_MAP_R_TO_R, GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS, GL_AUX0, GL_ZOOM_Y, GL_SRC2_ALPHA, GL_CURRENT_NORMAL, GL_SELECT, GL_MAX_TEXTURE_UNITS, GL_COLOR_ARRAY_BUFFER_BINDING, GL_LIST_INDEX, GL_SHININESS, GL_TEXTURE_COMPARE_FUNC, GL_DECR, GL_AUX3, GL_ALPHA_TEST_FUNC, GL_PIXEL_MAP_I_TO_G_SIZE, GL_STENCIL_VALUE_MASK, GL_MAX_TEXTURE_IMAGE_UNITS, GL_PIXEL_UNPACK_BUFFER, GL_MAP2_TEXTURE_COORD_3, GL_BLEND, GL_GREEN, GL_PIXEL_PACK_BUFFER_BINDING, GL_RGB, GL_NORMAL_MAP, GL_TEXTURE_MIN_FILTER, GL_UNSIGNED_INT_10_10_10_2, GL_FRAGMENT_SHADER_DERIVATIVE_HINT, GL_CULL_FACE, GL_STENCIL_FAIL, GL_COMPRESSED_SRGB, GL_DRAW_BUFFER1, GL_TEXTURE_LUMINANCE_SIZE, GL_COLOR_ARRAY_POINTER, GL_TEXTURE_BINDING_2D, GL_ALPHA, GL_STREAM_READ, GL_TEXTURE_WRAP_T, GL_ALL_ATTRIB_BITS, GL_UNSIGNED_INT_8_8_8_8, GL_TEXTURE29, GL_Q, GL_INDEX_BITS, GL_SPOT_CUTOFF, GL_PACK_LSB_FIRST, GL_BOOL_VEC4, GL_STENCIL_INDEX, GL_SRC2_RGB, GL_MODELVIEW, GL_POLYGON_OFFSET_UNITS, GL_TEXTURE9, GL_V3F, GL_FRAGMENT_DEPTH, GL_FOG_COLOR, GL_MAP_COLOR, GL_NORMAL_ARRAY_STRIDE, GL_TEXTURE_COORD_ARRAY_SIZE, GL_STENCIL_REF, GL_CLIENT_ALL_ATTRIB_BITS, GL_DEPTH_SCALE, GL_VIEWPORT_BIT, GL_UNSIGNED_SHORT_1_5_5_5_REV, GL_EMISSION, GL_CURRENT_RASTER_COLOR, GL_TEXTURE_RESIDENT, GL_TEXTURE17, GL_TEXTURE16, GL_DITHER, GL_MAP1_TEXTURE_COORD_2, GL_BLEND_DST_RGB, GL_S, GL_NOTEQUAL, GL_TEXTURE_CUBE_MAP_NEGATIVE_Z, GL_NOR, GL_LINEAR_MIPMAP_NEAREST, GL_T4F_C4F_N3F_V4F, GL_RED_BIAS, GL_OPERAND2_ALPHA, GL_SRC_COLOR, GL_POLYGON_OFFSET_LINE, GL_ACTIVE_UNIFORM_MAX_LENGTH, GL_POLYGON_STIPPLE_BIT, GL_PROJECTION_MATRIX, GL_MULTISAMPLE, GL_STENCIL_BACK_VALUE_MASK, GL_COLOR_INDEXES, GL_INVALID_ENUM, GL_NOOP, GL_INDEX_SHIFT, GL_INDEX_ARRAY_TYPE, GL_SAMPLES, GL_TEXTURE14, GL_BUFFER_MAPPED, GL_TRANSPOSE_COLOR_MATRIX, GL_LOWER_LEFT, GL_TEXTURE_COMPRESSED, GL_POINT, GL_SAMPLE_ALPHA_TO_COVERAGE, GL_FLOAT_MAT4x2, GL_TEXTURE_COORD_ARRAY, GL_FOG, GL_FRAGMENT_SHADER, GL_CLIENT_PIXEL_STORE_BIT, GL_SAMPLE_COVERAGE, GL_SHADER_TYPE, GL_ONE_MINUS_DST_COLOR, GL_SELECTION_BUFFER_POINTER, GL_UNPACK_SKIP_IMAGES, GL_MAX_MODELVIEW_STACK_DEPTH, GL_STACK_UNDERFLOW, GL_READ_WRITE, GL_LUMINANCE8, GL_INVERT, GL_LIGHT5, GL_FLOAT_VEC2, GL_SCISSOR_BIT, GL_CLIENT_ATTRIB_STACK_DEPTH, GL_BUFFER_USAGE, GL_CURRENT_RASTER_POSITION, GL_STENCIL_CLEAR_VALUE, GL_REPEAT, GL_UNSIGNED_SHORT_5_6_5, GL_FILL, GL_ONE_MINUS_SRC_COLOR, GL_PACK_ALIGNMENT, GL_TEXTURE2, GL_TEXTURE_ENV, GL_PIXEL_MODE_BIT, GL_BUFFER_MAP_POINTER, GL_GEQUAL, GL_RED, GL_LUMINANCE8_ALPHA8, GL_PRIMARY_COLOR, GL_MIRRORED_REPEAT, GL_CLAMP_TO_BORDER, GL_VALIDATE_STATUS, GL_COEFF, GL_TEXTURE7, GL_TEXTURE6, GL_COMPRESSED_SRGB_ALPHA, GL_CW, GL_TEXTURE_CUBE_MAP, GL_ALPHA_TEST_REF, GL_FOG_BIT, GL_X3_BYTES, GL_TEXTURE_MAX_LEVEL, GL_TEXTURE_ALPHA_SIZE, GL_FOG_COORDINATE_ARRAY_TYPE, GL_ALPHA_BITS, GL_OR, GL_T2F_C4F_N3F_V3F, GL_TEXTURE19, GL_MAX_LIGHTS, GL_MAX_VERTEX_UNIFORM_COMPONENTS, GL_MAX_VIEWPORT_DIMS, GL_POINT_SIZE_MIN, GL_CLIP_PLANE2, GL_T4F_V4F, GL_MAP1_INDEX, GL_FOG_COORDINATE_ARRAY, GL_TEXTURE_COORD_ARRAY_STRIDE, GL_LINEAR_MIPMAP_LINEAR, GL_COMPRESSED_RGBA, GL_MAX_ELEMENTS_INDICES, GL_DRAW_BUFFER10, GL_TEXTURE21, GL_PACK_IMAGE_HEIGHT, GL_MAP1_VERTEX_4, GL_SRC_ALPHA_SATURATE, GL_PROJECTION, GL_GENERATE_MIPMAP_HINT, GL_PROXY_TEXTURE_3D, GL_SHADER_SOURCE_LENGTH, GL_C4F_N3F_V3F, GL_BLEND_EQUATION_RGB, GL_INDEX_MODE, GL_MAP_STENCIL, GL_VERTEX_ARRAY_SIZE, GL_STATIC_COPY, GL_OPERAND1_ALPHA, GL_PIXEL_MAP_B_TO_B_SIZE, GL_TEXTURE27, GL_VENDOR, GL_DEPTH_TEST, GL_TEXTURE_RED_SIZE, GL_TEXTURE_FILTER_CONTROL, GL_TEXTURE_BORDER, GL_TEXTURE_COORD_ARRAY_TYPE, GL_UNSIGNED_BYTE, GL_TRANSPOSE_MODELVIEW_MATRIX, GL_UPPER_LEFT, GL_TEXTURE_BIT, GL_STREAM_COPY, GL_RGB5_A1, GL_AUX1, GL_BLUE_BITS, GL_LOAD, GL_COLOR_LOGIC_OP, GL_HINT_BIT, GL_TRANSPOSE_PROJECTION_MATRIX, GL_DRAW_BUFFER14, GL_FLOAT, GL_SPHERE_MAP, GL_COLOR_INDEX, GL_INTENSITY16, GL_SOURCE1_RGB, GL_SCISSOR_BOX, GL_MAX_3D_TEXTURE_SIZE, GL_EDGE_FLAG_ARRAY_STRIDE, GL_PIXEL_MAP_I_TO_R_SIZE, GL_LEFT, GL_PIXEL_MAP_I_TO_A_SIZE, GL_CLIP_PLANE4, GL_TEXTURE_MAG_FILTER, GL_UNPACK_SKIP_PIXELS, GL_TEXTURE_LOD_BIAS, GL_COLOR_BUFFER_BIT, GL_RGBA2, GL_MAX_ATTRIB_STACK_DEPTH, GL_SMOOTH_LINE_WIDTH_RANGE, GL_SOURCE2_ALPHA, GL_SRC_ALPHA, GL_REFLECTION_MAP, GL_CURRENT_VERTEX_ATTRIB, GL_FOG_COORDINATE, GL_FOG_START, GL_LUMINANCE12, GL_DRAW_BUFFER12, GL_UNSIGNED_SHORT_5_5_5_1, GL_FOG_COORD_ARRAY_TYPE, GL_MULT, GL_GREEN_BITS, GL_LIGHT_MODEL_COLOR_CONTROL, GL_CURRENT_RASTER_DISTANCE, GL_BGRA, GL_STENCIL_WRITEMASK, GL_EYE_PLANE, GL_LINE_WIDTH_GRANULARITY, GL_STENCIL_FUNC, GL_DEPTH_CLEAR_VALUE, GL_BLUE, GL_VERTEX_ARRAY, GL_POLYGON_OFFSET_FACTOR, GL_TEXTURE10, GL_RIGHT, GL_FOG_COORDINATE_ARRAY_POINTER, GL_MAP1_NORMAL, GL_TEXTURE28, GL_FRONT_FACE, GL_RGBA12, GL_SAMPLER_2D_SHADOW, GL_INVALID_OPERATION, GL_MAX_TEXTURE_LOD_BIAS, GL_TEXTURE_GEN_T, GL_POLYGON_MODE, GL_MAP1_TEXTURE_COORD_4, GL_LOGIC_OP_MODE, GL_DRAW_BUFFER9, GL_LINE_WIDTH, GL_INTENSITY4, GL_SOURCE1_ALPHA, GL_EDGE_FLAG_ARRAY_BUFFER_BINDING, GL_STATIC_READ, GL_POLYGON, GL_PASS_THROUGH_TOKEN, GL_LIGHTING_BIT, GL_LINE_BIT, GL_POLYGON_STIPPLE, GL_ALPHA8, GL_FRONT, GL_TEXTURE24, GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING, GL_FLOAT_MAT3, GL_POINT_FADE_THRESHOLD_SIZE, GL_MAX_NAME_STACK_DEPTH, GL_COLOR_ARRAY, GL_CURRENT_PROGRAM, GL_DRAW_BUFFER4, GL_FRONT_LEFT, GL_TEXTURE_CUBE_MAP_POSITIVE_Y, GL_VERTEX_ATTRIB_ARRAY_TYPE, GL_CLIENT_ACTIVE_TEXTURE, GL_X2_BYTES, GL_FEEDBACK_BUFFER_TYPE, GL_CONSTANT_ATTENUATION, GL_DRAW_BUFFER15, GL_LUMINANCE_ALPHA, GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING, GL_SAMPLER_CUBE, GL_FLAT, GL_SLUMINANCE8_ALPHA8, GL_SAMPLER_1D_SHADOW, GL_FLOAT_MAT2x4, GL_COPY_INVERTED, GL_LIST_MODE, GL_FOG_END, GL_MODELVIEW_STACK_DEPTH, GL_NORMAL_ARRAY_TYPE, GL_LINK_STATUS, GL_COMPRESSED_SLUMINANCE_ALPHA, GL_INT_VEC3, GL_NEAREST_MIPMAP_NEAREST, GL_DOUBLEBUFFER, GL_TRIANGLE_STRIP, GL_MODELVIEW_MATRIX, GL_ALIASED_POINT_SIZE_RANGE, GL_TEXTURE13, GL_TEXTURE_BASE_LEVEL, GL_TEXTURE_MIN_LOD, GL_INDEX_OFFSET, GL_SAMPLE_COVERAGE_INVERT, GL_FOG_INDEX, GL_BOOL_VEC3, GL_TEXTURE_BINDING_CUBE_MAP, GL_VERTEX_ARRAY_POINTER, GL_DRAW_BUFFER11, GL_INT, GL_TRIANGLES, GL_ALIASED_LINE_WIDTH_RANGE, GL_DECR_WRAP, GL_NAND, GL_SEPARATE_SPECULAR_COLOR, GL_BLEND_DST_ALPHA, GL_SELECTION_BUFFER_SIZE, GL_RGB10, GL_ACCUM_BLUE_BITS, GL_TEXTURE30, GL_VERTEX_ATTRIB_ARRAY_NORMALIZED, GL_TEXTURE_BORDER_COLOR, GL_ALPHA16, GL_ARRAY_BUFFER_BINDING, GL_VERTEX_ATTRIB_ARRAY_SIZE, GL_LINE_STIPPLE_PATTERN, GL_ACCUM_ALPHA_BITS, GL_CLIP_PLANE3, GL_PIXEL_UNPACK_BUFFER_BINDING, GL_TEXTURE_INTERNAL_FORMAT, GL_EDGE_FLAG, GL_FOG_COORD_SRC, GL_VERTEX_ARRAY_BUFFER_BINDING, GL_POLYGON_TOKEN, GL_X4D_COLOR_TEXTURE, GL_DEPTH_BIAS, GL_FALSE, GL_PROXY_TEXTURE_CUBE_MAP, GL_UNSIGNED_INT_8_8_8_8_REV, GL_STENCIL_TEST, GL_LINE_STIPPLE, GL_SECONDARY_COLOR_ARRAY_POINTER, GL_OPERAND2_RGB, GL_PERSPECTIVE_CORRECTION_HINT, GL_QUERY_RESULT_AVAILABLE, GL_LIGHT0, GL_STENCIL_BACK_WRITEMASK, GL_R, GL_MAX_VARYING_FLOATS, GL_RGBA4, GL_RGBA_MODE, GL_TRANSFORM_BIT, GL_LOGIC_OP, GL_ADD, GL_PACK_SWAP_BYTES, GL_LINE_SMOOTH, GL_RED_SCALE, GL_STACK_OVERFLOW, GL_DEPTH_COMPONENT16, GL_SHADING_LANGUAGE_VERSION, GL_COLOR_MATERIAL_FACE, GL_TEXTURE_HEIGHT, GL_PIXEL_MAP_R_TO_R_SIZE, GL_EXTENSIONS, GL_LUMINANCE6_ALPHA2, GL_VERTEX_ATTRIB_ARRAY_STRIDE, GL_TEXTURE15, GL_ORDER, GL_PIXEL_MAP_I_TO_I_SIZE, GL_DRAW_BUFFER8, GL_PIXEL_MAP_I_TO_A
