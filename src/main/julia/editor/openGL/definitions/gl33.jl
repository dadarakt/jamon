#function bodies
@createOpenGLFun glBlendEquation(mode::GLenum)::Void
@createOpenGLFun glReadBuffer(mode::GLenum)::Void
@createOpenGLFun glGenTextures(n::GLsizei, textures::Ptr{GLuint})::Void
@createOpenGLFun glFramebufferRenderbuffer(target::GLenum, attachment::GLenum, renderbuffertarget::GLenum, renderbuffer::GLuint)::Void
@createOpenGLFun glGetFloatv(pname::GLenum, params::Ptr{GLfloat})::Void
@createOpenGLFun glBindBufferBase(target::GLenum, index::GLuint, buffer::GLuint)::Void
@createOpenGLFun glClientWaitSync(sync::GLsync, flags::GLbitfield, timeout::GLuClonglong)::Cint
@createOpenGLFun glUniform3f(location::GLint, v0::GLfloat, v1::GLfloat, v2::GLfloat)::Void
@createOpenGLFun glGetIntegeri_v(target::GLenum, index::GLuint, data::Ptr{GLint})::Void
@createOpenGLFun glGetQueryObjectiv(id::GLuint, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glTexCoordP2ui(type_::GLenum, coords::GLuint)::Void
@createOpenGLFun glGetActiveUniformBlockName(program::GLuint, uniformBlockIndex::GLuint, bufSize::GLsizei, length::Ptr{GLsizei}, uniformBlockName::Ptr{GLchar})::Void
@createOpenGLFun glProvokingVertex(mode::GLenum)::Void
@createOpenGLFun glClearDepth(depth::GLdouble)::Void
@createOpenGLFun glUniformMatrix2fv(location::GLint, count::GLsizei, transpose::GLboolean, value::Ptr{GLfloat})::Void
@createOpenGLFun glTexParameterIiv(target::GLenum, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glVertexAttribI4usv(index::GLuint, v::Ptr{GLushort})::Void
@createOpenGLFun glVertexAttribI2iv(index::GLuint, v::Ptr{GLint})::Void
@createOpenGLFun glTexCoordP3ui(type_::GLenum, coords::GLuint)::Void
@createOpenGLFun glDeleteSync(sync::GLsync)::Void
@createOpenGLFun glGenSamplers(count::GLsizei, samplers::Ptr{GLuint})::Void
@createOpenGLFun glUniformMatrix4fv(location::GLint, count::GLsizei, transpose::GLboolean, value::Ptr{GLfloat})::Void
@createOpenGLFun glBlendColor(red::GLfloat, green::GLfloat, blue::GLfloat, alpha::GLfloat)::Void
@createOpenGLFun glBindFragDataLocation(program::GLuint, color::GLuint, name::Ptr{GLchar})::Void
@createOpenGLFun glUniformMatrix3x2fv(location::GLint, count::GLsizei, transpose::GLboolean, value::Ptr{GLfloat})::Void
@createOpenGLFun glDisable(cap::GLenum)::Void
@createOpenGLFun glSamplerParameteri(sampler::GLuint, pname::GLenum, param::GLint)::Void
@createOpenGLFun glStencilFuncSeparate(face::GLenum, func_::GLenum, ref::GLint, mask::GLuint)::Void
@createOpenGLFun glMultiDrawElementsBaseVertex(mode::GLenum, count::Ptr{GLsizei}, type_::GLenum, indices::Ptr{Ptr{Void}}, drawcount::GLsizei, basevertex::Ptr{GLint})::Void
@createOpenGLFun glHint(target::GLenum, mode::GLenum)::Void
@createOpenGLFun glIndexub(c::GLubyte)::Void
@createOpenGLFun glGenRenderbuffers(n::GLsizei, renderbuffers::Ptr{GLuint})::Void
@createOpenGLFun glFlushMappedBufferRange(target::GLenum, offset::GLintptr, length::GLsizeiptr)::Void
@createOpenGLFun glUniform1ui(location::GLint, v0::GLuint)::Void
@createOpenGLFun glFinish()::Void
@createOpenGLFun glTexImage3D(target::GLenum, level::GLint, internalformat::GLint, width::GLsizei, height::GLsizei, depth::GLsizei, border::GLint, format::GLenum, type_::GLenum, pixels::Ptr{Void})::Void
@createOpenGLFun glClear(mask::GLbitfield)::Void
@createOpenGLFun glTexSubImage3D(target::GLenum, level::GLint, xoffset::GLint, yoffset::GLint, zoffset::GLint, width::GLsizei, height::GLsizei, depth::GLsizei, format::GLenum, type_::GLenum, pixels::Ptr{Void})::Void
@createOpenGLFun glShaderSource(shader::GLuint, count::GLsizei, string_::Ptr{Uint8}, length::Ptr{GLint})::Void
@createOpenGLFun glUniform2iv(location::GLint, count::GLsizei, value::Ptr{GLint})::Void
@createOpenGLFun glBeginConditionalRender(id::GLuint, mode::GLenum)::Void
@createOpenGLFun glBindTexture(target::GLenum, texture::GLuint)::Void
@createOpenGLFun glGetActiveUniformsiv(program::GLuint, uniformCount::GLsizei, uniformIndices::Ptr{GLuint}, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glGetStringi(name::GLenum, index::GLuint)::Ptr{Cuchar}
@createOpenGLFun glTransformFeedbackVaryings(program::GLuint, count::GLsizei, varyings::Ptr{Uint8}, bufferMode::GLenum)::Void
@createOpenGLFun glGetVertexAttribfv(index::GLuint, pname::GLenum, params::Ptr{GLfloat})::Void
@createOpenGLFun glDepthRange(near_::GLdouble, far_::GLdouble)::Void
@createOpenGLFun glGetSamplerParameterIiv(sampler::GLuint, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glGetVertexAttribIuiv(index::GLuint, pname::GLenum, params::Ptr{GLuint})::Void
@createOpenGLFun glGetShaderInfoLog(shader::GLuint, bufSize::GLsizei, length::Ptr{GLsizei}, infoLog::Ptr{GLchar})::Void
@createOpenGLFun glRenderbufferStorageMultisample(target::GLenum, samples::GLsizei, internalformat::GLenum, width::GLsizei, height::GLsizei)::Void
@createOpenGLFun glGetPointerv(pname::GLenum, params::Ptr{Ptr{Void}})::Void
@createOpenGLFun glUniformMatrix2x3fv(location::GLint, count::GLsizei, transpose::GLboolean, value::Ptr{GLfloat})::Void
@createOpenGLFun glUniform2ui(location::GLint, v0::GLuint, v1::GLuint)::Void
@createOpenGLFun glBindFramebuffer(target::GLenum, framebuffer::GLuint)::Void
@createOpenGLFun glGetQueryObjectui64v(id::GLuint, pname::GLenum, params::Ptr{GLuint64})::Void
@createOpenGLFun glFramebufferTexture3D(target::GLenum, attachment::GLenum, textarget::GLenum, texture::GLuint, level::GLint, zoffset::GLint)::Void
@createOpenGLFun glVertexAttribDivisor(index::GLuint, divisor::GLuint)::Void
@createOpenGLFun glBindFragDataLocationIndexed(program::GLuint, colorNumber::GLuint, index::GLuint, name::Ptr{GLchar})::Void
@createOpenGLFun glDrawElementsBaseVertex(mode::GLenum, count::GLsizei, type_::GLenum, indices::Ptr{Void}, basevertex::GLint)::Void
@createOpenGLFun glMultiTexCoordP4ui(texture::GLenum, type_::GLenum, coords::GLuint)::Void
@createOpenGLFun glGetTexParameterfv(target::GLenum, pname::GLenum, params::Ptr{GLfloat})::Void
@createOpenGLFun glVertexAttribP4ui(index::GLuint, type_::GLenum, normalized::GLboolean, value::GLuint)::Void
@createOpenGLFun glUniformMatrix3fv(location::GLint, count::GLsizei, transpose::GLboolean, value::Ptr{GLfloat})::Void
@createOpenGLFun glScissor(x::GLint, y::GLint, width::GLsizei, height::GLsizei)::Void
@createOpenGLFun glDeleteProgram(program::GLuint)::Void
@createOpenGLFun glSamplerParameterIuiv(sampler::GLuint, pname::GLenum, param::Ptr{GLuint})::Void
@createOpenGLFun glGetProgramiv(program::GLuint, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glGetVertexAttribiv(index::GLuint, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glDrawElementsInstancedBaseVertex(mode::GLenum, count::GLsizei, type_::GLenum, indices::Ptr{Void}, instancecount::GLsizei, basevertex::GLint)::Void
@createOpenGLFun glBindBuffer(target::GLenum, buffer::GLuint)::Void
@createOpenGLFun glStencilMask(mask::GLuint)::Void
@createOpenGLFun glCopyTexSubImage2D(target::GLenum, level::GLint, xoffset::GLint, yoffset::GLint, x::GLint, y::GLint, width::GLsizei, height::GLsizei)::Void
@createOpenGLFun glGetTexLevelParameterfv(target::GLenum, level::GLint, pname::GLenum, params::Ptr{GLfloat})::Void
@createOpenGLFun glColorMaski(index::GLuint, r::GLboolean, g::GLboolean, b::GLboolean, a::GLboolean)::Void
@createOpenGLFun glNormalP3ui(type_::GLenum, coords::GLuint)::Void
@createOpenGLFun glVertexP3ui(type_::GLenum, value::GLuint)::Void
@createOpenGLFun glGetAttribLocation(program::GLuint, name::Ptr{GLchar})::Cint
@createOpenGLFun glGenerateMipmap(target::GLenum)::Void
@createOpenGLFun glDrawArraysInstanced(mode::GLenum, first::GLint, count::GLsizei, instancecount::GLsizei)::Void
@createOpenGLFun glDeleteRenderbuffers(n::GLsizei, renderbuffers::Ptr{GLuint})::Void
@createOpenGLFun glVertexAttribP1ui(index::GLuint, type_::GLenum, normalized::GLboolean, value::GLuint)::Void
@createOpenGLFun glTexParameteri(target::GLenum, pname::GLenum, param::GLint)::Void
@createOpenGLFun glCompressedTexImage2D(target::GLenum, level::GLint, internalformat::GLenum, width::GLsizei, height::GLsizei, border::GLint, imageSize::GLsizei, data::Ptr{Void})::Void
@createOpenGLFun glGetShaderSource(shader::GLuint, bufSize::GLsizei, length::Ptr{GLsizei}, source::Ptr{GLchar})::Void
@createOpenGLFun glUniform3iv(location::GLint, count::GLsizei, value::Ptr{GLint})::Void
@createOpenGLFun glIsBuffer(buffer::GLuint)::Bool
@createOpenGLFun glWaitSync(sync::GLsync, flags::GLbitfield, timeout::GLuint64)::Void
@createOpenGLFun glGetAttachedShaders(program::GLuint, maxCount::GLsizei, count::Ptr{GLsizei}, obj::Ptr{GLuint})::Void
@createOpenGLFun glVertexAttribI1uiv(index::GLuint, v::Ptr{GLuint})::Void
@createOpenGLFun glMultiTexCoordP1ui(texture::GLenum, type_::GLenum, coords::GLuint)::Void
@createOpenGLFun glGetUniformBlockIndex(program::GLuint, uniformBlockName::Ptr{GLchar})::Cuint
@createOpenGLFun glIsVertexArray(array::GLuint)::Bool
@createOpenGLFun glVertexAttribP2uiv(index::GLuint, type_::GLenum, normalized::GLboolean, value::Ptr{GLuint})::Void
@createOpenGLFun glEnableVertexAttribArray(index::GLuint)::Void
@createOpenGLFun glIsEnabledi(target::GLenum, index::GLuint)::Bool
@createOpenGLFun glVertexAttribP2ui(index::GLuint, type_::GLenum, normalized::GLboolean, value::GLuint)::Void
@createOpenGLFun glDrawArrays(mode::GLenum, first::GLint, count::GLsizei)::Void
@createOpenGLFun glGetActiveAttrib(program::GLuint, index::GLuint, bufSize::GLsizei, length::Ptr{GLsizei}, size::Ptr{GLint}, type_::Ptr{GLenum}, name::Ptr{GLchar})::Void
@createOpenGLFun glCopyTexImage1D(target::GLenum, level::GLint, internalformat::GLenum, x::GLint, y::GLint, width::GLsizei, border::GLint)::Void
@createOpenGLFun glGenVertexArrays(n::GLsizei, arrays::Ptr{GLuint})::Void
@createOpenGLFun glStencilFunc(func_::GLenum, ref::GLint, mask::GLuint)::Void
@createOpenGLFun glSecondaryColorP3uiv(type_::GLenum, color::Ptr{GLuint})::Void
@createOpenGLFun glGetActiveUniform(program::GLuint, index::GLuint, bufSize::GLsizei, length::Ptr{GLsizei}, size::Ptr{GLint}, type_::Ptr{GLenum}, name::Ptr{GLchar})::Void
@createOpenGLFun glCompressedTexImage1D(target::GLenum, level::GLint, internalformat::GLenum, width::GLsizei, border::GLint, imageSize::GLsizei, data::Ptr{Void})::Void
@createOpenGLFun glQueryCounter(id::GLuint, target::GLenum)::Void
@createOpenGLFun glGetError()::Cint
@createOpenGLFun glNormalP3uiv(type_::GLenum, coords::Ptr{GLuint})::Void
@createOpenGLFun glTexCoordP2uiv(type_::GLenum, coords::Ptr{GLuint})::Void
@createOpenGLFun glUniform4ui(location::GLint, v0::GLuint, v1::GLuint, v2::GLuint, v3::GLuint)::Void
@createOpenGLFun glVertexAttribI4i(index::GLuint, x::GLint, y::GLint, z::GLint, w::GLint)::Void
@createOpenGLFun glDrawRangeElementsBaseVertex(mode::GLenum, start::GLuint, END::GLuint, count::GLsizei, type_::GLenum, indices::Ptr{Void}, basevertex::GLint)::Void
@createOpenGLFun glUseProgram(program::GLuint)::Void
@createOpenGLFun glUniformMatrix4x2fv(location::GLint, count::GLsizei, transpose::GLboolean, value::Ptr{GLfloat})::Void
@createOpenGLFun glDeleteTextures(n::GLsizei, textures::Ptr{GLuint})::Void
@createOpenGLFun glCompressedTexSubImage1D(target::GLenum, level::GLint, xoffset::GLint, width::GLsizei, format::GLenum, imageSize::GLsizei, data::Ptr{Void})::Void
@createOpenGLFun glVertexAttribI4uiv(index::GLuint, v::Ptr{GLuint})::Void
@createOpenGLFun glGetInteger64v(pname::GLenum, params::Ptr{GLint64})::Void
@createOpenGLFun glVertexAttribI2ui(index::GLuint, x::GLuint, y::GLuint)::Void
@createOpenGLFun glTexParameterf(target::GLenum, pname::GLenum, param::GLfloat)::Void
@createOpenGLFun glPrimitiveRestartIndex(index::GLuint)::Void
@createOpenGLFun glDeleteShader(shader::GLuint)::Void
@createOpenGLFun glCullFace(mode::GLenum)::Void
@createOpenGLFun glGenBuffers(n::GLsizei, buffers::Ptr{GLuint})::Void
@createOpenGLFun glTexParameterfv(target::GLenum, pname::GLenum, params::Ptr{GLfloat})::Void
@createOpenGLFun glMultiDrawElements(mode::GLenum, count::Ptr{GLsizei}, type_::GLenum, indices::Ptr{Ptr{Void}}, drawcount::GLsizei)::Void
@createOpenGLFun glDepthMask(flag::GLboolean)::Void
@createOpenGLFun glLineWidth(width::GLfloat)::Void
@createOpenGLFun glPolygonMode(face::GLenum, mode::GLenum)::Void
@createOpenGLFun glGetSamplerParameteriv(sampler::GLuint, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glVertexAttribI3uiv(index::GLuint, v::Ptr{GLuint})::Void
@createOpenGLFun glGetBufferPointerv(target::GLenum, pname::GLenum, params::Ptr{Ptr{Void}})::Void
@createOpenGLFun glVertexAttribP4uiv(index::GLuint, type_::GLenum, normalized::GLboolean, value::Ptr{GLuint})::Void
@createOpenGLFun glCompressedTexSubImage3D(target::GLenum, level::GLint, xoffset::GLint, yoffset::GLint, zoffset::GLint, width::GLsizei, height::GLsizei, depth::GLsizei, format::GLenum, imageSize::GLsizei, data::Ptr{Void})::Void
@createOpenGLFun glVertexAttribI1iv(index::GLuint, v::Ptr{GLint})::Void
@createOpenGLFun glFramebufferTexture1D(target::GLenum, attachment::GLenum, textarget::GLenum, texture::GLuint, level::GLint)::Void
@createOpenGLFun glUniform2uiv(location::GLint, count::GLsizei, value::Ptr{GLuint})::Void
@createOpenGLFun glUniform1i(location::GLint, v0::GLint)::Void
@createOpenGLFun glFlush()::Void
@createOpenGLFun glEndConditionalRender()::Void
@createOpenGLFun glUniform3uiv(location::GLint, count::GLsizei, value::Ptr{GLuint})::Void
@createOpenGLFun glUniform1iv(location::GLint, count::GLsizei, value::Ptr{GLint})::Void
@createOpenGLFun glUniform1fv(location::GLint, count::GLsizei, value::Ptr{GLfloat})::Void
@createOpenGLFun glGenFramebuffers(n::GLsizei, framebuffers::Ptr{GLuint})::Void
@createOpenGLFun glFramebufferTextureLayer(target::GLenum, attachment::GLenum, texture::GLuint, level::GLint, layer::GLint)::Void
@createOpenGLFun glActiveTexture(texture::GLenum)::Void
@createOpenGLFun glSecondaryColorP3ui(type_::GLenum, color::GLuint)::Void
@createOpenGLFun glIsTexture(texture::GLuint)::Bool
@createOpenGLFun glClearBufferfi(buffer::GLenum, drawbuffer::GLint, depth::GLfloat, stencil::GLint)::Void
@createOpenGLFun glIsProgram(program::GLuint)::Bool
@createOpenGLFun glPolygonOffset(factor::GLfloat, units::GLfloat)::Void
@createOpenGLFun glDrawRangeElements(mode::GLenum, start::GLuint, END::GLuint, count::GLsizei, type_::GLenum, indices::Ptr{Void})::Void
@createOpenGLFun glDetachShader(program::GLuint, shader::GLuint)::Void
@createOpenGLFun glGetVertexAttribIiv(index::GLuint, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glGetTransformFeedbackVarying(program::GLuint, index::GLuint, bufSize::GLsizei, length::Ptr{GLsizei}, size::Ptr{GLsizei}, type_::Ptr{GLenum}, name::Ptr{GLchar})::Void
@createOpenGLFun glUniform4uiv(location::GLint, count::GLsizei, value::Ptr{GLuint})::Void
@createOpenGLFun glCopyTexSubImage3D(target::GLenum, level::GLint, xoffset::GLint, yoffset::GLint, zoffset::GLint, x::GLint, y::GLint, width::GLsizei, height::GLsizei)::Void
@createOpenGLFun glGetFramebufferAttachmentParameteriv(target::GLenum, attachment::GLenum, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glVertexAttribI1i(index::GLuint, x::GLint)::Void
@createOpenGLFun glVertexAttribI3ui(index::GLuint, x::GLuint, y::GLuint, z::GLuint)::Void
@createOpenGLFun glStencilMaskSeparate(face::GLenum, mask::GLuint)::Void
@createOpenGLFun glGetProgramInfoLog(program::GLuint, bufSize::GLsizei, length::Ptr{GLsizei}, infoLog::Ptr{GLchar})::Void
@createOpenGLFun glGetActiveUniformBlockiv(program::GLuint, uniformBlockIndex::GLuint, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glBlitFramebuffer(srcX0::GLint, srcY0::GLint, srcX1::GLint, srcY1::GLint, dstX0::GLint, dstY0::GLint, dstX1::GLint, dstY1::GLint, mask::GLbitfield, filter::GLenum)::Void
@createOpenGLFun glBeginTransformFeedback(primitiveMode::GLenum)::Void
@createOpenGLFun glVertexAttribI4bv(index::GLuint, v::Ptr{GLbyte})::Void
@createOpenGLFun glIsSampler(sampler::GLuint)::Bool
@createOpenGLFun glVertexAttribI3i(index::GLuint, x::GLint, y::GLint, z::GLint)::Void
@createOpenGLFun glVertexAttribI4ui(index::GLuint, x::GLuint, y::GLuint, z::GLuint, w::GLuint)::Void
@createOpenGLFun glCheckFramebufferStatus(target::GLenum)::Cint
@createOpenGLFun glVertexAttribI4ubv(index::GLuint, v::Ptr{GLubyte})::Void
@createOpenGLFun glCreateProgram()::Cuint
@createOpenGLFun glUniformBlockBinding(program::GLuint, uniformBlockIndex::GLuint, uniformBlockBinding::GLuint)::Void
@createOpenGLFun glTexParameteriv(target::GLenum, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glGetIntegerv(pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glGetSynciv(sync::GLsync, pname::GLenum, bufSize::GLsizei, length::Ptr{GLsizei}, values::Ptr{GLint})::Void
@createOpenGLFun glClampColor(target::GLenum, clamp::GLenum)::Void
@createOpenGLFun glVertexAttribP3ui(index::GLuint, type_::GLenum, normalized::GLboolean, value::GLuint)::Void
@createOpenGLFun glGetVertexAttribdv(index::GLuint, pname::GLenum, params::Ptr{GLdouble})::Void
@createOpenGLFun glBlendEquationSeparate(modeRGB::GLenum, modeAlpha::GLenum)::Void
@createOpenGLFun glFenceSync(condition::GLenum, flags::GLbitfield)::Sync
@createOpenGLFun glEnable(cap::GLenum)::Void
@createOpenGLFun glBindAttribLocation(program::GLuint, index::GLuint, name::Ptr{GLchar})::Void
@createOpenGLFun glSamplerParameterfv(sampler::GLuint, pname::GLenum, param::Ptr{GLfloat})::Void
@createOpenGLFun glIsShader(shader::GLuint)::Bool
@createOpenGLFun glUniformMatrix4x3fv(location::GLint, count::GLsizei, transpose::GLboolean, value::Ptr{GLfloat})::Void
@createOpenGLFun glGetQueryObjectuiv(id::GLuint, pname::GLenum, params::Ptr{GLuint})::Void
@createOpenGLFun glValidateProgram(program::GLuint)::Void
@createOpenGLFun glMapBufferRange(target::GLenum, offset::GLintptr, length::GLsizeiptr, access::GLbitfield)::Ptr{Void}
@createOpenGLFun glGetActiveUniformName(program::GLuint, uniformIndex::GLuint, bufSize::GLsizei, length::Ptr{GLsizei}, uniformName::Ptr{GLchar})::Void
@createOpenGLFun glTexCoordP4uiv(type_::GLenum, coords::Ptr{GLuint})::Void
@createOpenGLFun glPointParameterf(pname::GLenum, param::GLfloat)::Void
@createOpenGLFun glIndexubv(c::Ptr{GLubyte})::Void
@createOpenGLFun glClearBufferiv(buffer::GLenum, drawbuffer::GLint, value::Ptr{GLint})::Void
@createOpenGLFun glGetCompressedTexImage(target::GLenum, level::GLint, img::Ptr{Void})::Void
@createOpenGLFun glBindVertexArray(array::GLuint)::Void
@createOpenGLFun glSamplerParameteriv(sampler::GLuint, pname::GLenum, param::Ptr{GLint})::Void
@createOpenGLFun glStencilOpSeparate(face::GLenum, sfail::GLenum, dpfail::GLenum, dppass::GLenum)::Void
@createOpenGLFun glGetSamplerParameterfv(sampler::GLuint, pname::GLenum, params::Ptr{GLfloat})::Void
@createOpenGLFun glVertexAttribI3iv(index::GLuint, v::Ptr{GLint})::Void
@createOpenGLFun glVertexP4uiv(type_::GLenum, value::Ptr{GLuint})::Void
@createOpenGLFun glMultiTexCoordP1uiv(texture::GLenum, type_::GLenum, coords::Ptr{GLuint})::Void
@createOpenGLFun glSamplerParameterIiv(sampler::GLuint, pname::GLenum, param::Ptr{GLint})::Void
@createOpenGLFun glVertexAttribI2uiv(index::GLuint, v::Ptr{GLuint})::Void
@createOpenGLFun glUnmapBuffer(target::GLenum)::Bool
@createOpenGLFun glGetDoublev(pname::GLenum, params::Ptr{GLdouble})::Void
@createOpenGLFun glEndQuery(target::GLenum)::Void
@createOpenGLFun glViewport(x::GLint, y::GLint, width::GLsizei, height::GLsizei)::Void
@createOpenGLFun glTexImage1D(target::GLenum, level::GLint, internalformat::GLint, width::GLsizei, border::GLint, format::GLenum, type_::GLenum, pixels::Ptr{Void})::Void
@createOpenGLFun glStencilOp(fail::GLenum, zfail::GLenum, zpass::GLenum)::Void
@createOpenGLFun glGetBooleani_v(target::GLenum, index::GLuint, data::Ptr{GLboolean})::Void
@createOpenGLFun glTexCoordP1uiv(type_::GLenum, coords::Ptr{GLuint})::Void
@createOpenGLFun glCompressedTexImage3D(target::GLenum, level::GLint, internalformat::GLenum, width::GLsizei, height::GLsizei, depth::GLsizei, border::GLint, imageSize::GLsizei, data::Ptr{Void})::Void
@createOpenGLFun glSampleMaski(index::GLuint, mask::GLbitfield)::Void
@createOpenGLFun glFramebufferTexture2D(target::GLenum, attachment::GLenum, textarget::GLenum, texture::GLuint, level::GLint)::Void
@createOpenGLFun glMultiTexCoordP2uiv(texture::GLenum, type_::GLenum, coords::Ptr{GLuint})::Void
@createOpenGLFun glEndTransformFeedback()::Void
@createOpenGLFun glDisableVertexAttribArray(index::GLuint)::Void
@createOpenGLFun glUniform1uiv(location::GLint, count::GLsizei, value::Ptr{GLuint})::Void
@createOpenGLFun glVertexAttribI2i(index::GLuint, x::GLint, y::GLint)::Void
@createOpenGLFun glUniform1f(location::GLint, v0::GLfloat)::Void
@createOpenGLFun glTexParameterIuiv(target::GLenum, pname::GLenum, params::Ptr{GLuint})::Void
@createOpenGLFun glCompressedTexSubImage2D(target::GLenum, level::GLint, xoffset::GLint, yoffset::GLint, width::GLsizei, height::GLsizei, format::GLenum, imageSize::GLsizei, data::Ptr{Void})::Void
@createOpenGLFun glGetVertexAttribPointerv(index::GLuint, pname::GLenum, pointer::Ptr{Ptr{Void}})::Void
@createOpenGLFun glGetQueryiv(target::GLenum, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glVertexAttribP3uiv(index::GLuint, type_::GLenum, normalized::GLboolean, value::Ptr{GLuint})::Void
@createOpenGLFun glIsSync(sync::GLsync)::Bool
@createOpenGLFun glPixelStorei(pname::GLenum, param::GLint)::Void
@createOpenGLFun glBeginQuery(target::GLenum, id::GLuint)::Void
@createOpenGLFun glMultiDrawArrays(mode::GLenum, first::Ptr{GLint}, count::Ptr{GLsizei}, drawcount::GLsizei)::Void
@createOpenGLFun glGetTexParameterIiv(target::GLenum, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glUniform3ui(location::GLint, v0::GLuint, v1::GLuint, v2::GLuint)::Void
@createOpenGLFun glDeleteFramebuffers(n::GLsizei, framebuffers::Ptr{GLuint})::Void
@createOpenGLFun glGetTexParameterIuiv(target::GLenum, pname::GLenum, params::Ptr{GLuint})::Void
@createOpenGLFun glDrawBuffer(mode::GLenum)::Void
@createOpenGLFun glLogicOp(opcode::GLenum)::Void
@createOpenGLFun glFramebufferTexture(target::GLenum, attachment::GLenum, texture::GLuint, level::GLint)::Void
@createOpenGLFun glTexImage3DMultisample(target::GLenum, samples::GLsizei, internalformat::GLint, width::GLsizei, height::GLsizei, depth::GLsizei, fixedsamplelocations::GLboolean)::Void
@createOpenGLFun glGetShaderiv(shader::GLuint, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glGetBufferParameteriv(target::GLenum, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glTexCoordP4ui(type_::GLenum, coords::GLuint)::Void
@createOpenGLFun glCopyBufferSubData(readTarget::GLenum, writeTarget::GLenum, readOffset::GLintptr, writeOffset::GLintptr, size::GLsizeiptr)::Void
@createOpenGLFun glSamplerParameterf(sampler::GLuint, pname::GLenum, param::GLfloat)::Void
@createOpenGLFun glColorMask(red::GLboolean, green::GLboolean, blue::GLboolean, alpha::GLboolean)::Void
@createOpenGLFun glPointParameteri(pname::GLenum, param::GLint)::Void
@createOpenGLFun glEnablei(target::GLenum, index::GLuint)::Void
@createOpenGLFun glBlendFuncSeparate(sfactorRGB::GLenum, dfactorRGB::GLenum, sfactorAlpha::GLenum, dfactorAlpha::GLenum)::Void
@createOpenGLFun glTexBuffer(target::GLenum, internalformat::GLenum, buffer::GLuint)::Void
@createOpenGLFun glPointSize(size::GLfloat)::Void
@createOpenGLFun glTexCoordP3uiv(type_::GLenum, coords::Ptr{GLuint})::Void
@createOpenGLFun glUniform3fv(location::GLint, count::GLsizei, value::Ptr{GLfloat})::Void
@createOpenGLFun glUniform4i(location::GLint, v0::GLint, v1::GLint, v2::GLint, v3::GLint)::Void
@createOpenGLFun glMultiTexCoordP3ui(texture::GLenum, type_::GLenum, coords::GLuint)::Void
@createOpenGLFun glGetUniformfv(program::GLuint, location::GLint, params::Ptr{GLfloat})::Void
@createOpenGLFun glDrawBuffers(n::GLsizei, bufs::Ptr{GLenum})::Void
@createOpenGLFun glClearBufferfv(buffer::GLenum, drawbuffer::GLint, value::Ptr{GLfloat})::Void
@createOpenGLFun glDeleteQueries(n::GLsizei, ids::Ptr{GLuint})::Void
@createOpenGLFun glCopyTexSubImage1D(target::GLenum, level::GLint, xoffset::GLint, x::GLint, y::GLint, width::GLsizei)::Void
@createOpenGLFun glDisablei(target::GLenum, index::GLuint)::Void
@createOpenGLFun glCompileShader(shader::GLuint)::Void
@createOpenGLFun glVertexAttribI4sv(index::GLuint, v::Ptr{GLshort})::Void
@createOpenGLFun glIsEnabled(cap::GLenum)::Bool
@createOpenGLFun glGetRenderbufferParameteriv(target::GLenum, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glLinkProgram(program::GLuint)::Void
@createOpenGLFun glColorP3ui(type_::GLenum, color::GLuint)::Void
@createOpenGLFun glReadPixels(x::GLint, y::GLint, width::GLsizei, height::GLsizei, format::GLenum, type_::GLenum, pixels::Ptr{Void})::Void
@createOpenGLFun glVertexP2ui(type_::GLenum, value::GLuint)::Void
@createOpenGLFun glDrawElementsInstanced(mode::GLenum, count::GLsizei, type_::GLenum, indices::Ptr{Void}, instancecount::GLsizei)::Void
@createOpenGLFun glCreateShader(type_::GLenum)::Cuint
@createOpenGLFun glBufferData(target::GLenum, size::GLsizeiptr, data::Ptr{Void}, usage::GLenum)::Void
@createOpenGLFun glGetUniformiv(program::GLuint, location::GLint, params::Ptr{GLint})::Void
@createOpenGLFun glTexImage2D(target::GLenum, level::GLint, internalformat::GLint, width::GLsizei, height::GLsizei, border::GLint, format::GLenum, type_::GLenum, pixels::Ptr{Void})::Void
@createOpenGLFun glPointParameteriv(pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glGetUniformLocation(program::GLuint, name::Ptr{GLchar})::Cint
@createOpenGLFun glGetQueryObjecti64v(id::GLuint, pname::GLenum, params::Ptr{GLint64})::Void
@createOpenGLFun glGetTexImage(target::GLenum, level::GLint, format::GLenum, type_::GLenum, pixels::Ptr{Void})::Void
@createOpenGLFun glGetTexLevelParameteriv(target::GLenum, level::GLint, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glUniform2fv(location::GLint, count::GLsizei, value::Ptr{GLfloat})::Void
@createOpenGLFun glTexSubImage2D(target::GLenum, level::GLint, xoffset::GLint, yoffset::GLint, width::GLsizei, height::GLsizei, format::GLenum, type_::GLenum, pixels::Ptr{Void})::Void
@createOpenGLFun glPixelStoref(pname::GLenum, param::GLfloat)::Void
@createOpenGLFun glGetMultisamplefv(pname::GLenum, index::GLuint, val::Ptr{GLfloat})::Void
@createOpenGLFun glDeleteVertexArrays(n::GLsizei, arrays::Ptr{GLuint})::Void
@createOpenGLFun glIsRenderbuffer(renderbuffer::GLuint)::Bool
@createOpenGLFun glClearBufferuiv(buffer::GLenum, drawbuffer::GLint, value::Ptr{GLuint})::Void
@createOpenGLFun glRenderbufferStorage(target::GLenum, internalformat::GLenum, width::GLsizei, height::GLsizei)::Void
@createOpenGLFun glTexSubImage1D(target::GLenum, level::GLint, xoffset::GLint, width::GLsizei, format::GLenum, type_::GLenum, pixels::Ptr{Void})::Void
@createOpenGLFun glGetInteger64i_v(target::GLenum, index::GLuint, data::Ptr{GLint64})::Void
@createOpenGLFun glDrawElements(mode::GLenum, count::GLsizei, type_::GLenum, indices::Ptr{Void})::Void
@createOpenGLFun glVertexAttribI1ui(index::GLuint, x::GLuint)::Void
@createOpenGLFun glGetBufferSubData(target::GLenum, offset::GLintptr, size::GLsizeiptr, data::Ptr{Void})::Void
@createOpenGLFun glGetFragDataIndex(program::GLuint, name::Ptr{GLchar})::Cint
@createOpenGLFun glVertexP2uiv(type_::GLenum, value::Ptr{GLuint})::Void
@createOpenGLFun glUniform4fv(location::GLint, count::GLsizei, value::Ptr{GLfloat})::Void
@createOpenGLFun glGetUniformIndices(program::GLuint, uniformCount::GLsizei, uniformNames::Ptr{Uint8}, uniformIndices::Ptr{GLuint})::Void
@createOpenGLFun glGetFragDataLocation(program::GLuint, name::Ptr{GLchar})::Cint
@createOpenGLFun glUniform2i(location::GLint, v0::GLint, v1::GLint)::Void
@createOpenGLFun glMultiTexCoordP2ui(texture::GLenum, type_::GLenum, coords::GLuint)::Void
@createOpenGLFun glAttachShader(program::GLuint, shader::GLuint)::Void
@createOpenGLFun glGetUniformuiv(program::GLuint, location::GLint, params::Ptr{GLuint})::Void
@createOpenGLFun glDepthFunc(func_::GLenum)::Void
@createOpenGLFun glVertexAttribI4iv(index::GLuint, v::Ptr{GLint})::Void
@createOpenGLFun glUniformMatrix2x4fv(location::GLint, count::GLsizei, transpose::GLboolean, value::Ptr{GLfloat})::Void
@createOpenGLFun glColorP4ui(type_::GLenum, color::GLuint)::Void
@createOpenGLFun glBufferSubData(target::GLenum, offset::GLintptr, size::GLsizeiptr, data::Ptr{Void})::Void
@createOpenGLFun glUniformMatrix3x4fv(location::GLint, count::GLsizei, transpose::GLboolean, value::Ptr{GLfloat})::Void
@createOpenGLFun glIsQuery(id::GLuint)::Bool
@createOpenGLFun glUniform4iv(location::GLint, count::GLsizei, value::Ptr{GLint})::Void
@createOpenGLFun glCopyTexImage2D(target::GLenum, level::GLint, internalformat::GLenum, x::GLint, y::GLint, width::GLsizei, height::GLsizei, border::GLint)::Void
@createOpenGLFun glBindBufferRange(target::GLenum, index::GLuint, buffer::GLuint, offset::GLintptr, size::GLsizeiptr)::Void
@createOpenGLFun glGenQueries(n::GLsizei, ids::Ptr{GLuint})::Void
@createOpenGLFun glDeleteSamplers(count::GLsizei, samplers::Ptr{GLuint})::Void
@createOpenGLFun glGetBufferParameteri64v(target::GLenum, pname::GLenum, params::Ptr{GLint64})::Void
@createOpenGLFun glUniform2f(location::GLint, v0::GLfloat, v1::GLfloat)::Void
@createOpenGLFun glBindSampler(unit::GLuint, sampler::GLuint)::Void
@createOpenGLFun glColorP4uiv(type_::GLenum, color::Ptr{GLuint})::Void
@createOpenGLFun glVertexAttribIPointer(index::GLuint, size::GLint, type_::GLenum, stride::GLsizei, pointer::Ptr{Void})::Void
@createOpenGLFun glTexCoordP1ui(type_::GLenum, coords::GLuint)::Void
@createOpenGLFun glBindRenderbuffer(target::GLenum, renderbuffer::GLuint)::Void
@createOpenGLFun glDeleteBuffers(n::GLsizei, buffers::Ptr{GLuint})::Void
@createOpenGLFun glColorP3uiv(type_::GLenum, color::Ptr{GLuint})::Void
@createOpenGLFun glMultiTexCoordP4uiv(texture::GLenum, type_::GLenum, coords::Ptr{GLuint})::Void
@createOpenGLFun glGetSamplerParameterIuiv(sampler::GLuint, pname::GLenum, params::Ptr{GLuint})::Void
@createOpenGLFun glBlendFunc(sfactor::GLenum, dfactor::GLenum)::Void
@createOpenGLFun glMultiTexCoordP3uiv(texture::GLenum, type_::GLenum, coords::Ptr{GLuint})::Void
@createOpenGLFun glVertexAttribPointer(index::GLuint, size::GLint, type_::GLenum, normalized::GLboolean, stride::GLsizei, pointer::Ptr{Void})::Void
@createOpenGLFun glVertexP3uiv(type_::GLenum, value::Ptr{GLuint})::Void
@createOpenGLFun glGetBooleanv(pname::GLenum, params::Ptr{GLboolean})::Void
@createOpenGLFun glGetTexParameteriv(target::GLenum, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glVertexP4ui(type_::GLenum, value::GLuint)::Void
@createOpenGLFun glFrontFace(mode::GLenum)::Void
@createOpenGLFun glPointParameterfv(pname::GLenum, params::Ptr{GLfloat})::Void
@createOpenGLFun glSampleCoverage(value::GLfloat, invert::GLboolean)::Void
@createOpenGLFun glClearColor(red::GLfloat, green::GLfloat, blue::GLfloat, alpha::GLfloat)::Void
@createOpenGLFun glIsFramebuffer(framebuffer::GLuint)::Bool
@createOpenGLFun glVertexAttribP1uiv(index::GLuint, type_::GLenum, normalized::GLboolean, value::Ptr{GLuint})::Void
@createOpenGLFun glUniform3i(location::GLint, v0::GLint, v1::GLint, v2::GLint)::Void
@createOpenGLFun glClearStencil(s::GLint)::Void
@createOpenGLFun glTexImage2DMultisample(target::GLenum, samples::GLsizei, internalformat::GLint, width::GLsizei, height::GLsizei, fixedsamplelocations::GLboolean)::Void
@createOpenGLFun glGetString(name::GLenum)::Ptr{Cuchar}
@createOpenGLFun glUniform4f(location::GLint, v0::GLfloat, v1::GLfloat, v2::GLfloat, v3::GLfloat)::Void
@createOpenGLFun glMapBuffer(target::GLenum, access::GLenum)::Ptr{Void}
#constants
const GL_MAP1_GRID_SEGMENTS                                           = 0x0DD1
const GL_COMPILE                                                      = 0x1300
const GL_SAMPLER_3D                                                   = 0x8B5F
const GL_INTENSITY                                                    = 0x8049
const GL_FOG_HINT                                                     = 0x0C54
const GL_FOG_COORDINATE_ARRAY_BUFFER_BINDING                          = 0x889D
const GL_FRAMEBUFFER_INCOMPLETE_READ_BUFFER                           = 0x8CDC
const GL_BUFFER_ACCESS                                                = 0x88BB
const GL_LUMINANCE12_ALPHA12                                          = 0x8047
const GL_RGBA32I                                                      = 0x8D82
const GL_FRAMEBUFFER_UNSUPPORTED                                      = 0x8CDD
const GL_SAMPLER_2D_ARRAY                                             = 0x8DC1
const GL_UNPACK_LSB_FIRST                                             = 0x0CF1
const GL_ACCUM_RED_BITS                                               = 0x0D58
const GL_LIGHT4                                                       = 0x4004
const GL_POINT_SPRITE                                                 = 0x8861
const GL_MAX_GEOMETRY_OUTPUT_VERTICES                                 = 0x8DE0
const GL_READ_FRAMEBUFFER_BINDING                                     = 0x8CAA
const GL_LIGHT_MODEL_LOCAL_VIEWER                                     = 0x0B51
const GL_OBJECT_LINEAR                                                = 0x2401
const GL_COLOR_ARRAY_SIZE                                             = 0x8081
const GL_TEXTURE12                                                    = 0x84CC
const GL_OPERAND1_RGB                                                 = 0x8591
const GL_X3D                                                          = 0x0601
const GL_TEXTURE_BINDING_3D                                           = 0x806A
const GL_SECONDARY_COLOR_ARRAY                                        = 0x845E
const GL_UNSIGNED_SHORT_5_6_5_REV                                     = 0x8364
const GL_BGRA_INTEGER                                                 = 0x8D9B
const GL_PACK_ROW_LENGTH                                              = 0x0D02
const GL_SET                                                          = 0x150F
const GL_LINES                                                        = 0x0001
const GL_QUADS                                                        = 0x0007
const GL_EYE_LINEAR                                                   = 0x2400
const GL_POLYGON_OFFSET_POINT                                         = 0x2A01
const GL_TEXTURE                                                      = 0x1702
const GL_BLEND_EQUATION_ALPHA                                         = 0x883D
const GL_INFO_LOG_LENGTH                                              = 0x8B84
const GL_CLIP_DISTANCE0                                               = 0x3000
const GL_COMPILE_STATUS                                               = 0x8B81
const GL_QUERY_RESULT                                                 = 0x8866
const GL_RGB5                                                         = 0x8050
const GL_VERTEX_SHADER                                                = 0x8B31
const GL_LIST_BIT                                                     = 0x00020000
const GL_PROXY_TEXTURE_2D_MULTISAMPLE                                 = 0x9101
const GL_TEXTURE_PRIORITY                                             = 0x8066
const GL_EVAL_BIT                                                     = 0x00010000
const GL_POINT_SPRITE_COORD_ORIGIN                                    = 0x8CA0
const GL_CCW                                                          = 0x0901
const GL_TEXTURE26                                                    = 0x84DA
const GL_SMOOTH_LINE_WIDTH_GRANULARITY                                = 0x0B23
const GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME                           = 0x8CD1
const GL_BUFFER_MAP_LENGTH                                            = 0x9120
const GL_ATTACHED_SHADERS                                             = 0x8B85
const GL_CLIP_DISTANCE5                                               = 0x3005
const GL_MAP_UNSYNCHRONIZED_BIT                                       = 0x0020
const GL_BLEND_SRC_ALPHA                                              = 0x80CB
const GL_R32F                                                         = 0x822E
const GL_INT_SAMPLER_2D                                               = 0x8DCA
const GL_C3F_V3F                                                      = 0x2A24
const GL_TEXTURE_CUBE_MAP_NEGATIVE_X                                  = 0x8516
const GL_MAP2_INDEX                                                   = 0x0DB1
const GL_DEPTH_BUFFER_BIT                                             = 0x00000100
const GL_STENCIL_BITS                                                 = 0x0D57
const GL_INTENSITY12                                                  = 0x804C
const GL_DEPTH_COMPONENT32                                            = 0x81A7
const GL_SYNC_FLUSH_COMMANDS_BIT                                      = 0x00000001
const GL_UNIFORM_BLOCK_ACTIVE_UNIFORMS                                = 0x8A42
const GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN                        = 0x8C88
const GL_LIST_BASE                                                    = 0x0B32
const GL_DRAW_BUFFER7                                                 = 0x882C
const GL_POINT_SMOOTH                                                 = 0x0B10
const GL_INT_SAMPLER_3D                                               = 0x8DCB
const GL_BUFFER_MAP_OFFSET                                            = 0x9121
const GL_PIXEL_MAP_S_TO_S                                             = 0x0C71
const GL_INT_SAMPLER_1D_ARRAY                                         = 0x8DCE
const GL_DOUBLE                                                       = 0x140A
const GL_FOG_COORDINATE_ARRAY_STRIDE                                  = 0x8455
const GL_RG32F                                                        = 0x8230
const GL_GENERATE_MIPMAP                                              = 0x8191
const GL_RGB10_A2UI                                                   = 0x906F
const GL_T2F_C4UB_V3F                                                 = 0x2A29
const GL_RGB16                                                        = 0x8054
const GL_TEXTURE_MATRIX                                               = 0x0BA8
const GL_SRGB8_ALPHA8                                                 = 0x8C43
const GL_LAST_VERTEX_CONVENTION                                       = 0x8E4E
const GL_COLOR_ARRAY_STRIDE                                           = 0x8083
const GL_STENCIL_INDEX16                                              = 0x8D49
const GL_TEXTURE_CUBE_MAP_POSITIVE_X                                  = 0x8515
const GL_BITMAP                                                       = 0x1A00
const GL_CURRENT_INDEX                                                = 0x0B01
const GL_FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE                            = 0x8216
const GL_MAP1_GRID_DOMAIN                                             = 0x0DD0
const GL_VERTEX_PROGRAM_POINT_SIZE                                    = 0x8642
const GL_STENCIL_PASS_DEPTH_FAIL                                      = 0x0B95
const GL_TEXTURE_CUBE_MAP_NEGATIVE_Y                                  = 0x8518
const GL_BLUE_INTEGER                                                 = 0x8D96
const GL_STENCIL_BACK_FAIL                                            = 0x8801
const GL_XOR                                                          = 0x1506
const GL_VERTEX_PROGRAM_TWO_SIDE                                      = 0x8643
const GL_LIGHT_MODEL_AMBIENT                                          = 0x0B53
const GL_OPERAND0_ALPHA                                               = 0x8598
const GL_FOG_COORD_ARRAY_BUFFER_BINDING                               = 0x889D
const GL_RGBA16UI                                                     = 0x8D76
const GL_AMBIENT                                                      = 0x1200
const GL_DEPTH_CLAMP                                                  = 0x864F
const GL_DYNAMIC_COPY                                                 = 0x88EA
const GL_TEXTURE_1D_ARRAY                                             = 0x8C18
const GL_EQUIV                                                        = 0x1509
const GL_CURRENT_RASTER_INDEX                                         = 0x0B05
const GL_POLYGON_OFFSET_FILL                                          = 0x8037
const GL_COLOR_WRITEMASK                                              = 0x0C23
const GL_POINT_TOKEN                                                  = 0x0701
const GL_TEXTURE8                                                     = 0x84C8
const GL_EQUAL                                                        = 0x0202
const GL_R32I                                                         = 0x8235
const GL_MAX_ARRAY_TEXTURE_LAYERS                                     = 0x88FF
const GL_TEXTURE1                                                     = 0x84C1
const GL_SECONDARY_COLOR_ARRAY_STRIDE                                 = 0x845C
const GL_UNSIGNED_INT_10F_11F_11F_REV                                 = 0x8C3B
const GL_SRC1_RGB                                                     = 0x8581
const GL_RETURN                                                       = 0x0102
const GL_RGBA16                                                       = 0x805B
const GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE                           = 0x8D56
const GL_TEXTURE_2D                                                   = 0x0DE1
const GL_TEXTURE_BINDING_1D                                           = 0x8068
const GL_MAX_GEOMETRY_OUTPUT_COMPONENTS                               = 0x9124
const GL_LINE_WIDTH_RANGE                                             = 0x0B22
const GL_PIXEL_MAP_I_TO_B                                             = 0x0C74
const GL_ACCUM_BUFFER_BIT                                             = 0x00000200
const GL_SAMPLES_PASSED                                               = 0x8914
const GL_MAP2_GRID_SEGMENTS                                           = 0x0DD3
const GL_READ_FRAMEBUFFER                                             = 0x8CA8
const GL_INDEX_CLEAR_VALUE                                            = 0x0C20
const GL_ENABLE_BIT                                                   = 0x00002000
const GL_OBJECT_TYPE                                                  = 0x9112
const GL_MAP2_VERTEX_3                                                = 0x0DB7
const GL_OUT_OF_MEMORY                                                = 0x0505
const GL_COLOR_ATTACHMENT12                                           = 0x8CEC
const GL_UNSIGNED_SHORT_4_4_4_4                                       = 0x8033
const GL_STENCIL_INDEX8                                               = 0x8D48
const GL_RGB8I                                                        = 0x8D8F
const GL_MAP1_VERTEX_3                                                = 0x0D97
const GL_CLIP_DISTANCE2                                               = 0x3002
const GL_TEXTURE18                                                    = 0x84D2
const GL_INT_2_10_10_10_REV                                           = 0x8D9F
const GL_UNSIGNED_INT_SAMPLER_3D                                      = 0x8DD3
const GL_DEPTH_ATTACHMENT                                             = 0x8D00
const GL_UNPACK_ALIGNMENT                                             = 0x0CF5
const GL_PROVOKING_VERTEX                                             = 0x8E4F
const GL_ONE_MINUS_SRC_ALPHA                                          = 0x0303
const GL_PIXEL_MAP_I_TO_I                                             = 0x0C70
const GL_CURRENT_TEXTURE_COORDS                                       = 0x0B03
const GL_COORD_REPLACE                                                = 0x8862
const GL_DIFFUSE                                                      = 0x1201
const GL_TEXTURE_INTENSITY_SIZE                                       = 0x8061
const GL_DRAW_BUFFER6                                                 = 0x882B
const GL_TEXTURE_2D_MULTISAMPLE_ARRAY                                 = 0x9102
const GL_TEXTURE_GEN_R                                                = 0x0C62
const GL_FLOAT_MAT2                                                   = 0x8B5A
const GL_UNSIGNED_NORMALIZED                                          = 0x8C17
const GL_QUAD_STRIP                                                   = 0x0008
const GL_DYNAMIC_DRAW                                                 = 0x88E8
const GL_SYNC_FENCE                                                   = 0x9116
const GL_ONE_MINUS_SRC1_ALPHA                                         = 0x88FB
const GL_DEPTH_FUNC                                                   = 0x0B74
const GL_MAP2_VERTEX_4                                                = 0x0DB8
const GL_FLOAT_MAT3x2                                                 = 0x8B67
const GL_RGBA8I                                                       = 0x8D8E
const GL_RENDERBUFFER_SAMPLES                                         = 0x8CAB
const GL_PIXEL_MAP_G_TO_G                                             = 0x0C77
const GL_INTENSITY8                                                   = 0x804B
const GL_PIXEL_MAP_A_TO_A_SIZE                                        = 0x0CB9
const GL_MAP2_GRID_DOMAIN                                             = 0x0DD2
const GL_N3F_V3F                                                      = 0x2A25
const GL_SRC0_ALPHA                                                   = 0x8588
const GL_DOMAIN                                                       = 0x0A02
const GL_TEXTURE_1D                                                   = 0x0DE0
const GL_RENDERBUFFER_WIDTH                                           = 0x8D42
const GL_POINT_SIZE                                                   = 0x0B11
const GL_VIEWPORT                                                     = 0x0BA2
const GL_R16_SNORM                                                    = 0x8F98
const GL_RGBA                                                         = 0x1908
const GL_DRAW_PIXEL_TOKEN                                             = 0x0705
const GL_TEXTURE_SWIZZLE_G                                            = 0x8E43
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
const GL_UNSIGNED_INT_SAMPLER_2D                                      = 0x8DD2
const GL_COLOR_ARRAY_TYPE                                             = 0x8082
const GL_COMBINE_RGB                                                  = 0x8571
const GL_MAP1_TEXTURE_COORD_3                                         = 0x0D95
const GL_ELEMENT_ARRAY_BUFFER                                         = 0x8893
const GL_COMPRESSED_SLUMINANCE                                        = 0x8C4A
const GL_SUBPIXEL_BITS                                                = 0x0D50
const GL_UNPACK_SKIP_ROWS                                             = 0x0CF3
const GL_SOURCE0_RGB                                                  = 0x8580
const GL_TEXTURE_SWIZZLE_RGBA                                         = 0x8E46
const GL_UNIFORM_BLOCK_INDEX                                          = 0x8A3A
const GL_MAX_DUAL_SOURCE_DRAW_BUFFERS                                 = 0x88FC
const GL_RGBA_INTEGER                                                 = 0x8D99
const GL_RGB16F                                                       = 0x881B
const GL_MAX_COMBINED_UNIFORM_BLOCKS                                  = 0x8A2E
const GL_POINTS                                                       = 0x0000
const GL_INCR_WRAP                                                    = 0x8507
const GL_ACTIVE_ATTRIBUTES                                            = 0x8B89
const GL_FIXED_ONLY                                                   = 0x891D
const GL_MAX_UNIFORM_BLOCK_SIZE                                       = 0x8A30
const GL_TEXTURE5                                                     = 0x84C5
const GL_ALPHA12                                                      = 0x803D
const GL_GREEN_SCALE                                                  = 0x0D18
const GL_CURRENT_FOG_COORD                                            = 0x8453
const GL_SRC1_ALPHA                                                   = 0x8589
const GL_PROXY_TEXTURE_1D                                             = 0x8063
const GL_TEXTURE_WRAP_S                                               = 0x2802
const GL_X2D                                                          = 0x0600
const GL_SAMPLER_BUFFER                                               = 0x8DC2
const GL_SRGB                                                         = 0x8C40
const GL_STATIC_DRAW                                                  = 0x88E4
const GL_TEXTURE_COORD_ARRAY_POINTER                                  = 0x8092
const GL_TEXTURE_2D_MULTISAMPLE                                       = 0x9100
const GL_INDEX_ARRAY                                                  = 0x8077
const GL_T                                                            = 0x2001
const GL_R11F_G11F_B10F                                               = 0x8C3A
const GL_RENDERBUFFER_ALPHA_SIZE                                      = 0x8D53
const GL_LESS                                                         = 0x0201
const GL_TEXTURE_SHARED_SIZE                                          = 0x8C3F
const GL_INCR                                                         = 0x1E02
const GL_MAX_TEXTURE_SIZE                                             = 0x0D33
const GL_MAX_DRAW_BUFFERS                                             = 0x8824
const GL_TEXTURE_ENV_MODE                                             = 0x2200
const GL_LIGHT3                                                       = 0x4003
const GL_TEXTURE_BLUE_SIZE                                            = 0x805E
const GL_UNSIGNED_INT_SAMPLER_2D_RECT                                 = 0x8DD5
const GL_EDGE_FLAG_ARRAY                                              = 0x8079
const GL_TEXTURE_WRAP_R                                               = 0x8072
const GL_QUERY_COUNTER_BITS                                           = 0x8864
const GL_DECAL                                                        = 0x2101
const GL_RG32I                                                        = 0x823B
const GL_ONE_MINUS_DST_ALPHA                                          = 0x0305
const GL_COLOR_ATTACHMENT8                                            = 0x8CE8
const GL_COMPRESSED_SIGNED_RED_RGTC1                                  = 0x8DBC
const GL_PACK_SKIP_PIXELS                                             = 0x0D04
const GL_SECONDARY_COLOR_ARRAY_TYPE                                   = 0x845B
const GL_TEXTURE_GREEN_SIZE                                           = 0x805D
const GL_EXP2                                                         = 0x0801
const GL_LIGHT1                                                       = 0x4001
const GL_DRAW_BUFFER13                                                = 0x8832
const GL_DEPTH                                                        = 0x1801
const GL_CULL_FACE_MODE                                               = 0x0B45
const GL_CLIP_PLANE5                                                  = 0x3005
const GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT                            = 0x8CD6
const GL_COMPRESSED_RGB                                               = 0x84ED
const GL_ALPHA_BIAS                                                   = 0x0D1D
const GL_TEXTURE_GEN_S                                                = 0x0C60
const GL_SIGNALED                                                     = 0x9119
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
const GL_TIMEOUT_IGNORED                                              = 0xFFFFFFFFFFFFFFFF
const GL_SLUMINANCE                                                   = 0x8C46
const GL_TEXTURE_FIXED_SAMPLE_LOCATIONS                               = 0x9107
const GL_C4UB_V3F                                                     = 0x2A23
const GL_SAMPLE_BUFFERS                                               = 0x80A8
const GL_NEAREST                                                      = 0x2600
const GL_RG8                                                          = 0x822B
const GL_LINE_LOOP                                                    = 0x0002
const GL_RGB8UI                                                       = 0x8D7D
const GL_PIXEL_PACK_BUFFER                                            = 0x88EB
const GL_GEOMETRY_VERTICES_OUT                                        = 0x8916
const GL_COMPRESSED_ALPHA                                             = 0x84E9
const GL_FLOAT_MAT2x3                                                 = 0x8B65
const GL_ALPHA_TEST                                                   = 0x0BC0
const GL_R16UI                                                        = 0x8234
const GL_SYNC_CONDITION                                               = 0x9113
const GL_COLOR_ATTACHMENT11                                           = 0x8CEB
const GL_BOOL_VEC2                                                    = 0x8B57
const GL_READ_ONLY                                                    = 0x88B8
const GL_R16F                                                         = 0x822D
const GL_LIGHT6                                                       = 0x4006
const GL_SECONDARY_COLOR_ARRAY_SIZE                                   = 0x845A
const GL_SAMPLER_CUBE_SHADOW                                          = 0x8DC5
const GL_RED_BITS                                                     = 0x0D52
const GL_COMPARE_REF_TO_TEXTURE                                       = 0x884E
const GL_STENCIL_BACK_REF                                             = 0x8CA3
const GL_PREVIOUS                                                     = 0x8578
const GL_STENCIL_BACK_FUNC                                            = 0x8800
const GL_COMPRESSED_LUMINANCE                                         = 0x84EA
const GL_BITMAP_TOKEN                                                 = 0x0704
const GL_CLIP_DISTANCE7                                               = 0x3007
const GL_UNSIGNED_SHORT_4_4_4_4_REV                                   = 0x8365
const GL_TEXTURE4                                                     = 0x84C4
const GL_ACCUM_GREEN_BITS                                             = 0x0D59
const GL_POINT_SIZE_RANGE                                             = 0x0B12
const GL_UNSIGNED_BYTE_3_3_2                                          = 0x8032
const GL_TEXTURE_SWIZZLE_A                                            = 0x8E45
const GL_MAX_VERTEX_OUTPUT_COMPONENTS                                 = 0x9122
const GL_WRITE_ONLY                                                   = 0x88B9
const GL_COMPRESSED_RED                                               = 0x8225
const GL_PIXEL_MAP_A_TO_A                                             = 0x0C79
const GL_TEXTURE_COMPONENTS                                           = 0x1003
const GL_INVALID_VALUE                                                = 0x0501
const GL_CLAMP_READ_COLOR                                             = 0x891C
const GL_ACCUM                                                        = 0x0100
const GL_RGB_SCALE                                                    = 0x8573
const GL_PIXEL_MAP_S_TO_S_SIZE                                        = 0x0CB1
const GL_CURRENT_RASTER_SECONDARY_COLOR                               = 0x845F
const GL_RASTERIZER_DISCARD                                           = 0x8C89
const GL_VERTEX_ARRAY_TYPE                                            = 0x807B
const GL_SRGB8                                                        = 0x8C41
const GL_SINGLE_COLOR                                                 = 0x81F9
const GL_RG_SNORM                                                     = 0x8F91
const GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS                     = 0x8A33
const GL_LUMINANCE                                                    = 0x1909
const GL_RGB32F                                                       = 0x8815
const GL_REPLACE                                                      = 0x1E01
const GL_MATRIX_MODE                                                  = 0x0BA0
const GL_DEPTH_COMPONENT                                              = 0x1902
const GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS                       = 0x8A31
const GL_OBJECT_PLANE                                                 = 0x2501
const GL_WEIGHT_ARRAY_BUFFER_BINDING                                  = 0x889E
const GL_RGBA8                                                        = 0x8058
const GL_TEXTURE_GEN_Q                                                = 0x0C63
const GL_TEXTURE_DEPTH_TYPE                                           = 0x8C16
const GL_TEXTURE_STACK_DEPTH                                          = 0x0BA5
const GL_SCISSOR_TEST                                                 = 0x0C11
const GL_LIGHT2                                                       = 0x4002
const GL_STEREO                                                       = 0x0C33
const GL_TEXTURE_COMPRESSED_IMAGE_SIZE                                = 0x86A0
const GL_AUTO_NORMAL                                                  = 0x0D80
const GL_TEXTURE_LUMINANCE_TYPE                                       = 0x8C14
const GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS                         = 0x8DE1
const GL_TEXTURE22                                                    = 0x84D6
const GL_CLAMP_TO_EDGE                                                = 0x812F
const GL_CLIP_DISTANCE6                                               = 0x3006
const GL_ZOOM_X                                                       = 0x0D16
const GL_DRAW_BUFFER0                                                 = 0x8825
const GL_ACTIVE_TEXTURE                                               = 0x84E0
const GL_UNSIGNED_INT_VEC2                                            = 0x8DC6
const GL_MAX_EVAL_ORDER                                               = 0x0D30
const GL_TEXTURE_DEPTH                                                = 0x8071
const GL_FRONT_RIGHT                                                  = 0x0401
const GL_DEPTH_RANGE                                                  = 0x0B70
const GL_X4_BYTES                                                     = 0x1409
const GL_NORMAL_ARRAY                                                 = 0x8075
const GL_BLEND_SRC_RGB                                                = 0x80C9
const GL_LINE_RESET_TOKEN                                             = 0x0707
const GL_MAP_INVALIDATE_BUFFER_BIT                                    = 0x0008
const GL_ONE                                                          = 1
const GL_STENCIL_PASS_DEPTH_PASS                                      = 0x0B96
const GL_NO_ERROR                                                     = 0
const GL_SMOOTH_POINT_SIZE_RANGE                                      = 0x0B12
const GL_PROXY_TEXTURE_2D_ARRAY                                       = 0x8C1B
const GL_AUX_BUFFERS                                                  = 0x0C00
const GL_MAX_TEXTURE_STACK_DEPTH                                      = 0x0D39
const GL_CLIP_DISTANCE4                                               = 0x3004
const GL_LEQUAL                                                       = 0x0203
const GL_TIMESTAMP                                                    = 0x8E28
const GL_POINT_SIZE_MAX                                               = 0x8127
const GL_MAX_TEXTURE_COORDS                                           = 0x8871
const GL_NONE                                                         = 0
const GL_BUFFER_SIZE                                                  = 0x8764
const GL_PIXEL_MAP_B_TO_B                                             = 0x0C78
const GL_INT_VEC4                                                     = 0x8B55
const GL_RGB16_SNORM                                                  = 0x8F9A
const GL_OR_INVERTED                                                  = 0x150D
const GL_SAMPLE_MASK                                                  = 0x8E51
const GL_PACK_SKIP_ROWS                                               = 0x0D03
const GL_NUM_COMPRESSED_TEXTURE_FORMATS                               = 0x86A2
const GL_RESCALE_NORMAL                                               = 0x803A
const GL_DEPTH_COMPONENT24                                            = 0x81A6
const GL_BACK_LEFT                                                    = 0x0402
const GL_MAP2_TEXTURE_COORD_4                                         = 0x0DB6
const GL_COLOR                                                        = 0x1800
const GL_INVALID_INDEX                                                = 0xFFFFFFFF
const GL_CONSTANT                                                     = 0x8576
const GL_INT_VEC2                                                     = 0x8B53
const GL_UNSIGNED_SHORT                                               = 0x1403
const GL_VERTEX_ARRAY_BINDING                                         = 0x85B5
const GL_RED_SNORM                                                    = 0x8F90
const GL_MODULATE                                                     = 0x2100
const GL_UNSIGNED_INT                                                 = 0x1405
const GL_LUMINANCE4_ALPHA4                                            = 0x8043
const GL_X3D_COLOR                                                    = 0x0602
const GL_TEXTURE_BUFFER                                               = 0x8C2A
const GL_POSITION                                                     = 0x1203
const GL_COMPRESSED_INTENSITY                                         = 0x84EC
const GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS                               = 0x8B4C
const GL_COLOR_CLEAR_VALUE                                            = 0x0C22
const GL_R3_G3_B2                                                     = 0x2A10
const GL_DELETE_STATUS                                                = 0x8B80
const GL_UNSIGNED_INT_VEC3                                            = 0x8DC7
const GL_PIXEL_MAP_G_TO_G_SIZE                                        = 0x0CB7
const GL_FLOAT_MAT4                                                   = 0x8B5C
const GL_BACK_RIGHT                                                   = 0x0403
const GL_LUMINANCE12_ALPHA4                                           = 0x8046
const GL_FRONT_AND_BACK                                               = 0x0408
const GL_ACTIVE_UNIFORM_BLOCKS                                        = 0x8A36
const GL_RENDERER                                                     = 0x1F01
const GL_COLOR_ATTACHMENT10                                           = 0x8CEA
const GL_FOG_COORDINATE_SOURCE                                        = 0x8450
const GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE                 = 0x8CD3
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
const GL_FRAMEBUFFER_ATTACHMENT_LAYERED                               = 0x8DA7
const GL_EDGE_FLAG_ARRAY_POINTER                                      = 0x8093
const GL_FOG_COORD                                                    = 0x8451
const GL_TEXTURE23                                                    = 0x84D7
const GL_INDEX_LOGIC_OP                                               = 0x0BF1
const GL_DOT3_RGBA                                                    = 0x86AF
const GL_NORMAL_ARRAY_POINTER                                         = 0x808F
const GL_STENCIL_INDEX1                                               = 0x8D46
const GL_TEXTURE11                                                    = 0x84CB
const GL_COLOR_ATTACHMENT3                                            = 0x8CE3
const GL_BLUE_SCALE                                                   = 0x0D1A
const GL_DEPTH_BITS                                                   = 0x0D56
const GL_STENCIL_BACK_PASS_DEPTH_PASS                                 = 0x8803
const GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS                         = 0x8DA8
const GL_FRAMEBUFFER_ATTACHMENT_RED_SIZE                              = 0x8212
const GL_UNIFORM_SIZE                                                 = 0x8A38
const GL_TIMEOUT_EXPIRED                                              = 0x911B
const GL_LIGHT_MODEL_TWO_SIDE                                         = 0x0B52
const GL_INT_SAMPLER_2D_ARRAY                                         = 0x8DCF
const GL_READ_BUFFER                                                  = 0x0C02
const GL_SLUMINANCE_ALPHA                                             = 0x8C44
const GL_RGB16UI                                                      = 0x8D77
const GL_NORMALIZE                                                    = 0x0BA1
const GL_CURRENT_COLOR                                                = 0x0B00
const GL_FRAMEBUFFER_COMPLETE                                         = 0x8CD5
const GL_FASTEST                                                      = 0x1101
const GL_INDEX_ARRAY_POINTER                                          = 0x8091
const GL_UNIFORM_BUFFER                                               = 0x8A11
const GL_MULTISAMPLE_BIT                                              = 0x20000000
const GL_CURRENT_SECONDARY_COLOR                                      = 0x8459
const GL_UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER                    = 0x8A44
const GL_MAP1_TEXTURE_COORD_1                                         = 0x0D93
const GL_QUERY_NO_WAIT                                                = 0x8E14
const GL_C4UB_V2F                                                     = 0x2A22
const GL_AUX2                                                         = 0x040B
const GL_CURRENT_RASTER_POSITION_VALID                                = 0x0B08
const GL_MAX_COLOR_ATTACHMENTS                                        = 0x8CDF
const GL_COLOR_MATERIAL                                               = 0x0B57
const GL_R16I                                                         = 0x8233
const GL_NAME_STACK_DEPTH                                             = 0x0D70
const GL_AND_INVERTED                                                 = 0x1504
const GL_LIGHT7                                                       = 0x4007
const GL_DRAW_BUFFER3                                                 = 0x8828
const GL_NICEST                                                       = 0x1102
const GL_TRANSFORM_FEEDBACK_BUFFER_BINDING                            = 0x8C8F
const GL_MAP_READ_BIT                                                 = 0x0001
const GL_PIXEL_MAP_I_TO_G                                             = 0x0C73
const GL_MAX_VERTEX_UNIFORM_BLOCKS                                    = 0x8A2B
const GL_KEEP                                                         = 0x1E00
const GL_SOURCE0_ALPHA                                                = 0x8588
const GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS                   = 0x8C80
const GL_MAX_CLIP_DISTANCES                                           = 0x0D32
const GL_INVALID_FRAMEBUFFER_OPERATION                                = 0x0506
const GL_ZERO                                                         = 0
const GL_ACCUM_CLEAR_VALUE                                            = 0x0B80
const GL_MAX_SAMPLES                                                  = 0x8D57
const GL_INDEX_ARRAY_STRIDE                                           = 0x8086
const GL_COLOR_ATTACHMENT4                                            = 0x8CE4
const GL_AMBIENT_AND_DIFFUSE                                          = 0x1602
const GL_COLOR_ATTACHMENT9                                            = 0x8CE9
const GL_DRAW_BUFFER                                                  = 0x0C01
const GL_BYTE                                                         = 0x1400
const GL_COMPARE_R_TO_TEXTURE                                         = 0x884E
const GL_GREATER                                                      = 0x0204
const GL_COPY                                                         = 0x1503
const GL_NORMAL_ARRAY_BUFFER_BINDING                                  = 0x8897
const GL_FRAMEBUFFER_SRGB                                             = 0x8DB9
const GL_ADD_SIGNED                                                   = 0x8574
const GL_DONT_CARE                                                    = 0x1100
const GL_FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE                        = 0x8211
const GL_MAX_ELEMENTS_VERTICES                                        = 0x80E8
const GL_UNSIGNED_INT_SAMPLER_2D_ARRAY                                = 0x8DD7
const GL_DST_ALPHA                                                    = 0x0304
const GL_RGBA32F                                                      = 0x8814
const GL_ANY_SAMPLES_PASSED                                           = 0x8C2F
const GL_MAX_LIST_NESTING                                             = 0x0B31
const GL_UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES                         = 0x8A43
const GL_POINT_DISTANCE_ATTENUATION                                   = 0x8129
const GL_COLOR_MATERIAL_PARAMETER                                     = 0x0B56
const GL_LIGHTING                                                     = 0x0B50
const GL_ELEMENT_ARRAY_BUFFER_BINDING                                 = 0x8895
const GL_INT_SAMPLER_2D_MULTISAMPLE_ARRAY                             = 0x910C
const GL_AND                                                          = 0x1501
const GL_SPOT_DIRECTION                                               = 0x1204
const GL_PIXEL_MAP_I_TO_B_SIZE                                        = 0x0CB4
const GL_UNSIGNED_INT_SAMPLER_BUFFER                                  = 0x8DD8
const GL_COPY_PIXEL_TOKEN                                             = 0x0706
const GL_TRIANGLE_FAN                                                 = 0x0006
const GL_RENDERBUFFER_DEPTH_SIZE                                      = 0x8D54
const GL_MAX_SERVER_WAIT_TIMEOUT                                      = 0x9111
const GL_UNSIGNED_BYTE_2_3_3_REV                                      = 0x8362
const GL_RG8UI                                                        = 0x8238
const GL_GREEN_BIAS                                                   = 0x0D19
const GL_RGB12                                                        = 0x8053
const GL_POINT_SIZE_GRANULARITY                                       = 0x0B13
const GL_FEEDBACK_BUFFER_SIZE                                         = 0x0DF1
const GL_TRUE                                                         = 1
const GL_PACK_SKIP_IMAGES                                             = 0x806B
const GL_INTERPOLATE                                                  = 0x8575
const GL_RGB32I                                                       = 0x8D83
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
const GL_TEXTURE_RED_TYPE                                             = 0x8C10
const GL_TEXTURE_2D_ARRAY                                             = 0x8C1A
const GL_CURRENT_FOG_COORDINATE                                       = 0x8453
const GL_CURRENT_BIT                                                  = 0x00000001
const GL_FLOAT_MAT3x4                                                 = 0x8B68
const GL_SHORT                                                        = 0x1402
const GL_POINT_BIT                                                    = 0x00000002
const GL_POLYGON_BIT                                                  = 0x00000008
const GL_QUERY_WAIT                                                   = 0x8E13
const GL_BOOL                                                         = 0x8B56
const GL_TRANSFORM_FEEDBACK_BUFFER_START                              = 0x8C84
const GL_BLUE_BIAS                                                    = 0x0D1B
const GL_DYNAMIC_READ                                                 = 0x88E9
const GL_TEXTURE20                                                    = 0x84D4
const GL_SPECULAR                                                     = 0x1202
const GL_RENDER                                                       = 0x1C00
const GL_MAX_CUBE_MAP_TEXTURE_SIZE                                    = 0x851C
const GL_VERTEX_ATTRIB_ARRAY_DIVISOR                                  = 0x88FE
const GL_X3D_COLOR_TEXTURE                                            = 0x0603
const GL_POINT_SMOOTH_HINT                                            = 0x0C51
const GL_DOT3_RGB                                                     = 0x86AE
const GL_MAX_PIXEL_MAP_TABLE                                          = 0x0D34
const GL_STENCIL_BACK_PASS_DEPTH_FAIL                                 = 0x8802
const GL_TEXTURE_BINDING_RECTANGLE                                    = 0x84F6
const GL_WAIT_FAILED                                                  = 0x911D
const GL_RG8I                                                         = 0x8237
const GL_CLIP_PLANE0                                                  = 0x3000
const GL_INDEX_ARRAY_BUFFER_BINDING                                   = 0x8899
const GL_CLIP_DISTANCE1                                               = 0x3001
const GL_CURRENT_RASTER_TEXTURE_COORDS                                = 0x0B06
const GL_COMPILE_AND_EXECUTE                                          = 0x1301
const GL_UNIFORM_BLOCK_DATA_SIZE                                      = 0x8A40
const GL_BLEND_SRC                                                    = 0x0BE1
const GL_NEAREST_MIPMAP_LINEAR                                        = 0x2702
const GL_LUMINANCE16_ALPHA16                                          = 0x8048
const GL_SPOT_EXPONENT                                                = 0x1205
const GL_BLEND_DST                                                    = 0x0BE0
const GL_SHADE_MODEL                                                  = 0x0B54
const GL_TEXTURE_ALPHA_TYPE                                           = 0x8C13
const GL_TEXTURE_COMPRESSION_HINT                                     = 0x84EF
const GL_UNIFORM_BLOCK_NAME_LENGTH                                    = 0x8A41
const GL_RGBA8UI                                                      = 0x8D7C
const GL_ACTIVE_ATTRIBUTE_MAX_LENGTH                                  = 0x8B8A
const GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE                           = 0x8CD0
const GL_TRANSPOSE_TEXTURE_MATRIX                                     = 0x84E5
const GL_SAMPLER_2D_RECT                                              = 0x8B63
const GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL                         = 0x8CD2
const GL_CLIP_PLANE1                                                  = 0x3001
const GL_VERTEX_ATTRIB_ARRAY_ENABLED                                  = 0x8622
const GL_FEEDBACK_BUFFER_POINTER                                      = 0x0DF0
const GL_UNIFORM_BLOCK_BINDING                                        = 0x8A3F
const GL_UNIFORM_NAME_LENGTH                                          = 0x8A39
const GL_TIME_ELAPSED                                                 = 0x88BF
const GL_VERTEX_ARRAY_STRIDE                                          = 0x807C
const GL_NUM_EXTENSIONS                                               = 0x821D
const GL_MAX_CLIP_PLANES                                              = 0x0D32
const GL_DEPTH_WRITEMASK                                              = 0x0B72
const GL_LINEAR                                                       = 0x2601
const GL_RGB10_A2                                                     = 0x8059
const GL_INDEX_WRITEMASK                                              = 0x0C21
const GL_FOG_COORD_ARRAY                                              = 0x8457
const GL_UNIFORM_OFFSET                                               = 0x8A3B
const GL_SOURCE2_RGB                                                  = 0x8582
const GL_TEXTURE_SWIZZLE_B                                            = 0x8E44
const GL_COMBINE                                                      = 0x8570
const GL_FLOAT_VEC3                                                   = 0x8B51
const GL_DRAW_BUFFER5                                                 = 0x882A
const GL_TEXTURE_ENV_COLOR                                            = 0x2201
const GL_EXP                                                          = 0x0800
const GL_DST_COLOR                                                    = 0x0306
const GL_TEXTURE_WIDTH                                                = 0x1000
const GL_UNSIGNED_INT_2_10_10_10_REV                                  = 0x8368
const GL_MAX_FRAGMENT_UNIFORM_COMPONENTS                              = 0x8B49
const GL_UNIFORM_BUFFER_BINDING                                       = 0x8A28
const GL_SRGB_ALPHA                                                   = 0x8C42
const GL_V2F                                                          = 0x2A20
const GL_SECONDARY_COLOR_ARRAY_BUFFER_BINDING                         = 0x889C
const GL_NEVER                                                        = 0x0200
const GL_SLUMINANCE8                                                  = 0x8C47
const GL_RED_INTEGER                                                  = 0x8D94
const GL_SAMPLER_2D_MULTISAMPLE                                       = 0x9108
const GL_RENDERBUFFER_INTERNAL_FORMAT                                 = 0x8D44
const GL_COLOR_ATTACHMENT13                                           = 0x8CED
const GL_UNPACK_IMAGE_HEIGHT                                          = 0x806E
const GL_SYNC_GPU_COMMANDS_COMPLETE                                   = 0x9117
const GL_PROXY_TEXTURE_2D                                             = 0x8064
const GL_MAP_WRITE_BIT                                                = 0x0002
const GL_TEXTURE_COMPARE_MODE                                         = 0x884C
const GL_TEXTURE0                                                     = 0x84C0
const GL_ACTIVE_UNIFORMS                                              = 0x8B86
const GL_ALPHA4                                                       = 0x803B
const GL_MAP2_COLOR_4                                                 = 0x0DB0
const GL_CURRENT_QUERY                                                = 0x8865
const GL_SAMPLER_1D                                                   = 0x8B5D
const GL_T2F_V3F                                                      = 0x2A27
const GL_FEEDBACK                                                     = 0x1C01
const GL_LINES_ADJACENCY                                              = 0x000A
const GL_INT_SAMPLER_CUBE                                             = 0x8DCC
const GL_MAP2_NORMAL                                                  = 0x0DB2
const GL_BACK                                                         = 0x0405
const GL_SMOOTH                                                       = 0x1D01
const GL_BGR                                                          = 0x80E0
const GL_STENCIL                                                      = 0x1802
const GL_TEXTURE_3D                                                   = 0x806F
const GL_UNPACK_SWAP_BYTES                                            = 0x0CF0
const GL_ALWAYS                                                       = 0x0207
const GL_RENDERBUFFER_HEIGHT                                          = 0x8D43
const GL_COLOR_SUM                                                    = 0x8458
const GL_LINEAR_ATTENUATION                                           = 0x1208
const GL_PIXEL_MAP_R_TO_R                                             = 0x0C76
const GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS                             = 0x8B4D
const GL_AUX0                                                         = 0x0409
const GL_ZOOM_Y                                                       = 0x0D17
const GL_UNIFORM_BUFFER_START                                         = 0x8A29
const GL_CONTEXT_PROFILE_MASK                                         = 0x9126
const GL_SRC2_ALPHA                                                   = 0x858A
const GL_CURRENT_NORMAL                                               = 0x0B02
const GL_SELECT                                                       = 0x1C02
const GL_MAX_TEXTURE_UNITS                                            = 0x84E2
const GL_COLOR_ARRAY_BUFFER_BINDING                                   = 0x8898
const GL_SAMPLE_POSITION                                              = 0x8E50
const GL_R8                                                           = 0x8229
const GL_LIST_INDEX                                                   = 0x0B33
const GL_SHININESS                                                    = 0x1601
const GL_CLAMP_FRAGMENT_COLOR                                         = 0x891B
const GL_TEXTURE_COMPARE_FUNC                                         = 0x884D
const GL_DECR                                                         = 0x1E03
const GL_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER                           = 0x8CDB
const GL_MAX_SAMPLE_MASK_WORDS                                        = 0x8E59
const GL_AUX3                                                         = 0x040C
const GL_FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING                        = 0x8210
const GL_ALPHA_TEST_FUNC                                              = 0x0BC1
const GL_SAMPLER_1D_ARRAY                                             = 0x8DC0
const GL_PIXEL_MAP_I_TO_G_SIZE                                        = 0x0CB3
const GL_TEXTURE_BINDING_2D_ARRAY                                     = 0x8C1D
const GL_STENCIL_VALUE_MASK                                           = 0x0B93
const GL_RGB32UI                                                      = 0x8D71
const GL_MAX_TEXTURE_IMAGE_UNITS                                      = 0x8872
const GL_COLOR_ATTACHMENT15                                           = 0x8CEF
const GL_PIXEL_UNPACK_BUFFER                                          = 0x88EC
const GL_MAP2_TEXTURE_COORD_3                                         = 0x0DB5
const GL_BLEND                                                        = 0x0BE2
const GL_GREEN                                                        = 0x1904
const GL_PIXEL_PACK_BUFFER_BINDING                                    = 0x88ED
const GL_RGB                                                          = 0x1907
const GL_ALPHA_INTEGER                                                = 0x8D97
const GL_MAX_GEOMETRY_INPUT_COMPONENTS                                = 0x9123
const GL_NORMAL_MAP                                                   = 0x8511
const GL_ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH                         = 0x8A35
const GL_TEXTURE_MIN_FILTER                                           = 0x2801
const GL_UNSIGNED_INT_10_10_10_2                                      = 0x8036
const GL_FRAGMENT_SHADER_DERIVATIVE_HINT                              = 0x8B8B
const GL_RENDERBUFFER_GREEN_SIZE                                      = 0x8D51
const GL_SRC1_COLOR                                                   = 0x88F9
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
const GL_INT_SAMPLER_BUFFER                                           = 0x8DD0
const GL_Q                                                            = 0x2003
const GL_INDEX_BITS                                                   = 0x0D51
const GL_SPOT_CUTOFF                                                  = 0x1206
const GL_PACK_LSB_FIRST                                               = 0x0D01
const GL_BOOL_VEC4                                                    = 0x8B59
const GL_STENCIL_INDEX                                                = 0x1901
const GL_TRANSFORM_FEEDBACK_BUFFER_SIZE                               = 0x8C85
const GL_SRC2_RGB                                                     = 0x8582
const GL_MODELVIEW                                                    = 0x1700
const GL_POLYGON_OFFSET_UNITS                                         = 0x2A00
const GL_PROXY_TEXTURE_1D_ARRAY                                       = 0x8C19
const GL_TEXTURE9                                                     = 0x84C9
const GL_V3F                                                          = 0x2A21
const GL_FRAGMENT_DEPTH                                               = 0x8452
const GL_FOG_COLOR                                                    = 0x0B66
const GL_PROGRAM_POINT_SIZE                                           = 0x8642
const GL_MAP_COLOR                                                    = 0x0D10
const GL_NORMAL_ARRAY_STRIDE                                          = 0x807F
const GL_TEXTURE_COORD_ARRAY_SIZE                                     = 0x8088
const GL_STENCIL_REF                                                  = 0x0B97
const GL_CLIENT_ALL_ATTRIB_BITS                                       = 0xFFFFFFFF
const GL_DEPTH_SCALE                                                  = 0x0D1E
const GL_VIEWPORT_BIT                                                 = 0x00000800
const GL_CLAMP_VERTEX_COLOR                                           = 0x891A
const GL_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION                     = 0x8E4C
const GL_UNSIGNED_INT_SAMPLER_1D_ARRAY                                = 0x8DD6
const GL_UNSIGNED_SHORT_1_5_5_5_REV                                   = 0x8366
const GL_EMISSION                                                     = 0x1600
const GL_CURRENT_RASTER_COLOR                                         = 0x0B04
const GL_TEXTURE_RESIDENT                                             = 0x8067
const GL_TEXTURE17                                                    = 0x84D1
const GL_TEXTURE16                                                    = 0x84D0
const GL_DITHER                                                       = 0x0BD0
const GL_MAP1_TEXTURE_COORD_2                                         = 0x0D94
const GL_BLEND_DST_RGB                                                = 0x80C8
const GL_FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE                            = 0x8215
const GL_S                                                            = 0x2000
const GL_COMPRESSED_RG                                                = 0x8226
const GL_NOTEQUAL                                                     = 0x0205
const GL_TEXTURE_CUBE_MAP_NEGATIVE_Z                                  = 0x851A
const GL_NOR                                                          = 0x1508
const GL_ONE_MINUS_SRC1_COLOR                                         = 0x88FA
const GL_LINEAR_MIPMAP_NEAREST                                        = 0x2701
const GL_SEPARATE_ATTRIBS                                             = 0x8C8D
const GL_MAX_INTEGER_SAMPLES                                          = 0x9110
const GL_FRAMEBUFFER_BINDING                                          = 0x8CA6
const GL_INTERLEAVED_ATTRIBS                                          = 0x8C8C
const GL_UNIFORM_MATRIX_STRIDE                                        = 0x8A3D
const GL_T4F_C4F_N3F_V4F                                              = 0x2A2D
const GL_RED_BIAS                                                     = 0x0D15
const GL_OPERAND2_ALPHA                                               = 0x859A
const GL_SRC_COLOR                                                    = 0x0300
const GL_POLYGON_OFFSET_LINE                                          = 0x2A02
const GL_ACTIVE_UNIFORM_MAX_LENGTH                                    = 0x8B87
const GL_TEXTURE_BINDING_1D_ARRAY                                     = 0x8C1C
const GL_POLYGON_STIPPLE_BIT                                          = 0x00000010
const GL_PROJECTION_MATRIX                                            = 0x0BA7
const GL_TRIANGLE_STRIP_ADJACENCY                                     = 0x000D
const GL_MULTISAMPLE                                                  = 0x809D
const GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS                             = 0x8C29
const GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY                           = 0x9103
const GL_STENCIL_BACK_VALUE_MASK                                      = 0x8CA4
const GL_RGBA16I                                                      = 0x8D88
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
const GL_COLOR_ATTACHMENT6                                            = 0x8CE6
const GL_FRAMEBUFFER                                                  = 0x8D40
const GL_TEXTURE_COMPRESSED                                           = 0x86A1
const GL_RG                                                           = 0x8227
const GL_POINT                                                        = 0x1B00
const GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT                    = 0x8CD7
const GL_PROXY_TEXTURE_RECTANGLE                                      = 0x84F7
const GL_SAMPLE_ALPHA_TO_COVERAGE                                     = 0x809E
const GL_FLOAT_MAT4x2                                                 = 0x8B69
const GL_TEXTURE_COORD_ARRAY                                          = 0x8078
const GL_FOG                                                          = 0x0B60
const GL_FRAGMENT_SHADER                                              = 0x8B30
const GL_RGB_INTEGER                                                  = 0x8D98
const GL_CLIENT_PIXEL_STORE_BIT                                       = 0x00000001
const GL_RGBA16_SNORM                                                 = 0x8F9B
const GL_CLIP_DISTANCE3                                               = 0x3003
const GL_SAMPLE_COVERAGE                                              = 0x80A0
const GL_SHADER_TYPE                                                  = 0x8B4F
const GL_ONE_MINUS_DST_COLOR                                          = 0x0307
const GL_RG_INTEGER                                                   = 0x8228
const GL_HALF_FLOAT                                                   = 0x140B
const GL_SELECTION_BUFFER_POINTER                                     = 0x0DF3
const GL_CONTEXT_FLAGS                                                = 0x821E
const GL_UNPACK_SKIP_IMAGES                                           = 0x806D
const GL_MAX_MODELVIEW_STACK_DEPTH                                    = 0x0D36
const GL_STACK_UNDERFLOW                                              = 0x0504
const GL_READ_WRITE                                                   = 0x88BA
const GL_LUMINANCE8                                                   = 0x8040
const GL_QUERY_BY_REGION_NO_WAIT                                      = 0x8E16
const GL_INVERT                                                       = 0x150A
const GL_LIGHT5                                                       = 0x4005
const GL_FLOAT_VEC2                                                   = 0x8B50
const GL_SCISSOR_BIT                                                  = 0x00080000
const GL_CLIENT_ATTRIB_STACK_DEPTH                                    = 0x0BB1
const GL_BUFFER_USAGE                                                 = 0x8765
const GL_MAX_FRAGMENT_UNIFORM_BLOCKS                                  = 0x8A2D
const GL_CURRENT_RASTER_POSITION                                      = 0x0B07
const GL_TEXTURE_SAMPLES                                              = 0x9106
const GL_MAX_RECTANGLE_TEXTURE_SIZE                                   = 0x84F8
const GL_MAX_VARYING_COMPONENTS                                       = 0x8B4B
const GL_STENCIL_CLEAR_VALUE                                          = 0x0B91
const GL_SAMPLER_2D_MULTISAMPLE_ARRAY                                 = 0x910B
const GL_RG16                                                         = 0x822C
const GL_REPEAT                                                       = 0x2901
const GL_UNSIGNED_SHORT_5_6_5                                         = 0x8363
const GL_RENDERBUFFER_RED_SIZE                                        = 0x8D50
const GL_DEPTH_STENCIL_ATTACHMENT                                     = 0x821A
const GL_FILL                                                         = 0x1B02
const GL_ONE_MINUS_SRC_COLOR                                          = 0x0301
const GL_PACK_ALIGNMENT                                               = 0x0D05
const GL_UNSIGNED_INT_5_9_9_9_REV                                     = 0x8C3E
const GL_TEXTURE2                                                     = 0x84C2
const GL_TEXTURE_ENV                                                  = 0x2300
const GL_PIXEL_MODE_BIT                                               = 0x00000020
const GL_BUFFER_MAP_POINTER                                           = 0x88BD
const GL_GEQUAL                                                       = 0x0206
const GL_UNSIGNALED                                                   = 0x9118
const GL_RED                                                          = 0x1903
const GL_FRAMEBUFFER_ATTACHMENT_GREEN_SIZE                            = 0x8213
const GL_LUMINANCE8_ALPHA8                                            = 0x8045
const GL_COLOR_ATTACHMENT14                                           = 0x8CEE
const GL_RGBA32UI                                                     = 0x8D70
const GL_PRIMARY_COLOR                                                = 0x8577
const GL_MIRRORED_REPEAT                                              = 0x8370
const GL_CLAMP_TO_BORDER                                              = 0x812D
const GL_VALIDATE_STATUS                                              = 0x8B83
const GL_RG8_SNORM                                                    = 0x8F95
const GL_DRAW_FRAMEBUFFER_BINDING                                     = 0x8CA6
const GL_COEFF                                                        = 0x0A00
const GL_TEXTURE7                                                     = 0x84C7
const GL_TEXTURE6                                                     = 0x84C6
const GL_COMPRESSED_SRGB_ALPHA                                        = 0x8C49
const GL_GEOMETRY_OUTPUT_TYPE                                         = 0x8918
const GL_CW                                                           = 0x0900
const GL_UNSIGNED_INT_VEC4                                            = 0x8DC8
const GL_UNIFORM_IS_ROW_MAJOR                                         = 0x8A3E
const GL_TEXTURE_CUBE_MAP                                             = 0x8513
const GL_ALPHA_TEST_REF                                               = 0x0BC2
const GL_FOG_BIT                                                      = 0x00000080
const GL_X3_BYTES                                                     = 0x1408
const GL_TEXTURE_MAX_LEVEL                                            = 0x813D
const GL_TEXTURE_ALPHA_SIZE                                           = 0x805F
const GL_FOG_COORDINATE_ARRAY_TYPE                                    = 0x8454
const GL_TEXTURE_STENCIL_SIZE                                         = 0x88F1
const GL_MAX_FRAGMENT_INPUT_COMPONENTS                                = 0x9125
const GL_ALPHA_BITS                                                   = 0x0D55
const GL_OR                                                           = 0x1507
const GL_T2F_C4F_N3F_V3F                                              = 0x2A2C
const GL_TEXTURE19                                                    = 0x84D3
const GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE                          = 0x910A
const GL_MAX_LIGHTS                                                   = 0x0D31
const GL_MAX_VERTEX_UNIFORM_COMPONENTS                                = 0x8B4A
const GL_MAX_VIEWPORT_DIMS                                            = 0x0D3A
const GL_POINT_SIZE_MIN                                               = 0x8126
const GL_CLIP_PLANE2                                                  = 0x3002
const GL_T4F_V4F                                                      = 0x2A28
const GL_UNIFORM_TYPE                                                 = 0x8A37
const GL_CONTEXT_COMPATIBILITY_PROFILE_BIT                            = 0x00000002
const GL_MAP1_INDEX                                                   = 0x0D91
const GL_FOG_COORDINATE_ARRAY                                         = 0x8457
const GL_TEXTURE_COORD_ARRAY_STRIDE                                   = 0x808A
const GL_MAX_UNIFORM_BUFFER_BINDINGS                                  = 0x8A2F
const GL_LINEAR_MIPMAP_LINEAR                                         = 0x2703
const GL_PRIMITIVE_RESTART                                            = 0x8F9D
const GL_SYNC_STATUS                                                  = 0x9114
const GL_COMPRESSED_RGBA                                              = 0x84EE
const GL_MAX_ELEMENTS_INDICES                                         = 0x80E9
const GL_COLOR_ATTACHMENT1                                            = 0x8CE1
const GL_VERTEX_ATTRIB_ARRAY_INTEGER                                  = 0x88FD
const GL_DRAW_BUFFER10                                                = 0x882F
const GL_TEXTURE21                                                    = 0x84D5
const GL_PACK_IMAGE_HEIGHT                                            = 0x806C
const GL_DEPTH32F_STENCIL8                                            = 0x8CAD
const GL_MAP1_VERTEX_4                                                = 0x0D98
const GL_SRC_ALPHA_SATURATE                                           = 0x0308
const GL_PROJECTION                                                   = 0x1701
const GL_GENERATE_MIPMAP_HINT                                         = 0x8192
const GL_PROXY_TEXTURE_3D                                             = 0x8070
const GL_SHADER_SOURCE_LENGTH                                         = 0x8B88
const GL_RGBA8_SNORM                                                  = 0x8F97
const GL_C4F_N3F_V3F                                                  = 0x2A26
const GL_BLEND_EQUATION_RGB                                           = 0x8009
const GL_INDEX_MODE                                                   = 0x0C30
const GL_MAP_STENCIL                                                  = 0x0D11
const GL_VERTEX_ARRAY_SIZE                                            = 0x807A
const GL_STATIC_COPY                                                  = 0x88E6
const GL_OPERAND1_ALPHA                                               = 0x8599
const GL_RG16UI                                                       = 0x823A
const GL_PIXEL_MAP_B_TO_B_SIZE                                        = 0x0CB8
const GL_R32UI                                                        = 0x8236
const GL_TEXTURE27                                                    = 0x84DB
const GL_RG16I                                                        = 0x8239
const GL_MAX_TEXTURE_BUFFER_SIZE                                      = 0x8C2B
const GL_SIGNED_NORMALIZED                                            = 0x8F9C
const GL_VENDOR                                                       = 0x1F00
const GL_DEPTH_TEST                                                   = 0x0B71
const GL_TEXTURE_RED_SIZE                                             = 0x805C
const GL_TEXTURE_FILTER_CONTROL                                       = 0x8500
const GL_TEXTURE_BORDER                                               = 0x1005
const GL_TEXTURE_COORD_ARRAY_TYPE                                     = 0x8089
const GL_UNSIGNED_BYTE                                                = 0x1401
const GL_TRANSPOSE_MODELVIEW_MATRIX                                   = 0x84E3
const GL_UPPER_LEFT                                                   = 0x8CA2
const GL_MAX_PROGRAM_TEXEL_OFFSET                                     = 0x8905
const GL_TEXTURE_BIT                                                  = 0x00040000
const GL_STREAM_COPY                                                  = 0x88E2
const GL_MAP_FLUSH_EXPLICIT_BIT                                       = 0x0010
const GL_RGB9_E5                                                      = 0x8C3D
const GL_RGB5_A1                                                      = 0x8057
const GL_AUX1                                                         = 0x040A
const GL_DEPTH_COMPONENT32F                                           = 0x8CAC
const GL_FLOAT_32_UNSIGNED_INT_24_8_REV                               = 0x8DAD
const GL_TRANSFORM_FEEDBACK_BUFFER_MODE                               = 0x8C7F
const GL_BLUE_BITS                                                    = 0x0D54
const GL_LOAD                                                         = 0x0101
const GL_BUFFER_ACCESS_FLAGS                                          = 0x911F
const GL_COLOR_LOGIC_OP                                               = 0x0BF2
const GL_MINOR_VERSION                                                = 0x821C
const GL_COLOR_ATTACHMENT2                                            = 0x8CE2
const GL_HINT_BIT                                                     = 0x00008000
const GL_TRANSPOSE_PROJECTION_MATRIX                                  = 0x84E4
const GL_DRAW_BUFFER14                                                = 0x8833
const GL_FLOAT                                                        = 0x1406
const GL_SPHERE_MAP                                                   = 0x2402
const GL_COLOR_INDEX                                                  = 0x1900
const GL_MAJOR_VERSION                                                = 0x821B
const GL_INTENSITY16                                                  = 0x804D
const GL_INT_SAMPLER_1D                                               = 0x8DC9
const GL_SOURCE1_RGB                                                  = 0x8581
const GL_SCISSOR_BOX                                                  = 0x0C10
const GL_MAX_3D_TEXTURE_SIZE                                          = 0x8073
const GL_CONDITION_SATISFIED                                          = 0x911C
const GL_TEXTURE_BUFFER_DATA_STORE_BINDING                            = 0x8C2D
const GL_COPY_WRITE_BUFFER                                            = 0x8F37
const GL_EDGE_FLAG_ARRAY_STRIDE                                       = 0x808C
const GL_UNSIGNED_INT_SAMPLER_1D                                      = 0x8DD1
const GL_PIXEL_MAP_I_TO_R_SIZE                                        = 0x0CB2
const GL_R8_SNORM                                                     = 0x8F94
const GL_LEFT                                                         = 0x0406
const GL_INT_SAMPLER_2D_MULTISAMPLE                                   = 0x9109
const GL_PIXEL_MAP_I_TO_A_SIZE                                        = 0x0CB5
const GL_CLIP_PLANE4                                                  = 0x3004
const GL_TEXTURE_MAG_FILTER                                           = 0x2800
const GL_UNPACK_SKIP_PIXELS                                           = 0x0CF4
const GL_TEXTURE_LOD_BIAS                                             = 0x8501
const GL_COLOR_BUFFER_BIT                                             = 0x00004000
const GL_RGBA2                                                        = 0x8055
const GL_SAMPLE_MASK_VALUE                                            = 0x8E52
const GL_MAX_ATTRIB_STACK_DEPTH                                       = 0x0D35
const GL_SMOOTH_LINE_WIDTH_RANGE                                      = 0x0B22
const GL_SAMPLER_BINDING                                              = 0x8919
const GL_SOURCE2_ALPHA                                                = 0x858A
const GL_SRC_ALPHA                                                    = 0x0302
const GL_REFLECTION_MAP                                               = 0x8512
const GL_CURRENT_VERTEX_ATTRIB                                        = 0x8626
const GL_FOG_COORDINATE                                               = 0x8451
const GL_UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER                  = 0x8A46
const GL_FOG_START                                                    = 0x0B63
const GL_LUMINANCE12                                                  = 0x8041
const GL_DRAW_BUFFER12                                                = 0x8831
const GL_UNSIGNED_SHORT_5_5_5_1                                       = 0x8034
const GL_FOG_COORD_ARRAY_TYPE                                         = 0x8454
const GL_MULT                                                         = 0x0103
const GL_UNSIGNED_INT_24_8                                            = 0x84FA
const GL_MAX_GEOMETRY_UNIFORM_COMPONENTS                              = 0x8DDF
const GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT                              = 0x8A34
const GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY                         = 0x9105
const GL_GREEN_BITS                                                   = 0x0D53
const GL_LIGHT_MODEL_COLOR_CONTROL                                    = 0x81F8
const GL_CURRENT_RASTER_DISTANCE                                      = 0x0B09
const GL_MIN_PROGRAM_TEXEL_OFFSET                                     = 0x8904
const GL_BGRA                                                         = 0x80E1
const GL_STENCIL_WRITEMASK                                            = 0x0B98
const GL_EYE_PLANE                                                    = 0x2502
const GL_LINE_WIDTH_GRANULARITY                                       = 0x0B23
const GL_STENCIL_FUNC                                                 = 0x0B92
const GL_TEXTURE_INTENSITY_TYPE                                       = 0x8C15
const GL_MAX_RENDERBUFFER_SIZE                                        = 0x84E8
const GL_DEPTH_CLEAR_VALUE                                            = 0x0B73
const GL_BLUE                                                         = 0x1905
const GL_VERTEX_ARRAY                                                 = 0x8074
const GL_POLYGON_OFFSET_FACTOR                                        = 0x8038
const GL_TEXTURE10                                                    = 0x84CA
const GL_RIGHT                                                        = 0x0407
const GL_FRAMEBUFFER_UNDEFINED                                        = 0x8219
const GL_FOG_COORDINATE_ARRAY_POINTER                                 = 0x8456
const GL_R8UI                                                         = 0x8232
const GL_MAP1_NORMAL                                                  = 0x0D92
const GL_TEXTURE28                                                    = 0x84DC
const GL_FRAMEBUFFER_ATTACHMENT_BLUE_SIZE                             = 0x8214
const GL_TEXTURE_CUBE_MAP_SEAMLESS                                    = 0x884F
const GL_FRONT_FACE                                                   = 0x0B46
const GL_PRIMITIVES_GENERATED                                         = 0x8C87
const GL_RGBA12                                                       = 0x805A
const GL_R16                                                          = 0x822A
const GL_SAMPLER_2D_SHADOW                                            = 0x8B62
const GL_MAX_DEPTH_TEXTURE_SAMPLES                                    = 0x910F
const GL_PRIMITIVE_RESTART_INDEX                                      = 0x8F9E
const GL_INVALID_OPERATION                                            = 0x0502
const GL_MAX_TEXTURE_LOD_BIAS                                         = 0x84FD
const GL_TEXTURE_GEN_T                                                = 0x0C61
const GL_RENDERBUFFER_STENCIL_SIZE                                    = 0x8D55
const GL_POLYGON_MODE                                                 = 0x0B40
const GL_MAP1_TEXTURE_COORD_4                                         = 0x0D96
const GL_LOGIC_OP_MODE                                                = 0x0BF0
const GL_DRAW_BUFFER9                                                 = 0x882E
const GL_SAMPLER_2D_RECT_SHADOW                                       = 0x8B64
const GL_LINE_WIDTH                                                   = 0x0B21
const GL_INTENSITY4                                                   = 0x804A
const GL_TRANSFORM_FEEDBACK_VARYINGS                                  = 0x8C83
const GL_COLOR_ATTACHMENT7                                            = 0x8CE7
const GL_RENDERBUFFER_BINDING                                         = 0x8CA7
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
const GL_COMPRESSED_RG_RGTC2                                          = 0x8DBD
const GL_TEXTURE24                                                    = 0x84D8
const GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING                           = 0x889A
const GL_FLOAT_MAT3                                                   = 0x8B5B
const GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS                = 0x8C8A
const GL_POINT_FADE_THRESHOLD_SIZE                                    = 0x8128
const GL_FRAMEBUFFER_DEFAULT                                          = 0x8218
const GL_MAX_NAME_STACK_DEPTH                                         = 0x0D37
const GL_COLOR_ARRAY                                                  = 0x8076
const GL_CURRENT_PROGRAM                                              = 0x8B8D
const GL_COMPRESSED_SIGNED_RG_RGTC2                                   = 0x8DBE
const GL_DRAW_BUFFER4                                                 = 0x8829
const GL_FRONT_LEFT                                                   = 0x0400
const GL_TEXTURE_CUBE_MAP_POSITIVE_Y                                  = 0x8517
const GL_VERTEX_ATTRIB_ARRAY_TYPE                                     = 0x8625
const GL_CLIENT_ACTIVE_TEXTURE                                        = 0x84E1
const GL_SAMPLER_2D_ARRAY_SHADOW                                      = 0x8DC4
const GL_RG32UI                                                       = 0x823C
const GL_X2_BYTES                                                     = 0x1407
const GL_FEEDBACK_BUFFER_TYPE                                         = 0x0DF2
const GL_RGBA16F                                                      = 0x881A
const GL_COPY_READ_BUFFER                                             = 0x8F36
const GL_CONSTANT_ATTENUATION                                         = 0x1207
const GL_DRAW_BUFFER15                                                = 0x8834
const GL_RG16_SNORM                                                   = 0x8F99
const GL_RGB8_SNORM                                                   = 0x8F96
const GL_GEOMETRY_SHADER                                              = 0x8DD9
const GL_LUMINANCE_ALPHA                                              = 0x190A
const GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING                           = 0x889F
const GL_TRIANGLES_ADJACENCY                                          = 0x000C
const GL_SAMPLER_CUBE                                                 = 0x8B60
const GL_COLOR_ATTACHMENT0                                            = 0x8CE0
const GL_FLAT                                                         = 0x1D00
const GL_FIRST_VERTEX_CONVENTION                                      = 0x8E4D
const GL_SLUMINANCE8_ALPHA8                                           = 0x8C45
const GL_SYNC_FLAGS                                                   = 0x9115
const GL_SAMPLER_1D_SHADOW                                            = 0x8B61
const GL_BGR_INTEGER                                                  = 0x8D9A
const GL_FLOAT_MAT2x4                                                 = 0x8B66
const GL_GEOMETRY_INPUT_TYPE                                          = 0x8917
const GL_R8I                                                          = 0x8231
const GL_TRANSFORM_FEEDBACK_BUFFER                                    = 0x8C8E
const GL_COPY_INVERTED                                                = 0x150C
const GL_LIST_MODE                                                    = 0x0B30
const GL_FOG_END                                                      = 0x0B64
const GL_MODELVIEW_STACK_DEPTH                                        = 0x0BA3
const GL_NORMAL_ARRAY_TYPE                                            = 0x807E
const GL_UNIFORM_BUFFER_SIZE                                          = 0x8A2A
const GL_LINK_STATUS                                                  = 0x8B82
const GL_STENCIL_INDEX4                                               = 0x8D47
const GL_COMPRESSED_SLUMINANCE_ALPHA                                  = 0x8C4B
const GL_RGB_SNORM                                                    = 0x8F92
const GL_INT_VEC3                                                     = 0x8B54
const GL_TEXTURE_RECTANGLE                                            = 0x84F5
const GL_TEXTURE_BINDING_2D_MULTISAMPLE                               = 0x9104
const GL_NEAREST_MIPMAP_NEAREST                                       = 0x2700
const GL_DRAW_FRAMEBUFFER                                             = 0x8CA9
const GL_TEXTURE_BLUE_TYPE                                            = 0x8C12
const GL_DOUBLEBUFFER                                                 = 0x0C32
const GL_FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE                          = 0x8217
const GL_LINE_STRIP_ADJACENCY                                         = 0x000B
const GL_TRIANGLE_STRIP                                               = 0x0005
const GL_MODELVIEW_MATRIX                                             = 0x0BA6
const GL_CONTEXT_FLAG_FORWARD_COMPATIBLE_BIT                          = 0x0001
const GL_RGBA_SNORM                                                   = 0x8F93
const GL_ALIASED_POINT_SIZE_RANGE                                     = 0x846D
const GL_TEXTURE13                                                    = 0x84CD
const GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY                    = 0x910D
const GL_TEXTURE_BASE_LEVEL                                           = 0x813C
const GL_RGB16I                                                       = 0x8D89
const GL_TEXTURE_MIN_LOD                                              = 0x813A
const GL_INDEX_OFFSET                                                 = 0x0D13
const GL_SAMPLE_COVERAGE_INVERT                                       = 0x80AB
const GL_FOG_INDEX                                                    = 0x0B61
const GL_BOOL_VEC3                                                    = 0x8B58
const GL_TEXTURE_BINDING_CUBE_MAP                                     = 0x8514
const GL_VERTEX_ARRAY_POINTER                                         = 0x808E
const GL_UNSIGNED_INT_SAMPLER_CUBE                                    = 0x8DD4
const GL_COMPRESSED_RED_RGTC1                                         = 0x8DBB
const GL_INDEX                                                        = 0x8222
const GL_DRAW_BUFFER11                                                = 0x8830
const GL_GREEN_INTEGER                                                = 0x8D95
const GL_INT                                                          = 0x1404
const GL_TRIANGLES                                                    = 0x0004
const GL_ALIASED_LINE_WIDTH_RANGE                                     = 0x846E
const GL_DEPTH_STENCIL                                                = 0x84F9
const GL_MAP_INVALIDATE_RANGE_BIT                                     = 0x0004
const GL_DECR_WRAP                                                    = 0x8508
const GL_NAND                                                         = 0x150E
const GL_SEPARATE_SPECULAR_COLOR                                      = 0x81FA
const GL_SAMPLER_1D_ARRAY_SHADOW                                      = 0x8DC3
const GL_BLEND_DST_ALPHA                                              = 0x80CA
const GL_SELECTION_BUFFER_SIZE                                        = 0x0DF4
const GL_RENDERBUFFER                                                 = 0x8D41
const GL_RGB10                                                        = 0x8052
const GL_ACCUM_BLUE_BITS                                              = 0x0D5A
const GL_TEXTURE30                                                    = 0x84DE
const GL_VERTEX_ATTRIB_ARRAY_NORMALIZED                               = 0x886A
const GL_RENDERBUFFER_BLUE_SIZE                                       = 0x8D52
const GL_TEXTURE_BORDER_COLOR                                         = 0x1004
const GL_ALPHA16                                                      = 0x803E
const GL_ARRAY_BUFFER_BINDING                                         = 0x8894
const GL_VERTEX_ATTRIB_ARRAY_SIZE                                     = 0x8623
const GL_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH                        = 0x8C76
const GL_LINE_STIPPLE_PATTERN                                         = 0x0B25
const GL_STENCIL_ATTACHMENT                                           = 0x8D20
const GL_ACCUM_ALPHA_BITS                                             = 0x0D5B
const GL_CLIP_PLANE3                                                  = 0x3003
const GL_DEPTH24_STENCIL8                                             = 0x88F0
const GL_PIXEL_UNPACK_BUFFER_BINDING                                  = 0x88EF
const GL_RG16F                                                        = 0x822F
const GL_TEXTURE_INTERNAL_FORMAT                                      = 0x1003
const GL_QUERY_BY_REGION_WAIT                                         = 0x8E15
const GL_EDGE_FLAG                                                    = 0x0B43
const GL_INT_SAMPLER_2D_RECT                                          = 0x8DCD
const GL_FOG_COORD_SRC                                                = 0x8450
const GL_VERTEX_ARRAY_BUFFER_BINDING                                  = 0x8896
const GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER                         = 0x8CD4
const GL_POLYGON_TOKEN                                                = 0x0703
const GL_X4D_COLOR_TEXTURE                                            = 0x0604
const GL_COLOR_ATTACHMENT5                                            = 0x8CE5
const GL_DEPTH_BIAS                                                   = 0x0D1F
const GL_UNIFORM_ARRAY_STRIDE                                         = 0x8A3C
const GL_FALSE                                                        = 0
const GL_MAX_COLOR_TEXTURE_SAMPLES                                    = 0x910E
const GL_PROXY_TEXTURE_CUBE_MAP                                       = 0x851B
const GL_CONTEXT_CORE_PROFILE_BIT                                     = 0x00000001
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
const GL_TEXTURE_BINDING_BUFFER                                       = 0x8C2C
const GL_RGBA_MODE                                                    = 0x0C31
const GL_TEXTURE_GREEN_TYPE                                           = 0x8C11
const GL_TRANSFORM_BIT                                                = 0x00001000
const GL_LOGIC_OP                                                     = 0x0BF1
const GL_ADD                                                          = 0x0104
const GL_PACK_SWAP_BYTES                                              = 0x0D00
const GL_LINE_SMOOTH                                                  = 0x0B20
const GL_ALREADY_SIGNALED                                             = 0x911A
const GL_RED_SCALE                                                    = 0x0D14
const GL_STACK_OVERFLOW                                               = 0x0503
const GL_DEPTH_COMPONENT16                                            = 0x81A5
const GL_SHADING_LANGUAGE_VERSION                                     = 0x8B8C
const GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS                      = 0x8C8B
const GL_COLOR_MATERIAL_FACE                                          = 0x0B55
const GL_TEXTURE_HEIGHT                                               = 0x1001
const GL_PIXEL_MAP_R_TO_R_SIZE                                        = 0x0CB6
const GL_EXTENSIONS                                                   = 0x1F03
const GL_LUMINANCE6_ALPHA2                                            = 0x8044
const GL_VERTEX_ATTRIB_ARRAY_STRIDE                                   = 0x8624
const GL_TEXTURE_SWIZZLE_R                                            = 0x8E42
const GL_TEXTURE15                                                    = 0x84CF
const GL_ORDER                                                        = 0x0A01
const GL_PIXEL_MAP_I_TO_I_SIZE                                        = 0x0CB0
const GL_DRAW_BUFFER8                                                 = 0x882D
const GL_PIXEL_MAP_I_TO_A                                             = 0x0C75
# Export everything!
export glBlendEquation, glReadBuffer, glGenTextures, glFramebufferRenderbuffer, glGetFloatv, glBindBufferBase, glClientWaitSync, glUniform3f, glGetIntegeri_v, glGetQueryObjectiv, glTexCoordP2ui, glGetActiveUniformBlockName, glProvokingVertex, glClearDepth, glUniformMatrix2fv, glTexParameterIiv, glVertexAttribI4usv, glVertexAttribI2iv, glTexCoordP3ui, glDeleteSync, glGenSamplers, glUniformMatrix4fv, glBlendColor, glBindFragDataLocation, glUniformMatrix3x2fv, glDisable, glSamplerParameteri, glStencilFuncSeparate, glMultiDrawElementsBaseVertex, glHint, glIndexub, glGenRenderbuffers, glFlushMappedBufferRange, glUniform1ui, glFinish, glTexImage3D, glClear, glTexSubImage3D, glShaderSource, glUniform2iv, glBeginConditionalRender, glBindTexture, glGetActiveUniformsiv, glGetStringi, glTransformFeedbackVaryings, glGetVertexAttribfv, glDepthRange, glGetSamplerParameterIiv, glGetVertexAttribIuiv, glGetShaderInfoLog, glRenderbufferStorageMultisample, glGetPointerv, glUniformMatrix2x3fv, glUniform2ui, glBindFramebuffer, glGetQueryObjectui64v, glFramebufferTexture3D, glVertexAttribDivisor, glBindFragDataLocationIndexed, glDrawElementsBaseVertex, glMultiTexCoordP4ui, glGetTexParameterfv, glVertexAttribP4ui, glUniformMatrix3fv, glScissor, glDeleteProgram, glSamplerParameterIuiv, glGetProgramiv, glGetVertexAttribiv, glDrawElementsInstancedBaseVertex, glBindBuffer, glStencilMask, glCopyTexSubImage2D, glGetTexLevelParameterfv, glColorMaski, glNormalP3ui, glVertexP3ui, glGetAttribLocation, glGenerateMipmap, glDrawArraysInstanced, glDeleteRenderbuffers, glVertexAttribP1ui, glTexParameteri, glCompressedTexImage2D, glGetShaderSource, glUniform3iv, glIsBuffer, glWaitSync, glGetAttachedShaders, glVertexAttribI1uiv, glMultiTexCoordP1ui, glGetUniformBlockIndex, glIsVertexArray, glVertexAttribP2uiv, glEnableVertexAttribArray, glIsEnabledi, glVertexAttribP2ui, glDrawArrays, glGetActiveAttrib, glCopyTexImage1D, glGenVertexArrays, glStencilFunc, glSecondaryColorP3uiv, glGetActiveUniform, glCompressedTexImage1D, glQueryCounter, glGetError, glNormalP3uiv, glTexCoordP2uiv, glUniform4ui, glVertexAttribI4i, glDrawRangeElementsBaseVertex, glUseProgram, glUniformMatrix4x2fv, glDeleteTextures, glCompressedTexSubImage1D, glVertexAttribI4uiv, glGetInteger64v, glVertexAttribI2ui, glTexParameterf, glPrimitiveRestartIndex, glDeleteShader, glCullFace, glGenBuffers, glTexParameterfv, glMultiDrawElements, glDepthMask, glLineWidth, glPolygonMode, glGetSamplerParameteriv, glVertexAttribI3uiv, glGetBufferPointerv, glVertexAttribP4uiv, glCompressedTexSubImage3D, glVertexAttribI1iv, glFramebufferTexture1D, glUniform2uiv, glUniform1i, glFlush, glEndConditionalRender, glUniform3uiv, glUniform1iv, glUniform1fv, glGenFramebuffers, glFramebufferTextureLayer, glActiveTexture, glSecondaryColorP3ui, glIsTexture, glClearBufferfi, glIsProgram, glPolygonOffset, glDrawRangeElements, glDetachShader, glGetVertexAttribIiv, glGetTransformFeedbackVarying, glUniform4uiv, glCopyTexSubImage3D, glGetFramebufferAttachmentParameteriv, glVertexAttribI1i, glVertexAttribI3ui, glStencilMaskSeparate, glGetProgramInfoLog, glGetActiveUniformBlockiv, glBlitFramebuffer, glBeginTransformFeedback, glVertexAttribI4bv, glIsSampler, glVertexAttribI3i, glVertexAttribI4ui, glCheckFramebufferStatus, glVertexAttribI4ubv, glCreateProgram, glUniformBlockBinding, glTexParameteriv, glGetIntegerv, glGetSynciv, glClampColor, glVertexAttribP3ui, glGetVertexAttribdv, glBlendEquationSeparate, glFenceSync, glEnable, glBindAttribLocation, glSamplerParameterfv, glIsShader, glUniformMatrix4x3fv, glGetQueryObjectuiv, glValidateProgram, glMapBufferRange, glGetActiveUniformName, glTexCoordP4uiv, glPointParameterf, glIndexubv, glClearBufferiv, glGetCompressedTexImage, glBindVertexArray, glSamplerParameteriv, glStencilOpSeparate, glGetSamplerParameterfv, glVertexAttribI3iv, glVertexP4uiv, glMultiTexCoordP1uiv, glSamplerParameterIiv, glVertexAttribI2uiv, glUnmapBuffer, glGetDoublev, glEndQuery, glViewport, glTexImage1D, glStencilOp, glGetBooleani_v, glTexCoordP1uiv, glCompressedTexImage3D, glSampleMaski, glFramebufferTexture2D, glMultiTexCoordP2uiv, glEndTransformFeedback, glDisableVertexAttribArray, glUniform1uiv, glVertexAttribI2i, glUniform1f, glTexParameterIuiv, glCompressedTexSubImage2D, glGetVertexAttribPointerv, glGetQueryiv, glVertexAttribP3uiv, glIsSync, glPixelStorei, glBeginQuery, glMultiDrawArrays, glGetTexParameterIiv, glUniform3ui, glDeleteFramebuffers, glGetTexParameterIuiv, glDrawBuffer, glLogicOp, glFramebufferTexture, glTexImage3DMultisample, glGetShaderiv, glGetBufferParameteriv, glTexCoordP4ui, glCopyBufferSubData, glSamplerParameterf, glColorMask, glPointParameteri, glEnablei, glBlendFuncSeparate, glTexBuffer, glPointSize, glTexCoordP3uiv, glUniform3fv, glUniform4i, glMultiTexCoordP3ui, glGetUniformfv, glDrawBuffers, glClearBufferfv, glDeleteQueries, glCopyTexSubImage1D, glDisablei, glCompileShader, glVertexAttribI4sv, glIsEnabled, glGetRenderbufferParameteriv, glLinkProgram, glColorP3ui, glReadPixels, glVertexP2ui, glDrawElementsInstanced, glCreateShader, glBufferData, glGetUniformiv, glTexImage2D, glPointParameteriv, glGetUniformLocation, glGetQueryObjecti64v, glGetTexImage, glGetTexLevelParameteriv, glUniform2fv, glTexSubImage2D, glPixelStoref, glGetMultisamplefv, glDeleteVertexArrays, glIsRenderbuffer, glClearBufferuiv, glRenderbufferStorage, glTexSubImage1D, glGetInteger64i_v, glDrawElements, glVertexAttribI1ui, glGetBufferSubData, glGetFragDataIndex, glVertexP2uiv, glUniform4fv, glGetUniformIndices, glGetFragDataLocation, glUniform2i, glMultiTexCoordP2ui, glAttachShader, glGetUniformuiv, glDepthFunc, glVertexAttribI4iv, glUniformMatrix2x4fv, glColorP4ui, glBufferSubData, glUniformMatrix3x4fv, glIsQuery, glUniform4iv, glCopyTexImage2D, glBindBufferRange, glGenQueries, glDeleteSamplers, glGetBufferParameteri64v, glUniform2f, glBindSampler, glColorP4uiv, glVertexAttribIPointer, glTexCoordP1ui, glBindRenderbuffer, glDeleteBuffers, glColorP3uiv, glMultiTexCoordP4uiv, glGetSamplerParameterIuiv, glBlendFunc, glMultiTexCoordP3uiv, glVertexAttribPointer, glVertexP3uiv, glGetBooleanv, glGetTexParameteriv, glVertexP4ui, glFrontFace, glPointParameterfv, glSampleCoverage, glClearColor, glIsFramebuffer, glVertexAttribP1uiv, glUniform3i, glClearStencil, glTexImage2DMultisample, glGetString, glUniform4f, glMapBuffer, GL_MAP1_GRID_SEGMENTS, GL_COMPILE, GL_SAMPLER_3D, GL_INTENSITY, GL_FOG_HINT, GL_FOG_COORDINATE_ARRAY_BUFFER_BINDING, GL_FRAMEBUFFER_INCOMPLETE_READ_BUFFER, GL_BUFFER_ACCESS, GL_LUMINANCE12_ALPHA12, GL_RGBA32I, GL_FRAMEBUFFER_UNSUPPORTED, GL_SAMPLER_2D_ARRAY, GL_UNPACK_LSB_FIRST, GL_ACCUM_RED_BITS, GL_LIGHT4, GL_POINT_SPRITE, GL_MAX_GEOMETRY_OUTPUT_VERTICES, GL_READ_FRAMEBUFFER_BINDING, GL_LIGHT_MODEL_LOCAL_VIEWER, GL_OBJECT_LINEAR, GL_COLOR_ARRAY_SIZE, GL_TEXTURE12, GL_OPERAND1_RGB, GL_X3D, GL_TEXTURE_BINDING_3D, GL_SECONDARY_COLOR_ARRAY, GL_UNSIGNED_SHORT_5_6_5_REV, GL_BGRA_INTEGER, GL_PACK_ROW_LENGTH, GL_SET, GL_LINES, GL_QUADS, GL_EYE_LINEAR, GL_POLYGON_OFFSET_POINT, GL_TEXTURE, GL_BLEND_EQUATION_ALPHA, GL_INFO_LOG_LENGTH, GL_CLIP_DISTANCE0, GL_COMPILE_STATUS, GL_QUERY_RESULT, GL_RGB5, GL_VERTEX_SHADER, GL_LIST_BIT, GL_PROXY_TEXTURE_2D_MULTISAMPLE, GL_TEXTURE_PRIORITY, GL_EVAL_BIT, GL_POINT_SPRITE_COORD_ORIGIN, GL_CCW, GL_TEXTURE26, GL_SMOOTH_LINE_WIDTH_GRANULARITY, GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME, GL_BUFFER_MAP_LENGTH, GL_ATTACHED_SHADERS, GL_CLIP_DISTANCE5, GL_MAP_UNSYNCHRONIZED_BIT, GL_BLEND_SRC_ALPHA, GL_R32F, GL_INT_SAMPLER_2D, GL_C3F_V3F, GL_TEXTURE_CUBE_MAP_NEGATIVE_X, GL_MAP2_INDEX, GL_DEPTH_BUFFER_BIT, GL_STENCIL_BITS, GL_INTENSITY12, GL_DEPTH_COMPONENT32, GL_SYNC_FLUSH_COMMANDS_BIT, GL_UNIFORM_BLOCK_ACTIVE_UNIFORMS, GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN, GL_LIST_BASE, GL_DRAW_BUFFER7, GL_POINT_SMOOTH, GL_INT_SAMPLER_3D, GL_BUFFER_MAP_OFFSET, GL_PIXEL_MAP_S_TO_S, GL_INT_SAMPLER_1D_ARRAY, GL_DOUBLE, GL_FOG_COORDINATE_ARRAY_STRIDE, GL_RG32F, GL_GENERATE_MIPMAP, GL_RGB10_A2UI, GL_T2F_C4UB_V3F, GL_RGB16, GL_TEXTURE_MATRIX, GL_SRGB8_ALPHA8, GL_LAST_VERTEX_CONVENTION, GL_COLOR_ARRAY_STRIDE, GL_STENCIL_INDEX16, GL_TEXTURE_CUBE_MAP_POSITIVE_X, GL_BITMAP, GL_CURRENT_INDEX, GL_FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE, GL_MAP1_GRID_DOMAIN, GL_VERTEX_PROGRAM_POINT_SIZE, GL_STENCIL_PASS_DEPTH_FAIL, GL_TEXTURE_CUBE_MAP_NEGATIVE_Y, GL_BLUE_INTEGER, GL_STENCIL_BACK_FAIL, GL_XOR, GL_VERTEX_PROGRAM_TWO_SIDE, GL_LIGHT_MODEL_AMBIENT, GL_OPERAND0_ALPHA, GL_FOG_COORD_ARRAY_BUFFER_BINDING, GL_RGBA16UI, GL_AMBIENT, GL_DEPTH_CLAMP, GL_DYNAMIC_COPY, GL_TEXTURE_1D_ARRAY, GL_EQUIV, GL_CURRENT_RASTER_INDEX, GL_POLYGON_OFFSET_FILL, GL_COLOR_WRITEMASK, GL_POINT_TOKEN, GL_TEXTURE8, GL_EQUAL, GL_R32I, GL_MAX_ARRAY_TEXTURE_LAYERS, GL_TEXTURE1, GL_SECONDARY_COLOR_ARRAY_STRIDE, GL_UNSIGNED_INT_10F_11F_11F_REV, GL_SRC1_RGB, GL_RETURN, GL_RGBA16, GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE, GL_TEXTURE_2D, GL_TEXTURE_BINDING_1D, GL_MAX_GEOMETRY_OUTPUT_COMPONENTS, GL_LINE_WIDTH_RANGE, GL_PIXEL_MAP_I_TO_B, GL_ACCUM_BUFFER_BIT, GL_SAMPLES_PASSED, GL_MAP2_GRID_SEGMENTS, GL_READ_FRAMEBUFFER, GL_INDEX_CLEAR_VALUE, GL_ENABLE_BIT, GL_OBJECT_TYPE, GL_MAP2_VERTEX_3, GL_OUT_OF_MEMORY, GL_COLOR_ATTACHMENT12, GL_UNSIGNED_SHORT_4_4_4_4, GL_STENCIL_INDEX8, GL_RGB8I, GL_MAP1_VERTEX_3, GL_CLIP_DISTANCE2, GL_TEXTURE18, GL_INT_2_10_10_10_REV, GL_UNSIGNED_INT_SAMPLER_3D, GL_DEPTH_ATTACHMENT, GL_UNPACK_ALIGNMENT, GL_PROVOKING_VERTEX, GL_ONE_MINUS_SRC_ALPHA, GL_PIXEL_MAP_I_TO_I, GL_CURRENT_TEXTURE_COORDS, GL_COORD_REPLACE, GL_DIFFUSE, GL_TEXTURE_INTENSITY_SIZE, GL_DRAW_BUFFER6, GL_TEXTURE_2D_MULTISAMPLE_ARRAY, GL_TEXTURE_GEN_R, GL_FLOAT_MAT2, GL_UNSIGNED_NORMALIZED, GL_QUAD_STRIP, GL_DYNAMIC_DRAW, GL_SYNC_FENCE, GL_ONE_MINUS_SRC1_ALPHA, GL_DEPTH_FUNC, GL_MAP2_VERTEX_4, GL_FLOAT_MAT3x2, GL_RGBA8I, GL_RENDERBUFFER_SAMPLES, GL_PIXEL_MAP_G_TO_G, GL_INTENSITY8, GL_PIXEL_MAP_A_TO_A_SIZE, GL_MAP2_GRID_DOMAIN, GL_N3F_V3F, GL_SRC0_ALPHA, GL_DOMAIN, GL_TEXTURE_1D, GL_RENDERBUFFER_WIDTH, GL_POINT_SIZE, GL_VIEWPORT, GL_R16_SNORM, GL_RGBA, GL_DRAW_PIXEL_TOKEN, GL_TEXTURE_SWIZZLE_G, GL_CLAMP, GL_TEXTURE31, GL_TEXTURE_GEN_MODE, GL_FOG_COORD_ARRAY_STRIDE, GL_TEXTURE3, GL_PIXEL_MAP_I_TO_R, GL_COMBINE_ALPHA, GL_SUBTRACT, GL_DRAW_BUFFER2, GL_RGB4, GL_UNSIGNED_INT_SAMPLER_2D, GL_COLOR_ARRAY_TYPE, GL_COMBINE_RGB, GL_MAP1_TEXTURE_COORD_3, GL_ELEMENT_ARRAY_BUFFER, GL_COMPRESSED_SLUMINANCE, GL_SUBPIXEL_BITS, GL_UNPACK_SKIP_ROWS, GL_SOURCE0_RGB, GL_TEXTURE_SWIZZLE_RGBA, GL_UNIFORM_BLOCK_INDEX, GL_MAX_DUAL_SOURCE_DRAW_BUFFERS, GL_RGBA_INTEGER, GL_RGB16F, GL_MAX_COMBINED_UNIFORM_BLOCKS, GL_POINTS, GL_INCR_WRAP, GL_ACTIVE_ATTRIBUTES, GL_FIXED_ONLY, GL_MAX_UNIFORM_BLOCK_SIZE, GL_TEXTURE5, GL_ALPHA12, GL_GREEN_SCALE, GL_CURRENT_FOG_COORD, GL_SRC1_ALPHA, GL_PROXY_TEXTURE_1D, GL_TEXTURE_WRAP_S, GL_X2D, GL_SAMPLER_BUFFER, GL_SRGB, GL_STATIC_DRAW, GL_TEXTURE_COORD_ARRAY_POINTER, GL_TEXTURE_2D_MULTISAMPLE, GL_INDEX_ARRAY, GL_T, GL_R11F_G11F_B10F, GL_RENDERBUFFER_ALPHA_SIZE, GL_LESS, GL_TEXTURE_SHARED_SIZE, GL_INCR, GL_MAX_TEXTURE_SIZE, GL_MAX_DRAW_BUFFERS, GL_TEXTURE_ENV_MODE, GL_LIGHT3, GL_TEXTURE_BLUE_SIZE, GL_UNSIGNED_INT_SAMPLER_2D_RECT, GL_EDGE_FLAG_ARRAY, GL_TEXTURE_WRAP_R, GL_QUERY_COUNTER_BITS, GL_DECAL, GL_RG32I, GL_ONE_MINUS_DST_ALPHA, GL_COLOR_ATTACHMENT8, GL_COMPRESSED_SIGNED_RED_RGTC1, GL_PACK_SKIP_PIXELS, GL_SECONDARY_COLOR_ARRAY_TYPE, GL_TEXTURE_GREEN_SIZE, GL_EXP2, GL_LIGHT1, GL_DRAW_BUFFER13, GL_DEPTH, GL_CULL_FACE_MODE, GL_CLIP_PLANE5, GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT, GL_COMPRESSED_RGB, GL_ALPHA_BIAS, GL_TEXTURE_GEN_S, GL_SIGNALED, GL_MAP2_TEXTURE_COORD_1, GL_FLOAT_MAT4x3, GL_SAMPLER_2D, GL_TEXTURE_DEPTH_SIZE, GL_SRC0_RGB, GL_AND_REVERSE, GL_CLEAR, GL_DEPTH_TEXTURE_MODE, GL_TEXTURE_MAX_LOD, GL_MAX_CLIENT_ATTRIB_STACK_DEPTH, GL_SAMPLE_ALPHA_TO_ONE, GL_FLOAT_VEC4, GL_FOG_DENSITY, GL_LINE_TOKEN, GL_TIMEOUT_IGNORED, GL_SLUMINANCE, GL_TEXTURE_FIXED_SAMPLE_LOCATIONS, GL_C4UB_V3F, GL_SAMPLE_BUFFERS, GL_NEAREST, GL_RG8, GL_LINE_LOOP, GL_RGB8UI, GL_PIXEL_PACK_BUFFER, GL_GEOMETRY_VERTICES_OUT, GL_COMPRESSED_ALPHA, GL_FLOAT_MAT2x3, GL_ALPHA_TEST, GL_R16UI, GL_SYNC_CONDITION, GL_COLOR_ATTACHMENT11, GL_BOOL_VEC2, GL_READ_ONLY, GL_R16F, GL_LIGHT6, GL_SECONDARY_COLOR_ARRAY_SIZE, GL_SAMPLER_CUBE_SHADOW, GL_RED_BITS, GL_COMPARE_REF_TO_TEXTURE, GL_STENCIL_BACK_REF, GL_PREVIOUS, GL_STENCIL_BACK_FUNC, GL_COMPRESSED_LUMINANCE, GL_BITMAP_TOKEN, GL_CLIP_DISTANCE7, GL_UNSIGNED_SHORT_4_4_4_4_REV, GL_TEXTURE4, GL_ACCUM_GREEN_BITS, GL_POINT_SIZE_RANGE, GL_UNSIGNED_BYTE_3_3_2, GL_TEXTURE_SWIZZLE_A, GL_MAX_VERTEX_OUTPUT_COMPONENTS, GL_WRITE_ONLY, GL_COMPRESSED_RED, GL_PIXEL_MAP_A_TO_A, GL_TEXTURE_COMPONENTS, GL_INVALID_VALUE, GL_CLAMP_READ_COLOR, GL_ACCUM, GL_RGB_SCALE, GL_PIXEL_MAP_S_TO_S_SIZE, GL_CURRENT_RASTER_SECONDARY_COLOR, GL_RASTERIZER_DISCARD, GL_VERTEX_ARRAY_TYPE, GL_SRGB8, GL_SINGLE_COLOR, GL_RG_SNORM, GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS, GL_LUMINANCE, GL_RGB32F, GL_REPLACE, GL_MATRIX_MODE, GL_DEPTH_COMPONENT, GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS, GL_OBJECT_PLANE, GL_WEIGHT_ARRAY_BUFFER_BINDING, GL_RGBA8, GL_TEXTURE_GEN_Q, GL_TEXTURE_DEPTH_TYPE, GL_TEXTURE_STACK_DEPTH, GL_SCISSOR_TEST, GL_LIGHT2, GL_STEREO, GL_TEXTURE_COMPRESSED_IMAGE_SIZE, GL_AUTO_NORMAL, GL_TEXTURE_LUMINANCE_TYPE, GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS, GL_TEXTURE22, GL_CLAMP_TO_EDGE, GL_CLIP_DISTANCE6, GL_ZOOM_X, GL_DRAW_BUFFER0, GL_ACTIVE_TEXTURE, GL_UNSIGNED_INT_VEC2, GL_MAX_EVAL_ORDER, GL_TEXTURE_DEPTH, GL_FRONT_RIGHT, GL_DEPTH_RANGE, GL_X4_BYTES, GL_NORMAL_ARRAY, GL_BLEND_SRC_RGB, GL_LINE_RESET_TOKEN, GL_MAP_INVALIDATE_BUFFER_BIT, GL_ONE, GL_STENCIL_PASS_DEPTH_PASS, GL_NO_ERROR, GL_SMOOTH_POINT_SIZE_RANGE, GL_PROXY_TEXTURE_2D_ARRAY, GL_AUX_BUFFERS, GL_MAX_TEXTURE_STACK_DEPTH, GL_CLIP_DISTANCE4, GL_LEQUAL, GL_TIMESTAMP, GL_POINT_SIZE_MAX, GL_MAX_TEXTURE_COORDS, GL_NONE, GL_BUFFER_SIZE, GL_PIXEL_MAP_B_TO_B, GL_INT_VEC4, GL_RGB16_SNORM, GL_OR_INVERTED, GL_SAMPLE_MASK, GL_PACK_SKIP_ROWS, GL_NUM_COMPRESSED_TEXTURE_FORMATS, GL_RESCALE_NORMAL, GL_DEPTH_COMPONENT24, GL_BACK_LEFT, GL_MAP2_TEXTURE_COORD_4, GL_COLOR, GL_INVALID_INDEX, GL_CONSTANT, GL_INT_VEC2, GL_UNSIGNED_SHORT, GL_VERTEX_ARRAY_BINDING, GL_RED_SNORM, GL_MODULATE, GL_UNSIGNED_INT, GL_LUMINANCE4_ALPHA4, GL_X3D_COLOR, GL_TEXTURE_BUFFER, GL_POSITION, GL_COMPRESSED_INTENSITY, GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS, GL_COLOR_CLEAR_VALUE, GL_R3_G3_B2, GL_DELETE_STATUS, GL_UNSIGNED_INT_VEC3, GL_PIXEL_MAP_G_TO_G_SIZE, GL_FLOAT_MAT4, GL_BACK_RIGHT, GL_LUMINANCE12_ALPHA4, GL_FRONT_AND_BACK, GL_ACTIVE_UNIFORM_BLOCKS, GL_RENDERER, GL_COLOR_ATTACHMENT10, GL_FOG_COORDINATE_SOURCE, GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE, GL_ATTRIB_STACK_DEPTH, GL_LINE_STIPPLE_REPEAT, GL_POLYGON_SMOOTH_HINT, GL_LUMINANCE4, GL_SMOOTH_POINT_SIZE_GRANULARITY, GL_OR_REVERSE, GL_MAP2_TEXTURE_COORD_2, GL_FOG_MODE, GL_LUMINANCE16, GL_OPERAND0_RGB, GL_STENCIL_BUFFER_BIT, GL_MAX_PROJECTION_STACK_DEPTH, GL_ARRAY_BUFFER, GL_POLYGON_SMOOTH, GL_FRAMEBUFFER_ATTACHMENT_LAYERED, GL_EDGE_FLAG_ARRAY_POINTER, GL_FOG_COORD, GL_TEXTURE23, GL_INDEX_LOGIC_OP, GL_DOT3_RGBA, GL_NORMAL_ARRAY_POINTER, GL_STENCIL_INDEX1, GL_TEXTURE11, GL_COLOR_ATTACHMENT3, GL_BLUE_SCALE, GL_DEPTH_BITS, GL_STENCIL_BACK_PASS_DEPTH_PASS, GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS, GL_FRAMEBUFFER_ATTACHMENT_RED_SIZE, GL_UNIFORM_SIZE, GL_TIMEOUT_EXPIRED, GL_LIGHT_MODEL_TWO_SIDE, GL_INT_SAMPLER_2D_ARRAY, GL_READ_BUFFER, GL_SLUMINANCE_ALPHA, GL_RGB16UI, GL_NORMALIZE, GL_CURRENT_COLOR, GL_FRAMEBUFFER_COMPLETE, GL_FASTEST, GL_INDEX_ARRAY_POINTER, GL_UNIFORM_BUFFER, GL_MULTISAMPLE_BIT, GL_CURRENT_SECONDARY_COLOR, GL_UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER, GL_MAP1_TEXTURE_COORD_1, GL_QUERY_NO_WAIT, GL_C4UB_V2F, GL_AUX2, GL_CURRENT_RASTER_POSITION_VALID, GL_MAX_COLOR_ATTACHMENTS, GL_COLOR_MATERIAL, GL_R16I, GL_NAME_STACK_DEPTH, GL_AND_INVERTED, GL_LIGHT7, GL_DRAW_BUFFER3, GL_NICEST, GL_TRANSFORM_FEEDBACK_BUFFER_BINDING, GL_MAP_READ_BIT, GL_PIXEL_MAP_I_TO_G, GL_MAX_VERTEX_UNIFORM_BLOCKS, GL_KEEP, GL_SOURCE0_ALPHA, GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS, GL_MAX_CLIP_DISTANCES, GL_INVALID_FRAMEBUFFER_OPERATION, GL_ZERO, GL_ACCUM_CLEAR_VALUE, GL_MAX_SAMPLES, GL_INDEX_ARRAY_STRIDE, GL_COLOR_ATTACHMENT4, GL_AMBIENT_AND_DIFFUSE, GL_COLOR_ATTACHMENT9, GL_DRAW_BUFFER, GL_BYTE, GL_COMPARE_R_TO_TEXTURE, GL_GREATER, GL_COPY, GL_NORMAL_ARRAY_BUFFER_BINDING, GL_FRAMEBUFFER_SRGB, GL_ADD_SIGNED, GL_DONT_CARE, GL_FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE, GL_MAX_ELEMENTS_VERTICES, GL_UNSIGNED_INT_SAMPLER_2D_ARRAY, GL_DST_ALPHA, GL_RGBA32F, GL_ANY_SAMPLES_PASSED, GL_MAX_LIST_NESTING, GL_UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES, GL_POINT_DISTANCE_ATTENUATION, GL_COLOR_MATERIAL_PARAMETER, GL_LIGHTING, GL_ELEMENT_ARRAY_BUFFER_BINDING, GL_INT_SAMPLER_2D_MULTISAMPLE_ARRAY, GL_AND, GL_SPOT_DIRECTION, GL_PIXEL_MAP_I_TO_B_SIZE, GL_UNSIGNED_INT_SAMPLER_BUFFER, GL_COPY_PIXEL_TOKEN, GL_TRIANGLE_FAN, GL_RENDERBUFFER_DEPTH_SIZE, GL_MAX_SERVER_WAIT_TIMEOUT, GL_UNSIGNED_BYTE_2_3_3_REV, GL_RG8UI, GL_GREEN_BIAS, GL_RGB12, GL_POINT_SIZE_GRANULARITY, GL_FEEDBACK_BUFFER_SIZE, GL_TRUE, GL_PACK_SKIP_IMAGES, GL_INTERPOLATE, GL_RGB32I, GL_RGB8, GL_COMPRESSED_LUMINANCE_ALPHA, GL_T2F_C3F_V3F, GL_TEXTURE_CUBE_MAP_POSITIVE_Z, GL_FOG_COORD_ARRAY_POINTER, GL_RENDER_MODE, GL_QUADRATIC_ATTENUATION, GL_T2F_N3F_V3F, GL_UNPACK_ROW_LENGTH, GL_LINE, GL_LINE_SMOOTH_HINT, GL_STREAM_DRAW, GL_MAP1_COLOR_4, GL_ALPHA_SCALE, GL_COMPRESSED_TEXTURE_FORMATS, GL_MAX_VERTEX_ATTRIBS, GL_LINE_STRIP, GL_VERSION, GL_CLIENT_VERTEX_ARRAY_BIT, GL_PROJECTION_STACK_DEPTH, GL_TEXTURE25, GL_SAMPLE_COVERAGE_VALUE, GL_VERTEX_ATTRIB_ARRAY_POINTER, GL_TEXTURE_RED_TYPE, GL_TEXTURE_2D_ARRAY, GL_CURRENT_FOG_COORDINATE, GL_CURRENT_BIT, GL_FLOAT_MAT3x4, GL_SHORT, GL_POINT_BIT, GL_POLYGON_BIT, GL_QUERY_WAIT, GL_BOOL, GL_TRANSFORM_FEEDBACK_BUFFER_START, GL_BLUE_BIAS, GL_DYNAMIC_READ, GL_TEXTURE20, GL_SPECULAR, GL_RENDER, GL_MAX_CUBE_MAP_TEXTURE_SIZE, GL_VERTEX_ATTRIB_ARRAY_DIVISOR, GL_X3D_COLOR_TEXTURE, GL_POINT_SMOOTH_HINT, GL_DOT3_RGB, GL_MAX_PIXEL_MAP_TABLE, GL_STENCIL_BACK_PASS_DEPTH_FAIL, GL_TEXTURE_BINDING_RECTANGLE, GL_WAIT_FAILED, GL_RG8I, GL_CLIP_PLANE0, GL_INDEX_ARRAY_BUFFER_BINDING, GL_CLIP_DISTANCE1, GL_CURRENT_RASTER_TEXTURE_COORDS, GL_COMPILE_AND_EXECUTE, GL_UNIFORM_BLOCK_DATA_SIZE, GL_BLEND_SRC, GL_NEAREST_MIPMAP_LINEAR, GL_LUMINANCE16_ALPHA16, GL_SPOT_EXPONENT, GL_BLEND_DST, GL_SHADE_MODEL, GL_TEXTURE_ALPHA_TYPE, GL_TEXTURE_COMPRESSION_HINT, GL_UNIFORM_BLOCK_NAME_LENGTH, GL_RGBA8UI, GL_ACTIVE_ATTRIBUTE_MAX_LENGTH, GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE, GL_TRANSPOSE_TEXTURE_MATRIX, GL_SAMPLER_2D_RECT, GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL, GL_CLIP_PLANE1, GL_VERTEX_ATTRIB_ARRAY_ENABLED, GL_FEEDBACK_BUFFER_POINTER, GL_UNIFORM_BLOCK_BINDING, GL_UNIFORM_NAME_LENGTH, GL_TIME_ELAPSED, GL_VERTEX_ARRAY_STRIDE, GL_NUM_EXTENSIONS, GL_MAX_CLIP_PLANES, GL_DEPTH_WRITEMASK, GL_LINEAR, GL_RGB10_A2, GL_INDEX_WRITEMASK, GL_FOG_COORD_ARRAY, GL_UNIFORM_OFFSET, GL_SOURCE2_RGB, GL_TEXTURE_SWIZZLE_B, GL_COMBINE, GL_FLOAT_VEC3, GL_DRAW_BUFFER5, GL_TEXTURE_ENV_COLOR, GL_EXP, GL_DST_COLOR, GL_TEXTURE_WIDTH, GL_UNSIGNED_INT_2_10_10_10_REV, GL_MAX_FRAGMENT_UNIFORM_COMPONENTS, GL_UNIFORM_BUFFER_BINDING, GL_SRGB_ALPHA, GL_V2F, GL_SECONDARY_COLOR_ARRAY_BUFFER_BINDING, GL_NEVER, GL_SLUMINANCE8, GL_RED_INTEGER, GL_SAMPLER_2D_MULTISAMPLE, GL_RENDERBUFFER_INTERNAL_FORMAT, GL_COLOR_ATTACHMENT13, GL_UNPACK_IMAGE_HEIGHT, GL_SYNC_GPU_COMMANDS_COMPLETE, GL_PROXY_TEXTURE_2D, GL_MAP_WRITE_BIT, GL_TEXTURE_COMPARE_MODE, GL_TEXTURE0, GL_ACTIVE_UNIFORMS, GL_ALPHA4, GL_MAP2_COLOR_4, GL_CURRENT_QUERY, GL_SAMPLER_1D, GL_T2F_V3F, GL_FEEDBACK, GL_LINES_ADJACENCY, GL_INT_SAMPLER_CUBE, GL_MAP2_NORMAL, GL_BACK, GL_SMOOTH, GL_BGR, GL_STENCIL, GL_TEXTURE_3D, GL_UNPACK_SWAP_BYTES, GL_ALWAYS, GL_RENDERBUFFER_HEIGHT, GL_COLOR_SUM, GL_LINEAR_ATTENUATION, GL_PIXEL_MAP_R_TO_R, GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS, GL_AUX0, GL_ZOOM_Y, GL_UNIFORM_BUFFER_START, GL_CONTEXT_PROFILE_MASK, GL_SRC2_ALPHA, GL_CURRENT_NORMAL, GL_SELECT, GL_MAX_TEXTURE_UNITS, GL_COLOR_ARRAY_BUFFER_BINDING, GL_SAMPLE_POSITION, GL_R8, GL_LIST_INDEX, GL_SHININESS, GL_CLAMP_FRAGMENT_COLOR, GL_TEXTURE_COMPARE_FUNC, GL_DECR, GL_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER, GL_MAX_SAMPLE_MASK_WORDS, GL_AUX3, GL_FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING, GL_ALPHA_TEST_FUNC, GL_SAMPLER_1D_ARRAY, GL_PIXEL_MAP_I_TO_G_SIZE, GL_TEXTURE_BINDING_2D_ARRAY, GL_STENCIL_VALUE_MASK, GL_RGB32UI, GL_MAX_TEXTURE_IMAGE_UNITS, GL_COLOR_ATTACHMENT15, GL_PIXEL_UNPACK_BUFFER, GL_MAP2_TEXTURE_COORD_3, GL_BLEND, GL_GREEN, GL_PIXEL_PACK_BUFFER_BINDING, GL_RGB, GL_ALPHA_INTEGER, GL_MAX_GEOMETRY_INPUT_COMPONENTS, GL_NORMAL_MAP, GL_ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH, GL_TEXTURE_MIN_FILTER, GL_UNSIGNED_INT_10_10_10_2, GL_FRAGMENT_SHADER_DERIVATIVE_HINT, GL_RENDERBUFFER_GREEN_SIZE, GL_SRC1_COLOR, GL_CULL_FACE, GL_STENCIL_FAIL, GL_COMPRESSED_SRGB, GL_DRAW_BUFFER1, GL_TEXTURE_LUMINANCE_SIZE, GL_COLOR_ARRAY_POINTER, GL_TEXTURE_BINDING_2D, GL_ALPHA, GL_STREAM_READ, GL_TEXTURE_WRAP_T, GL_ALL_ATTRIB_BITS, GL_UNSIGNED_INT_8_8_8_8, GL_TEXTURE29, GL_INT_SAMPLER_BUFFER, GL_Q, GL_INDEX_BITS, GL_SPOT_CUTOFF, GL_PACK_LSB_FIRST, GL_BOOL_VEC4, GL_STENCIL_INDEX, GL_TRANSFORM_FEEDBACK_BUFFER_SIZE, GL_SRC2_RGB, GL_MODELVIEW, GL_POLYGON_OFFSET_UNITS, GL_PROXY_TEXTURE_1D_ARRAY, GL_TEXTURE9, GL_V3F, GL_FRAGMENT_DEPTH, GL_FOG_COLOR, GL_PROGRAM_POINT_SIZE, GL_MAP_COLOR, GL_NORMAL_ARRAY_STRIDE, GL_TEXTURE_COORD_ARRAY_SIZE, GL_STENCIL_REF, GL_CLIENT_ALL_ATTRIB_BITS, GL_DEPTH_SCALE, GL_VIEWPORT_BIT, GL_CLAMP_VERTEX_COLOR, GL_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION, GL_UNSIGNED_INT_SAMPLER_1D_ARRAY, GL_UNSIGNED_SHORT_1_5_5_5_REV, GL_EMISSION, GL_CURRENT_RASTER_COLOR, GL_TEXTURE_RESIDENT, GL_TEXTURE17, GL_TEXTURE16, GL_DITHER, GL_MAP1_TEXTURE_COORD_2, GL_BLEND_DST_RGB, GL_FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE, GL_S, GL_COMPRESSED_RG, GL_NOTEQUAL, GL_TEXTURE_CUBE_MAP_NEGATIVE_Z, GL_NOR, GL_ONE_MINUS_SRC1_COLOR, GL_LINEAR_MIPMAP_NEAREST, GL_SEPARATE_ATTRIBS, GL_MAX_INTEGER_SAMPLES, GL_FRAMEBUFFER_BINDING, GL_INTERLEAVED_ATTRIBS, GL_UNIFORM_MATRIX_STRIDE, GL_T4F_C4F_N3F_V4F, GL_RED_BIAS, GL_OPERAND2_ALPHA, GL_SRC_COLOR, GL_POLYGON_OFFSET_LINE, GL_ACTIVE_UNIFORM_MAX_LENGTH, GL_TEXTURE_BINDING_1D_ARRAY, GL_POLYGON_STIPPLE_BIT, GL_PROJECTION_MATRIX, GL_TRIANGLE_STRIP_ADJACENCY, GL_MULTISAMPLE, GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS, GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY, GL_STENCIL_BACK_VALUE_MASK, GL_RGBA16I, GL_COLOR_INDEXES, GL_INVALID_ENUM, GL_NOOP, GL_INDEX_SHIFT, GL_INDEX_ARRAY_TYPE, GL_SAMPLES, GL_TEXTURE14, GL_BUFFER_MAPPED, GL_TRANSPOSE_COLOR_MATRIX, GL_LOWER_LEFT, GL_COLOR_ATTACHMENT6, GL_FRAMEBUFFER, GL_TEXTURE_COMPRESSED, GL_RG, GL_POINT, GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT, GL_PROXY_TEXTURE_RECTANGLE, GL_SAMPLE_ALPHA_TO_COVERAGE, GL_FLOAT_MAT4x2, GL_TEXTURE_COORD_ARRAY, GL_FOG, GL_FRAGMENT_SHADER, GL_RGB_INTEGER, GL_CLIENT_PIXEL_STORE_BIT, GL_RGBA16_SNORM, GL_CLIP_DISTANCE3, GL_SAMPLE_COVERAGE, GL_SHADER_TYPE, GL_ONE_MINUS_DST_COLOR, GL_RG_INTEGER, GL_HALF_FLOAT, GL_SELECTION_BUFFER_POINTER, GL_CONTEXT_FLAGS, GL_UNPACK_SKIP_IMAGES, GL_MAX_MODELVIEW_STACK_DEPTH, GL_STACK_UNDERFLOW, GL_READ_WRITE, GL_LUMINANCE8, GL_QUERY_BY_REGION_NO_WAIT, GL_INVERT, GL_LIGHT5, GL_FLOAT_VEC2, GL_SCISSOR_BIT, GL_CLIENT_ATTRIB_STACK_DEPTH, GL_BUFFER_USAGE, GL_MAX_FRAGMENT_UNIFORM_BLOCKS, GL_CURRENT_RASTER_POSITION, GL_TEXTURE_SAMPLES, GL_MAX_RECTANGLE_TEXTURE_SIZE, GL_MAX_VARYING_COMPONENTS, GL_STENCIL_CLEAR_VALUE, GL_SAMPLER_2D_MULTISAMPLE_ARRAY, GL_RG16, GL_REPEAT, GL_UNSIGNED_SHORT_5_6_5, GL_RENDERBUFFER_RED_SIZE, GL_DEPTH_STENCIL_ATTACHMENT, GL_FILL, GL_ONE_MINUS_SRC_COLOR, GL_PACK_ALIGNMENT, GL_UNSIGNED_INT_5_9_9_9_REV, GL_TEXTURE2, GL_TEXTURE_ENV, GL_PIXEL_MODE_BIT, GL_BUFFER_MAP_POINTER, GL_GEQUAL, GL_UNSIGNALED, GL_RED, GL_FRAMEBUFFER_ATTACHMENT_GREEN_SIZE, GL_LUMINANCE8_ALPHA8, GL_COLOR_ATTACHMENT14, GL_RGBA32UI, GL_PRIMARY_COLOR, GL_MIRRORED_REPEAT, GL_CLAMP_TO_BORDER, GL_VALIDATE_STATUS, GL_RG8_SNORM, GL_DRAW_FRAMEBUFFER_BINDING, GL_COEFF, GL_TEXTURE7, GL_TEXTURE6, GL_COMPRESSED_SRGB_ALPHA, GL_GEOMETRY_OUTPUT_TYPE, GL_CW, GL_UNSIGNED_INT_VEC4, GL_UNIFORM_IS_ROW_MAJOR, GL_TEXTURE_CUBE_MAP, GL_ALPHA_TEST_REF, GL_FOG_BIT, GL_X3_BYTES, GL_TEXTURE_MAX_LEVEL, GL_TEXTURE_ALPHA_SIZE, GL_FOG_COORDINATE_ARRAY_TYPE, GL_TEXTURE_STENCIL_SIZE, GL_MAX_FRAGMENT_INPUT_COMPONENTS, GL_ALPHA_BITS, GL_OR, GL_T2F_C4F_N3F_V3F, GL_TEXTURE19, GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE, GL_MAX_LIGHTS, GL_MAX_VERTEX_UNIFORM_COMPONENTS, GL_MAX_VIEWPORT_DIMS, GL_POINT_SIZE_MIN, GL_CLIP_PLANE2, GL_T4F_V4F, GL_UNIFORM_TYPE, GL_CONTEXT_COMPATIBILITY_PROFILE_BIT, GL_MAP1_INDEX, GL_FOG_COORDINATE_ARRAY, GL_TEXTURE_COORD_ARRAY_STRIDE, GL_MAX_UNIFORM_BUFFER_BINDINGS, GL_LINEAR_MIPMAP_LINEAR, GL_PRIMITIVE_RESTART, GL_SYNC_STATUS, GL_COMPRESSED_RGBA, GL_MAX_ELEMENTS_INDICES, GL_COLOR_ATTACHMENT1, GL_VERTEX_ATTRIB_ARRAY_INTEGER, GL_DRAW_BUFFER10, GL_TEXTURE21, GL_PACK_IMAGE_HEIGHT, GL_DEPTH32F_STENCIL8, GL_MAP1_VERTEX_4, GL_SRC_ALPHA_SATURATE, GL_PROJECTION, GL_GENERATE_MIPMAP_HINT, GL_PROXY_TEXTURE_3D, GL_SHADER_SOURCE_LENGTH, GL_RGBA8_SNORM, GL_C4F_N3F_V3F, GL_BLEND_EQUATION_RGB, GL_INDEX_MODE, GL_MAP_STENCIL, GL_VERTEX_ARRAY_SIZE, GL_STATIC_COPY, GL_OPERAND1_ALPHA, GL_RG16UI, GL_PIXEL_MAP_B_TO_B_SIZE, GL_R32UI, GL_TEXTURE27, GL_RG16I, GL_MAX_TEXTURE_BUFFER_SIZE, GL_SIGNED_NORMALIZED, GL_VENDOR, GL_DEPTH_TEST, GL_TEXTURE_RED_SIZE, GL_TEXTURE_FILTER_CONTROL, GL_TEXTURE_BORDER, GL_TEXTURE_COORD_ARRAY_TYPE, GL_UNSIGNED_BYTE, GL_TRANSPOSE_MODELVIEW_MATRIX, GL_UPPER_LEFT, GL_MAX_PROGRAM_TEXEL_OFFSET, GL_TEXTURE_BIT, GL_STREAM_COPY, GL_MAP_FLUSH_EXPLICIT_BIT, GL_RGB9_E5, GL_RGB5_A1, GL_AUX1, GL_DEPTH_COMPONENT32F, GL_FLOAT_32_UNSIGNED_INT_24_8_REV, GL_TRANSFORM_FEEDBACK_BUFFER_MODE, GL_BLUE_BITS, GL_LOAD, GL_BUFFER_ACCESS_FLAGS, GL_COLOR_LOGIC_OP, GL_MINOR_VERSION, GL_COLOR_ATTACHMENT2, GL_HINT_BIT, GL_TRANSPOSE_PROJECTION_MATRIX, GL_DRAW_BUFFER14, GL_FLOAT, GL_SPHERE_MAP, GL_COLOR_INDEX, GL_MAJOR_VERSION, GL_INTENSITY16, GL_INT_SAMPLER_1D, GL_SOURCE1_RGB, GL_SCISSOR_BOX, GL_MAX_3D_TEXTURE_SIZE, GL_CONDITION_SATISFIED, GL_TEXTURE_BUFFER_DATA_STORE_BINDING, GL_COPY_WRITE_BUFFER, GL_EDGE_FLAG_ARRAY_STRIDE, GL_UNSIGNED_INT_SAMPLER_1D, GL_PIXEL_MAP_I_TO_R_SIZE, GL_R8_SNORM, GL_LEFT, GL_INT_SAMPLER_2D_MULTISAMPLE, GL_PIXEL_MAP_I_TO_A_SIZE, GL_CLIP_PLANE4, GL_TEXTURE_MAG_FILTER, GL_UNPACK_SKIP_PIXELS, GL_TEXTURE_LOD_BIAS, GL_COLOR_BUFFER_BIT, GL_RGBA2, GL_SAMPLE_MASK_VALUE, GL_MAX_ATTRIB_STACK_DEPTH, GL_SMOOTH_LINE_WIDTH_RANGE, GL_SAMPLER_BINDING, GL_SOURCE2_ALPHA, GL_SRC_ALPHA, GL_REFLECTION_MAP, GL_CURRENT_VERTEX_ATTRIB, GL_FOG_COORDINATE, GL_UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER, GL_FOG_START, GL_LUMINANCE12, GL_DRAW_BUFFER12, GL_UNSIGNED_SHORT_5_5_5_1, GL_FOG_COORD_ARRAY_TYPE, GL_MULT, GL_UNSIGNED_INT_24_8, GL_MAX_GEOMETRY_UNIFORM_COMPONENTS, GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT, GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY, GL_GREEN_BITS, GL_LIGHT_MODEL_COLOR_CONTROL, GL_CURRENT_RASTER_DISTANCE, GL_MIN_PROGRAM_TEXEL_OFFSET, GL_BGRA, GL_STENCIL_WRITEMASK, GL_EYE_PLANE, GL_LINE_WIDTH_GRANULARITY, GL_STENCIL_FUNC, GL_TEXTURE_INTENSITY_TYPE, GL_MAX_RENDERBUFFER_SIZE, GL_DEPTH_CLEAR_VALUE, GL_BLUE, GL_VERTEX_ARRAY, GL_POLYGON_OFFSET_FACTOR, GL_TEXTURE10, GL_RIGHT, GL_FRAMEBUFFER_UNDEFINED, GL_FOG_COORDINATE_ARRAY_POINTER, GL_R8UI, GL_MAP1_NORMAL, GL_TEXTURE28, GL_FRAMEBUFFER_ATTACHMENT_BLUE_SIZE, GL_TEXTURE_CUBE_MAP_SEAMLESS, GL_FRONT_FACE, GL_PRIMITIVES_GENERATED, GL_RGBA12, GL_R16, GL_SAMPLER_2D_SHADOW, GL_MAX_DEPTH_TEXTURE_SAMPLES, GL_PRIMITIVE_RESTART_INDEX, GL_INVALID_OPERATION, GL_MAX_TEXTURE_LOD_BIAS, GL_TEXTURE_GEN_T, GL_RENDERBUFFER_STENCIL_SIZE, GL_POLYGON_MODE, GL_MAP1_TEXTURE_COORD_4, GL_LOGIC_OP_MODE, GL_DRAW_BUFFER9, GL_SAMPLER_2D_RECT_SHADOW, GL_LINE_WIDTH, GL_INTENSITY4, GL_TRANSFORM_FEEDBACK_VARYINGS, GL_COLOR_ATTACHMENT7, GL_RENDERBUFFER_BINDING, GL_SOURCE1_ALPHA, GL_EDGE_FLAG_ARRAY_BUFFER_BINDING, GL_STATIC_READ, GL_POLYGON, GL_PASS_THROUGH_TOKEN, GL_LIGHTING_BIT, GL_LINE_BIT, GL_POLYGON_STIPPLE, GL_ALPHA8, GL_FRONT, GL_COMPRESSED_RG_RGTC2, GL_TEXTURE24, GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING, GL_FLOAT_MAT3, GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS, GL_POINT_FADE_THRESHOLD_SIZE, GL_FRAMEBUFFER_DEFAULT, GL_MAX_NAME_STACK_DEPTH, GL_COLOR_ARRAY, GL_CURRENT_PROGRAM, GL_COMPRESSED_SIGNED_RG_RGTC2, GL_DRAW_BUFFER4, GL_FRONT_LEFT, GL_TEXTURE_CUBE_MAP_POSITIVE_Y, GL_VERTEX_ATTRIB_ARRAY_TYPE, GL_CLIENT_ACTIVE_TEXTURE, GL_SAMPLER_2D_ARRAY_SHADOW, GL_RG32UI, GL_X2_BYTES, GL_FEEDBACK_BUFFER_TYPE, GL_RGBA16F, GL_COPY_READ_BUFFER, GL_CONSTANT_ATTENUATION, GL_DRAW_BUFFER15, GL_RG16_SNORM, GL_RGB8_SNORM, GL_GEOMETRY_SHADER, GL_LUMINANCE_ALPHA, GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING, GL_TRIANGLES_ADJACENCY, GL_SAMPLER_CUBE, GL_COLOR_ATTACHMENT0, GL_FLAT, GL_FIRST_VERTEX_CONVENTION, GL_SLUMINANCE8_ALPHA8, GL_SYNC_FLAGS, GL_SAMPLER_1D_SHADOW, GL_BGR_INTEGER, GL_FLOAT_MAT2x4, GL_GEOMETRY_INPUT_TYPE, GL_R8I, GL_TRANSFORM_FEEDBACK_BUFFER, GL_COPY_INVERTED, GL_LIST_MODE, GL_FOG_END, GL_MODELVIEW_STACK_DEPTH, GL_NORMAL_ARRAY_TYPE, GL_UNIFORM_BUFFER_SIZE, GL_LINK_STATUS, GL_STENCIL_INDEX4, GL_COMPRESSED_SLUMINANCE_ALPHA, GL_RGB_SNORM, GL_INT_VEC3, GL_TEXTURE_RECTANGLE, GL_TEXTURE_BINDING_2D_MULTISAMPLE, GL_NEAREST_MIPMAP_NEAREST, GL_DRAW_FRAMEBUFFER, GL_TEXTURE_BLUE_TYPE, GL_DOUBLEBUFFER, GL_FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE, GL_LINE_STRIP_ADJACENCY, GL_TRIANGLE_STRIP, GL_MODELVIEW_MATRIX, GL_CONTEXT_FLAG_FORWARD_COMPATIBLE_BIT, GL_RGBA_SNORM, GL_ALIASED_POINT_SIZE_RANGE, GL_TEXTURE13, GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY, GL_TEXTURE_BASE_LEVEL, GL_RGB16I, GL_TEXTURE_MIN_LOD, GL_INDEX_OFFSET, GL_SAMPLE_COVERAGE_INVERT, GL_FOG_INDEX, GL_BOOL_VEC3, GL_TEXTURE_BINDING_CUBE_MAP, GL_VERTEX_ARRAY_POINTER, GL_UNSIGNED_INT_SAMPLER_CUBE, GL_COMPRESSED_RED_RGTC1, GL_INDEX, GL_DRAW_BUFFER11, GL_GREEN_INTEGER, GL_INT, GL_TRIANGLES, GL_ALIASED_LINE_WIDTH_RANGE, GL_DEPTH_STENCIL, GL_MAP_INVALIDATE_RANGE_BIT, GL_DECR_WRAP, GL_NAND, GL_SEPARATE_SPECULAR_COLOR, GL_SAMPLER_1D_ARRAY_SHADOW, GL_BLEND_DST_ALPHA, GL_SELECTION_BUFFER_SIZE, GL_RENDERBUFFER, GL_RGB10, GL_ACCUM_BLUE_BITS, GL_TEXTURE30, GL_VERTEX_ATTRIB_ARRAY_NORMALIZED, GL_RENDERBUFFER_BLUE_SIZE, GL_TEXTURE_BORDER_COLOR, GL_ALPHA16, GL_ARRAY_BUFFER_BINDING, GL_VERTEX_ATTRIB_ARRAY_SIZE, GL_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH, GL_LINE_STIPPLE_PATTERN, GL_STENCIL_ATTACHMENT, GL_ACCUM_ALPHA_BITS, GL_CLIP_PLANE3, GL_DEPTH24_STENCIL8, GL_PIXEL_UNPACK_BUFFER_BINDING, GL_RG16F, GL_TEXTURE_INTERNAL_FORMAT, GL_QUERY_BY_REGION_WAIT, GL_EDGE_FLAG, GL_INT_SAMPLER_2D_RECT, GL_FOG_COORD_SRC, GL_VERTEX_ARRAY_BUFFER_BINDING, GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER, GL_POLYGON_TOKEN, GL_X4D_COLOR_TEXTURE, GL_COLOR_ATTACHMENT5, GL_DEPTH_BIAS, GL_UNIFORM_ARRAY_STRIDE, GL_FALSE, GL_MAX_COLOR_TEXTURE_SAMPLES, GL_PROXY_TEXTURE_CUBE_MAP, GL_CONTEXT_CORE_PROFILE_BIT, GL_UNSIGNED_INT_8_8_8_8_REV, GL_STENCIL_TEST, GL_LINE_STIPPLE, GL_SECONDARY_COLOR_ARRAY_POINTER, GL_OPERAND2_RGB, GL_PERSPECTIVE_CORRECTION_HINT, GL_QUERY_RESULT_AVAILABLE, GL_LIGHT0, GL_STENCIL_BACK_WRITEMASK, GL_R, GL_MAX_VARYING_FLOATS, GL_RGBA4, GL_TEXTURE_BINDING_BUFFER, GL_RGBA_MODE, GL_TEXTURE_GREEN_TYPE, GL_TRANSFORM_BIT, GL_LOGIC_OP, GL_ADD, GL_PACK_SWAP_BYTES, GL_LINE_SMOOTH, GL_ALREADY_SIGNALED, GL_RED_SCALE, GL_STACK_OVERFLOW, GL_DEPTH_COMPONENT16, GL_SHADING_LANGUAGE_VERSION, GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS, GL_COLOR_MATERIAL_FACE, GL_TEXTURE_HEIGHT, GL_PIXEL_MAP_R_TO_R_SIZE, GL_EXTENSIONS, GL_LUMINANCE6_ALPHA2, GL_VERTEX_ATTRIB_ARRAY_STRIDE, GL_TEXTURE_SWIZZLE_R, GL_TEXTURE15, GL_ORDER, GL_PIXEL_MAP_I_TO_I_SIZE, GL_DRAW_BUFFER8, GL_PIXEL_MAP_I_TO_A
