#function bodies
@createOpenGLFun glGetNamedFramebufferParameterivEXT(framebuffer::GLuint, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glDrawElementsInstancedBaseVertexBaseInstance(mode::GLenum, count::GLsizei, type_::GLenum, indices::Ptr{Void}, instancecount::GLsizei, basevertex::GLint, baseinstance::GLuint)::Void
@createOpenGLFun glReadBuffer(mode::GLenum)::Void
@createOpenGLFun glBindBufferBase(target::GLenum, index::GLuint, buffer::GLuint)::Void
@createOpenGLFun glClientWaitSync(sync::GLsync, flags::GLbitfield, timeout::GLuClonglong)::Cint
@createOpenGLFun glGetIntegeri_v(target::GLenum, index::GLuint, data::Ptr{GLint})::Void
@createOpenGLFun glTexCoordP2ui(type_::GLenum, coords::GLuint)::Void
@createOpenGLFun glTexParameterIiv(target::GLenum, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glVertexAttribI2iv(index::GLuint, v::Ptr{GLint})::Void
@createOpenGLFun glProgramUniformMatrix4fv(program::GLuint, location::GLint, count::GLsizei, transpose::GLboolean, value::Ptr{GLfloat})::Void
@createOpenGLFun glSamplerParameteri(sampler::GLuint, pname::GLenum, param::GLint)::Void
@createOpenGLFun glStencilFuncSeparate(face::GLenum, func_::GLenum, ref::GLint, mask::GLuint)::Void
@createOpenGLFun glResumeTransformFeedback()::Void
@createOpenGLFun glProgramUniform1fv(program::GLuint, location::GLint, count::GLsizei, value::Ptr{GLfloat})::Void
@createOpenGLFun glProgramUniform3uiv(program::GLuint, location::GLint, count::GLsizei, value::Ptr{GLuint})::Void
@createOpenGLFun glUniform1d(location::GLint, x::GLdouble)::Void
@createOpenGLFun glUniformMatrix2x4dv(location::GLint, count::GLsizei, transpose::GLboolean, value::Ptr{GLdouble})::Void
@createOpenGLFun glFinish()::Void
@createOpenGLFun glProgramUniformMatrix2x3fv(program::GLuint, location::GLint, count::GLsizei, transpose::GLboolean, value::Ptr{GLfloat})::Void
@createOpenGLFun glClear(mask::GLbitfield)::Void
@createOpenGLFun glBindTransformFeedback(target::GLenum, id::GLuint)::Void
@createOpenGLFun glShaderSource(shader::GLuint, count::GLsizei, string_::Ptr{Uint8}, length::Ptr{GLint})::Void
@createOpenGLFun glUniform2iv(location::GLint, count::GLsizei, value::Ptr{GLint})::Void
@createOpenGLFun glBindTexture(target::GLenum, texture::GLuint)::Void
@createOpenGLFun glDrawElementsIndirect(mode::GLenum, type_::GLenum, indirect::Ptr{Void})::Void
@createOpenGLFun glUniformMatrix3dv(location::GLint, count::GLsizei, transpose::GLboolean, value::Ptr{GLdouble})::Void
@createOpenGLFun glGetSamplerParameterIiv(sampler::GLuint, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glGetPointerv(pname::GLenum, params::Ptr{Ptr{Void}})::Void
@createOpenGLFun glReleaseShaderCompiler()::Void
@createOpenGLFun glGetQueryObjectui64v(id::GLuint, pname::GLenum, params::Ptr{GLuint64})::Void
@createOpenGLFun glVertexAttribDivisor(index::GLuint, divisor::GLuint)::Void
@createOpenGLFun glVertexAttribP4ui(index::GLuint, type_::GLenum, normalized::GLboolean, value::GLuint)::Void
@createOpenGLFun glDeleteProgram(program::GLuint)::Void
@createOpenGLFun glSamplerParameterIuiv(sampler::GLuint, pname::GLenum, param::Ptr{GLuint})::Void
@createOpenGLFun glGetProgramiv(program::GLuint, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glUniform3dv(location::GLint, count::GLsizei, value::Ptr{GLdouble})::Void
@createOpenGLFun glProgramUniform4fv(program::GLuint, location::GLint, count::GLsizei, value::Ptr{GLfloat})::Void
@createOpenGLFun glDrawTransformFeedbackInstanced(mode::GLenum, id::GLuint, instancecount::GLsizei)::Void
@createOpenGLFun glScissorArrayv(first::GLuint, count::GLsizei, v::Ptr{GLint})::Void
@createOpenGLFun glGenerateMipmap(target::GLenum)::Void
@createOpenGLFun glProgramUniform2dv(program::GLuint, location::GLint, count::GLsizei, value::Ptr{GLdouble})::Void
@createOpenGLFun glUniform4d(location::GLint, x::GLdouble, y::GLdouble, z::GLdouble, w::GLdouble)::Void
@createOpenGLFun glDeleteRenderbuffers(n::GLsizei, renderbuffers::Ptr{GLuint})::Void
@createOpenGLFun glPopDebugGroup()::Void
@createOpenGLFun glGetShaderSource(shader::GLuint, bufSize::GLsizei, length::Ptr{GLsizei}, source::Ptr{GLchar})::Void
@createOpenGLFun glIsBuffer(buffer::GLuint)::Bool
@createOpenGLFun glGetAttachedShaders(program::GLuint, maxCount::GLsizei, count::Ptr{GLsizei}, obj::Ptr{GLuint})::Void
@createOpenGLFun glVertexAttribI1uiv(index::GLuint, v::Ptr{GLuint})::Void
@createOpenGLFun glMultiTexCoordP1ui(texture::GLenum, type_::GLenum, coords::GLuint)::Void
@createOpenGLFun glTextureView(texture::GLuint, target::GLenum, origtexture::GLuint, internalformat::GLenum, minlevel::GLuint, numlevels::GLuint, minlayer::GLuint, numlayers::GLuint)::Void
@createOpenGLFun glProgramUniform4uiv(program::GLuint, location::GLint, count::GLsizei, value::Ptr{GLuint})::Void
@createOpenGLFun glSecondaryColorP3uiv(type_::GLenum, color::Ptr{GLuint})::Void
@createOpenGLFun glQueryCounter(id::GLuint, target::GLenum)::Void
@createOpenGLFun glTexStorage3DMultisample(target::GLenum, samples::GLsizei, internalformat::GLenum, width::GLsizei, height::GLsizei, depth::GLsizei, fixedsamplelocations::GLboolean)::Void
@createOpenGLFun glDrawArraysIndirect(mode::GLenum, indirect::Ptr{Void})::Void
@createOpenGLFun glUniform4ui(location::GLint, v0::GLuint, v1::GLuint, v2::GLuint, v3::GLuint)::Void
@createOpenGLFun glProgramUniform4f(program::GLuint, location::GLint, v0::GLfloat, v1::GLfloat, v2::GLfloat, v3::GLfloat)::Void
@createOpenGLFun glCompressedTexSubImage1D(target::GLenum, level::GLint, xoffset::GLint, width::GLsizei, format::GLenum, imageSize::GLsizei, data::Ptr{Void})::Void
@createOpenGLFun glProgramUniformMatrix2dv(program::GLuint, location::GLint, count::GLsizei, transpose::GLboolean, value::Ptr{GLdouble})::Void
@createOpenGLFun glTexParameterf(target::GLenum, pname::GLenum, param::GLfloat)::Void
@createOpenGLFun glShaderBinary(count::GLsizei, shaders::Ptr{GLuint}, binaryformat::GLenum, binary::Ptr{Void}, length::GLsizei)::Void
@createOpenGLFun glPauseTransformFeedback()::Void
@createOpenGLFun glMultiDrawElements(mode::GLenum, count::Ptr{GLsizei}, type_::GLenum, indices::Ptr{Ptr{Void}}, drawcount::GLsizei)::Void
@createOpenGLFun glGetBufferPointerv(target::GLenum, pname::GLenum, params::Ptr{Ptr{Void}})::Void
@createOpenGLFun glVertexAttribP4uiv(index::GLuint, type_::GLenum, normalized::GLboolean, value::Ptr{GLuint})::Void
@createOpenGLFun glVertexArrayVertexAttribIFormatEXT(vaobj::GLuint, attribindex::GLuint, size::GLint, type_::GLenum, relativeoffset::GLuint)::Void
@createOpenGLFun glEndConditionalRender()::Void
@createOpenGLFun glFlush()::Void
@createOpenGLFun glBlendFuncSeparatei(buf::GLuint, srcRGB::GLenum, dstRGB::GLenum, srcAlpha::GLenum, dstAlpha::GLenum)::Void
@createOpenGLFun glProgramUniform1dv(program::GLuint, location::GLint, count::GLsizei, value::Ptr{GLdouble})::Void
@createOpenGLFun glProgramUniform2ui(program::GLuint, location::GLint, v0::GLuint, v1::GLuint)::Void
@createOpenGLFun glActiveTexture(texture::GLenum)::Void
@createOpenGLFun glSecondaryColorP3ui(type_::GLenum, color::GLuint)::Void
@createOpenGLFun glProgramUniformMatrix3dv(program::GLuint, location::GLint, count::GLsizei, transpose::GLboolean, value::Ptr{GLdouble})::Void
@createOpenGLFun glBlendEquationi(buf::GLuint, mode::GLenum)::Void
@createOpenGLFun glPolygonOffset(factor::GLfloat, units::GLfloat)::Void
@createOpenGLFun glDetachShader(program::GLuint, shader::GLuint)::Void
@createOpenGLFun glUniform4uiv(location::GLint, count::GLsizei, value::Ptr{GLuint})::Void
@createOpenGLFun glTexParameteriv(target::GLenum, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glGetIntegerv(pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glEnable(cap::GLenum)::Void
@createOpenGLFun glClearBufferData(target::GLenum, internalformat::GLenum, format::GLenum, type_::GLenum, data::Ptr{Void})::Void
@createOpenGLFun glMapBufferRange(target::GLenum, offset::GLintptr, length::GLsizeiptr, access::GLbitfield)::Ptr{Void}
@createOpenGLFun glTexCoordP4uiv(type_::GLenum, coords::Ptr{GLuint})::Void
@createOpenGLFun glDepthRangeArrayv(first::GLuint, count::GLsizei, v::Ptr{GLdouble})::Void
@createOpenGLFun glGetCompressedTexImage(target::GLenum, level::GLint, img::Ptr{Void})::Void
@createOpenGLFun glProgramUniformMatrix4x2fv(program::GLuint, location::GLint, count::GLsizei, transpose::GLboolean, value::Ptr{GLfloat})::Void
@createOpenGLFun glIsTransformFeedback(id::GLuint)::Bool
@createOpenGLFun glMultiTexCoordP1uiv(texture::GLenum, type_::GLenum, coords::Ptr{GLuint})::Void
@createOpenGLFun glSamplerParameterIiv(sampler::GLuint, pname::GLenum, param::Ptr{GLint})::Void
@createOpenGLFun glProgramUniform2i(program::GLuint, location::GLint, v0::GLint, v1::GLint)::Void
@createOpenGLFun glUniform4dv(location::GLint, count::GLsizei, value::Ptr{GLdouble})::Void
@createOpenGLFun glGetDoublev(pname::GLenum, params::Ptr{GLdouble})::Void
@createOpenGLFun glTexCoordP1uiv(type_::GLenum, coords::Ptr{GLuint})::Void
@createOpenGLFun glProgramUniform1f(program::GLuint, location::GLint, v0::GLfloat)::Void
@createOpenGLFun glTexParameterIuiv(target::GLenum, pname::GLenum, params::Ptr{GLuint})::Void
@createOpenGLFun glUniformMatrix2x3dv(location::GLint, count::GLsizei, transpose::GLboolean, value::Ptr{GLdouble})::Void
@createOpenGLFun glPixelStorei(pname::GLenum, param::GLint)::Void
@createOpenGLFun glUniform3ui(location::GLint, v0::GLuint, v1::GLuint, v2::GLuint)::Void
@createOpenGLFun glGetTexParameterIuiv(target::GLenum, pname::GLenum, params::Ptr{GLuint})::Void
@createOpenGLFun glGetShaderiv(shader::GLuint, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glTexCoordP4ui(type_::GLenum, coords::GLuint)::Void
@createOpenGLFun glPointParameteri(pname::GLenum, param::GLint)::Void
@createOpenGLFun glTextureStorage1DEXT(texture::GLuint, target::GLenum, levels::GLsizei, internalformat::GLenum, width::GLsizei)::Void
@createOpenGLFun glEnablei(target::GLenum, index::GLuint)::Void
@createOpenGLFun glTexCoordP3uiv(type_::GLenum, coords::Ptr{GLuint})::Void
@createOpenGLFun glGetRenderbufferParameteriv(target::GLenum, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glVertexAttribI4sv(index::GLuint, v::Ptr{GLshort})::Void
@createOpenGLFun glGetActiveSubroutineName(program::GLuint, shadertype::GLenum, index::GLuint, bufsize::GLsizei, length::Ptr{GLsizei}, name::Ptr{GLchar})::Void
@createOpenGLFun glCompileShader(shader::GLuint)::Void
@createOpenGLFun glLinkProgram(program::GLuint)::Void
@createOpenGLFun glReadPixels(x::GLint, y::GLint, width::GLsizei, height::GLsizei, format::GLenum, type_::GLenum, pixels::Ptr{Void})::Void
@createOpenGLFun glCreateShaderProgramv(type_::GLenum, count::GLsizei, strings::Ptr{Cuchar})::Cuint
@createOpenGLFun glBufferData(target::GLenum, size::GLsizeiptr, data::Ptr{Void}, usage::GLenum)::Void
@createOpenGLFun glPointParameteriv(pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glUniform2fv(location::GLint, count::GLsizei, value::Ptr{GLfloat})::Void
@createOpenGLFun glDrawTransformFeedbackStream(mode::GLenum, id::GLuint, stream::GLuint)::Void
@createOpenGLFun glUniform2dv(location::GLint, count::GLsizei, value::Ptr{GLdouble})::Void
@createOpenGLFun glTexSubImage1D(target::GLenum, level::GLint, xoffset::GLint, width::GLsizei, format::GLenum, type_::GLenum, pixels::Ptr{Void})::Void
@createOpenGLFun glDispatchCompute(num_groups_x::GLuint, num_groups_y::GLuint, num_groups_z::GLuint)::Void
@createOpenGLFun glGetBufferSubData(target::GLenum, offset::GLintptr, size::GLsizeiptr, data::Ptr{Void})::Void
@createOpenGLFun glVertexP2uiv(type_::GLenum, value::Ptr{GLuint})::Void
@createOpenGLFun glUniform4fv(location::GLint, count::GLsizei, value::Ptr{GLfloat})::Void
@createOpenGLFun glGetProgramResourceLocation(program::GLuint, programCinterface::GLenum, name::Ptr{GLchar})::Cint
@createOpenGLFun glVertexArrayVertexAttribLFormatEXT(vaobj::GLuint, attribindex::GLuint, size::GLint, type_::GLenum, relativeoffset::GLuint)::Void
@createOpenGLFun glGetUniformuiv(program::GLuint, location::GLint, params::Ptr{GLuint})::Void
@createOpenGLFun glBindImageTexture(unit::GLuint, texture::GLuint, level::GLint, layered::GLboolean, layer::GLint, access::GLenum, format::GLenum)::Void
@createOpenGLFun glVertexAttribL4dv(index::GLuint, v::Ptr{GLdouble})::Void
@createOpenGLFun glColorP4ui(type_::GLenum, color::GLuint)::Void
@createOpenGLFun glUniform2f(location::GLint, v0::GLfloat, v1::GLfloat)::Void
@createOpenGLFun glColorP4uiv(type_::GLenum, color::Ptr{GLuint})::Void
@createOpenGLFun glVertexAttribIPointer(index::GLuint, size::GLint, type_::GLenum, stride::GLsizei, pointer::Ptr{Void})::Void
@createOpenGLFun glGetProgramPipelineiv(pipeline::GLuint, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glMultiTexCoordP3uiv(texture::GLenum, type_::GLenum, coords::Ptr{GLuint})::Void
@createOpenGLFun glGetProgramResourceName(program::GLuint, programInterface::GLenum, index::GLuint, bufSize::GLsizei, length::Ptr{GLsizei}, name::Ptr{GLchar})::Void
@createOpenGLFun glVertexP4ui(type_::GLenum, value::GLuint)::Void
@createOpenGLFun glFrontFace(mode::GLenum)::Void
@createOpenGLFun glProgramUniform4i(program::GLuint, location::GLint, v0::GLint, v1::GLint, v2::GLint, v3::GLint)::Void
@createOpenGLFun glPointParameterfv(pname::GLenum, params::Ptr{GLfloat})::Void
@createOpenGLFun glShaderStorageBlockBinding(program::GLuint, storageBlockIndex::GLuint, storageBlockBinding::GLuint)::Void
@createOpenGLFun glClearStencil(s::GLint)::Void
@createOpenGLFun glBlendEquation(mode::GLenum)::Void
@createOpenGLFun glIsProgramPipeline(pipeline::GLuint)::Bool
@createOpenGLFun glUniform3f(location::GLint, v0::GLfloat, v1::GLfloat, v2::GLfloat)::Void
@createOpenGLFun glVertexAttribI4usv(index::GLuint, v::Ptr{GLushort})::Void
@createOpenGLFun glFramebufferParameteri(target::GLenum, pname::GLenum, param::GLint)::Void
@createOpenGLFun glGenSamplers(count::GLsizei, samplers::Ptr{GLuint})::Void
@createOpenGLFun glUniformMatrix4fv(location::GLint, count::GLsizei, transpose::GLboolean, value::Ptr{GLfloat})::Void
@createOpenGLFun glBlendColor(red::GLfloat, green::GLfloat, blue::GLfloat, alpha::GLfloat)::Void
@createOpenGLFun glInvalidateTexImage(texture::GLuint, level::GLint)::Void
@createOpenGLFun glGetSubroutineIndex(program::GLuint, shadertype::GLenum, name::Ptr{GLchar})::Cuint
@createOpenGLFun glVertexAttribL3dv(index::GLuint, v::Ptr{GLdouble})::Void
@createOpenGLFun glProgramUniformMatrix2fv(program::GLuint, location::GLint, count::GLsizei, transpose::GLboolean, value::Ptr{GLfloat})::Void
@createOpenGLFun glDrawElementsInstancedBaseInstance(mode::GLenum, count::GLsizei, type_::GLenum, indices::Ptr{Void}, instancecount::GLsizei, baseinstance::GLuint)::Void
@createOpenGLFun glIndexub(c::GLubyte)::Void
@createOpenGLFun glGenRenderbuffers(n::GLsizei, renderbuffers::Ptr{GLuint})::Void
@createOpenGLFun glProgramUniform4dv(program::GLuint, location::GLint, count::GLsizei, value::Ptr{GLdouble})::Void
@createOpenGLFun glProgramUniformMatrix2x3dv(program::GLuint, location::GLint, count::GLsizei, transpose::GLboolean, value::Ptr{GLdouble})::Void
@createOpenGLFun glTexImage3D(target::GLenum, level::GLint, internalformat::GLint, width::GLsizei, height::GLsizei, depth::GLsizei, border::GLint, format::GLenum, type_::GLenum, pixels::Ptr{Void})::Void
@createOpenGLFun glGetVertexAttribfv(index::GLuint, pname::GLenum, params::Ptr{GLfloat})::Void
@createOpenGLFun glVertexAttribL4d(index::GLuint, x::GLdouble, y::GLdouble, z::GLdouble, w::GLdouble)::Void
@createOpenGLFun glBindFramebuffer(target::GLenum, framebuffer::GLuint)::Void
@createOpenGLFun glFramebufferTexture3D(target::GLenum, attachment::GLenum, textarget::GLenum, texture::GLuint, level::GLint, zoffset::GLint)::Void
@createOpenGLFun glVertexArrayVertexAttribFormatEXT(vaobj::GLuint, attribindex::GLuint, size::GLint, type_::GLenum, normalized::GLboolean, relativeoffset::GLuint)::Void
@createOpenGLFun glGetVertexAttribLdv(index::GLuint, pname::GLenum, params::Ptr{GLdouble})::Void
@createOpenGLFun glVertexAttribBinding(attribindex::GLuint, bindingindex::GLuint)::Void
@createOpenGLFun glUniformMatrix3fv(location::GLint, count::GLsizei, transpose::GLboolean, value::Ptr{GLfloat})::Void
@createOpenGLFun glUniformMatrix4dv(location::GLint, count::GLsizei, transpose::GLboolean, value::Ptr{GLdouble})::Void
@createOpenGLFun glProgramUniformMatrix4x3dv(program::GLuint, location::GLint, count::GLsizei, transpose::GLboolean, value::Ptr{GLdouble})::Void
@createOpenGLFun glProgramUniformMatrix3x4fv(program::GLuint, location::GLint, count::GLsizei, transpose::GLboolean, value::Ptr{GLfloat})::Void
@createOpenGLFun glGetDebugMessageLog(count::GLuint, bufsize::GLsizei, sources::Ptr{GLenum}, types::Ptr{GLenum}, ids::Ptr{GLuint}, severities::Ptr{GLenum}, lengths::Ptr{GLsizei}, messageLog::Ptr{GLchar})::Cuint
@createOpenGLFun glGetVertexAttribiv(index::GLuint, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glDebugMessageInsert(source::GLenum, type_::GLenum, id::GLuint, severity::GLenum, length::GLsizei, buf::Ptr{GLchar})::Void
@createOpenGLFun glNormalP3ui(type_::GLenum, coords::GLuint)::Void
@createOpenGLFun glDrawArraysInstanced(mode::GLenum, first::GLint, count::GLsizei, instancecount::GLsizei)::Void
@createOpenGLFun glCompressedTexImage2D(target::GLenum, level::GLint, internalformat::GLenum, width::GLsizei, height::GLsizei, border::GLint, imageSize::GLsizei, data::Ptr{Void})::Void
@createOpenGLFun glPushDebugGroup(source::GLenum, id::GLuint, length::GLsizei, message::Ptr{GLchar})::Void
@createOpenGLFun glGetUniformBlockIndex(program::GLuint, uniformBlockName::Ptr{GLchar})::Cuint
@createOpenGLFun glInvalidateFramebuffer(target::GLenum, numAttachments::GLsizei, attachments::Ptr{GLenum})::Void
@createOpenGLFun glVertexAttribP2uiv(index::GLuint, type_::GLenum, normalized::GLboolean, value::Ptr{GLuint})::Void
@createOpenGLFun glIsEnabledi(target::GLenum, index::GLuint)::Bool
@createOpenGLFun glVertexAttribP2ui(index::GLuint, type_::GLenum, normalized::GLboolean, value::GLuint)::Void
@createOpenGLFun glDrawArrays(mode::GLenum, first::GLint, count::GLsizei)::Void
@createOpenGLFun glGetActiveAttrib(program::GLuint, index::GLuint, bufSize::GLsizei, length::Ptr{GLsizei}, size::Ptr{GLint}, type_::Ptr{GLenum}, name::Ptr{GLchar})::Void
@createOpenGLFun glCopyTexImage1D(target::GLenum, level::GLint, internalformat::GLenum, x::GLint, y::GLint, width::GLsizei, border::GLint)::Void
@createOpenGLFun glProgramUniform2f(program::GLuint, location::GLint, v0::GLfloat, v1::GLfloat)::Void
@createOpenGLFun glCopyImageSubData(srcName::GLuint, srcTarget::GLenum, srcLevel::GLint, srcX::GLint, srcY::GLint, srcZ::GLint, dstName::GLuint, dstTarget::GLenum, dstLevel::GLint, dstX::GLint, dstY::GLint, dstZ::GLint, srcWidth::GLsizei, srcHeight::GLsizei, srcDepth::GLsizei)::Void
@createOpenGLFun glGetError()::Cint
@createOpenGLFun glNormalP3uiv(type_::GLenum, coords::Ptr{GLuint})::Void
@createOpenGLFun glTexStorage2D(target::GLenum, levels::GLsizei, internalformat::GLenum, width::GLsizei, height::GLsizei)::Void
@createOpenGLFun glProgramUniformMatrix4x3fv(program::GLuint, location::GLint, count::GLsizei, transpose::GLboolean, value::Ptr{GLfloat})::Void
@createOpenGLFun glDrawRangeElementsBaseVertex(mode::GLenum, start::GLuint, END::GLuint, count::GLsizei, type_::GLenum, indices::Ptr{Void}, basevertex::GLint)::Void
@createOpenGLFun glGenProgramPipelines(n::GLsizei, pipelines::Ptr{GLuint})::Void
@createOpenGLFun glVertexAttribI4uiv(index::GLuint, v::Ptr{GLuint})::Void
@createOpenGLFun glActiveShaderProgram(pipeline::GLuint, program::GLuint)::Void
@createOpenGLFun glGetInteger64v(pname::GLenum, params::Ptr{GLint64})::Void
@createOpenGLFun glPrimitiveRestartIndex(index::GLuint)::Void
@createOpenGLFun glDeleteShader(shader::GLuint)::Void
@createOpenGLFun glGenBuffers(n::GLsizei, buffers::Ptr{GLuint})::Void
@createOpenGLFun glTexParameterfv(target::GLenum, pname::GLenum, params::Ptr{GLfloat})::Void
@createOpenGLFun glGetSamplerParameteriv(sampler::GLuint, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glProgramUniform3d(program::GLuint, location::GLint, v0::GLdouble, v1::GLdouble, v2::GLdouble)::Void
@createOpenGLFun glVertexAttribI1iv(index::GLuint, v::Ptr{GLint})::Void
@createOpenGLFun glUniform2uiv(location::GLint, count::GLsizei, value::Ptr{GLuint})::Void
@createOpenGLFun glUniform1i(location::GLint, v0::GLint)::Void
@createOpenGLFun glUniform3uiv(location::GLint, count::GLsizei, value::Ptr{GLuint})::Void
@createOpenGLFun glProgramUniform1uiv(program::GLuint, location::GLint, count::GLsizei, value::Ptr{GLuint})::Void
@createOpenGLFun glUniform1iv(location::GLint, count::GLsizei, value::Ptr{GLint})::Void
@createOpenGLFun glUniform1fv(location::GLint, count::GLsizei, value::Ptr{GLfloat})::Void
@createOpenGLFun glScissorIndexedv(index::GLuint, v::Ptr{GLint})::Void
@createOpenGLFun glIsTexture(texture::GLuint)::Bool
@createOpenGLFun glDrawArraysInstancedBaseInstance(mode::GLenum, first::GLint, count::GLsizei, instancecount::GLsizei, baseinstance::GLuint)::Void
@createOpenGLFun glVertexAttribI1i(index::GLuint, x::GLint)::Void
@createOpenGLFun glVertexAttribI3ui(index::GLuint, x::GLuint, y::GLuint, z::GLuint)::Void
@createOpenGLFun glGetActiveUniformBlockiv(program::GLuint, uniformBlockIndex::GLuint, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glVertexAttribI3i(index::GLuint, x::GLint, y::GLint, z::GLint)::Void
@createOpenGLFun glBlendFunci(buf::GLuint, src::GLenum, dst::GLenum)::Void
@createOpenGLFun glGetVertexAttribdv(index::GLuint, pname::GLenum, params::Ptr{GLdouble})::Void
@createOpenGLFun glBlendEquationSeparate(modeRGB::GLenum, modeAlpha::GLenum)::Void
@createOpenGLFun glFenceSync(condition::GLenum, flags::GLbitfield)::Sync
@createOpenGLFun glSamplerParameterfv(sampler::GLuint, pname::GLenum, param::Ptr{GLfloat})::Void
@createOpenGLFun glIsShader(shader::GLuint)::Bool
@createOpenGLFun glProgramUniform3f(program::GLuint, location::GLint, v0::GLfloat, v1::GLfloat, v2::GLfloat)::Void
@createOpenGLFun glUniformMatrix4x3fv(location::GLint, count::GLsizei, transpose::GLboolean, value::Ptr{GLfloat})::Void
@createOpenGLFun glGetQueryObjectuiv(id::GLuint, pname::GLenum, params::Ptr{GLuint})::Void
@createOpenGLFun glPointParameterf(pname::GLenum, param::GLfloat)::Void
@createOpenGLFun glIndexubv(c::Ptr{GLubyte})::Void
@createOpenGLFun glClearBufferiv(buffer::GLenum, drawbuffer::GLint, value::Ptr{GLint})::Void
@createOpenGLFun glBindVertexArray(array::GLuint)::Void
@createOpenGLFun glGetInternalformati64v(target::GLenum, internalformat::GLenum, pname::GLenum, bufSize::GLsizei, params::Ptr{GLint64})::Void
@createOpenGLFun glVertexP4uiv(type_::GLenum, value::Ptr{GLuint})::Void
@createOpenGLFun glVertexAttribI2uiv(index::GLuint, v::Ptr{GLuint})::Void
@createOpenGLFun glGetProgramResourceiv(program::GLuint, programInterface::GLenum, index::GLuint, propCount::GLsizei, props::Ptr{GLenum}, bufSize::GLsizei, length::Ptr{GLsizei}, params::Ptr{GLint})::Void
@createOpenGLFun glViewport(x::GLint, y::GLint, width::GLsizei, height::GLsizei)::Void
@createOpenGLFun glTexImage1D(target::GLenum, level::GLint, internalformat::GLint, width::GLsizei, border::GLint, format::GLenum, type_::GLenum, pixels::Ptr{Void})::Void
@createOpenGLFun glUniform1uiv(location::GLint, count::GLsizei, value::Ptr{GLuint})::Void
@createOpenGLFun glProgramUniform4ui(program::GLuint, location::GLint, v0::GLuint, v1::GLuint, v2::GLuint, v3::GLuint)::Void
@createOpenGLFun glUniform1f(location::GLint, v0::GLfloat)::Void
@createOpenGLFun glVertexAttribP3uiv(index::GLuint, type_::GLenum, normalized::GLboolean, value::Ptr{GLuint})::Void
@createOpenGLFun glBeginQuery(target::GLenum, id::GLuint)::Void
@createOpenGLFun glMultiDrawArrays(mode::GLenum, first::Ptr{GLint}, count::Ptr{GLsizei}, drawcount::GLsizei)::Void
@createOpenGLFun glDrawBuffer(mode::GLenum)::Void
@createOpenGLFun glLogicOp(opcode::GLenum)::Void
@createOpenGLFun glObjectLabel(identifier::GLenum, name::GLuint, length::GLsizei, label::Ptr{GLchar})::Void
@createOpenGLFun glUniformMatrix3x2dv(location::GLint, count::GLsizei, transpose::GLboolean, value::Ptr{GLdouble})::Void
@createOpenGLFun glUniform3d(location::GLint, x::GLdouble, y::GLdouble, z::GLdouble)::Void
@createOpenGLFun glDepthRangeIndexed(index::GLuint, n::GLdouble, f::GLdouble)::Void
@createOpenGLFun glGetProgramBinary(program::GLuint, bufSize::GLsizei, length::Ptr{GLsizei}, binaryFormat::Ptr{GLenum}, binary::Ptr{Void})::Void
@createOpenGLFun glPointSize(size::GLfloat)::Void
@createOpenGLFun glGetUniformfv(program::GLuint, location::GLint, params::Ptr{GLfloat})::Void
@createOpenGLFun glClearBufferfv(buffer::GLenum, drawbuffer::GLint, value::Ptr{GLfloat})::Void
@createOpenGLFun glCopyTexSubImage1D(target::GLenum, level::GLint, xoffset::GLint, x::GLint, y::GLint, width::GLsizei)::Void
@createOpenGLFun glIsEnabled(cap::GLenum)::Bool
@createOpenGLFun glCreateShader(type_::GLenum)::Cuint
@createOpenGLFun glTextureStorage2DEXT(texture::GLuint, target::GLenum, levels::GLsizei, internalformat::GLenum, width::GLsizei, height::GLsizei)::Void
@createOpenGLFun glPixelStoref(pname::GLenum, param::GLfloat)::Void
@createOpenGLFun glGetMultisamplefv(pname::GLenum, index::GLuint, val::Ptr{GLfloat})::Void
@createOpenGLFun glGetFragDataIndex(program::GLuint, name::Ptr{GLchar})::Cint
@createOpenGLFun glGetUniformIndices(program::GLuint, uniformCount::GLsizei, uniformNames::Ptr{Uint8}, uniformIndices::Ptr{GLuint})::Void
@createOpenGLFun glUniform1dv(location::GLint, count::GLsizei, value::Ptr{GLdouble})::Void
@createOpenGLFun glGetFragDataLocation(program::GLuint, name::Ptr{GLchar})::Cint
@createOpenGLFun glMultiTexCoordP2ui(texture::GLenum, type_::GLenum, coords::GLuint)::Void
@createOpenGLFun glDepthFunc(func_::GLenum)::Void
@createOpenGLFun glVertexAttribI4iv(index::GLuint, v::Ptr{GLint})::Void
@createOpenGLFun glUniformMatrix2x4fv(location::GLint, count::GLsizei, transpose::GLboolean, value::Ptr{GLfloat})::Void
@createOpenGLFun glBufferSubData(target::GLenum, offset::GLintptr, size::GLsizeiptr, data::Ptr{Void})::Void
@createOpenGLFun glUniformMatrix3x4fv(location::GLint, count::GLsizei, transpose::GLboolean, value::Ptr{GLfloat})::Void
@createOpenGLFun glBindBufferRange(target::GLenum, index::GLuint, buffer::GLuint, offset::GLintptr, size::GLsizeiptr)::Void
@createOpenGLFun glGenQueries(n::GLsizei, ids::Ptr{GLuint})::Void
@createOpenGLFun glDebugMessageCallback(callback::Ptr{Void}, userParam::Ptr{Void})::Void
@createOpenGLFun glInvalidateTexSubImage(texture::GLuint, level::GLint, xoffset::GLint, yoffset::GLint, zoffset::GLint, width::GLsizei, height::GLsizei, depth::GLsizei)::Void
@createOpenGLFun glColorP3uiv(type_::GLenum, color::Ptr{GLuint})::Void
@createOpenGLFun glTexStorage1D(target::GLenum, levels::GLsizei, internalformat::GLenum, width::GLsizei)::Void
@createOpenGLFun glBlendFunc(sfactor::GLenum, dfactor::GLenum)::Void
@createOpenGLFun glGetBooleanv(pname::GLenum, params::Ptr{GLboolean})::Void
@createOpenGLFun glUniformMatrix3x4dv(location::GLint, count::GLsizei, transpose::GLboolean, value::Ptr{GLdouble})::Void
@createOpenGLFun glGetObjectLabel(identifier::GLenum, name::GLuint, bufSize::GLsizei, length::Ptr{GLsizei}, label::Ptr{GLchar})::Void
@createOpenGLFun glSampleCoverage(value::GLfloat, invert::GLboolean)::Void
@createOpenGLFun glProgramUniformMatrix3x2fv(program::GLuint, location::GLint, count::GLsizei, transpose::GLboolean, value::Ptr{GLfloat})::Void
@createOpenGLFun glVertexAttribL2dv(index::GLuint, v::Ptr{GLdouble})::Void
@createOpenGLFun glGetFloatv(pname::GLenum, params::Ptr{GLfloat})::Void
@createOpenGLFun glProvokingVertex(mode::GLenum)::Void
@createOpenGLFun glVertexAttribL3d(index::GLuint, x::GLdouble, y::GLdouble, z::GLdouble)::Void
@createOpenGLFun glClearDepth(depth::GLdouble)::Void
@createOpenGLFun glInvalidateBufferData(buffer::GLuint)::Void
@createOpenGLFun glProgramParameteri(program::GLuint, pname::GLenum, value::GLint)::Void
@createOpenGLFun glUniformMatrix3x2fv(location::GLint, count::GLsizei, transpose::GLboolean, value::Ptr{GLfloat})::Void
@createOpenGLFun glDisable(cap::GLenum)::Void
@createOpenGLFun glMultiDrawElementsIndirect(mode::GLenum, type_::GLenum, indirect::Ptr{Void}, drawcount::GLsizei, stride::GLsizei)::Void
@createOpenGLFun glMultiDrawElementsBaseVertex(mode::GLenum, count::Ptr{GLsizei}, type_::GLenum, indices::Ptr{Ptr{Void}}, drawcount::GLsizei, basevertex::Ptr{GLint})::Void
@createOpenGLFun glFlushMappedBufferRange(target::GLenum, offset::GLintptr, length::GLsizeiptr)::Void
@createOpenGLFun glGetUniformdv(program::GLuint, location::GLint, params::Ptr{GLdouble})::Void
@createOpenGLFun glGetProgramInterfaceiv(program::GLuint, programInterface::GLenum, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glTransformFeedbackVaryings(program::GLuint, count::GLsizei, varyings::Ptr{Uint8}, bufferMode::GLenum)::Void
@createOpenGLFun glGetVertexAttribIuiv(index::GLuint, pname::GLenum, params::Ptr{GLuint})::Void
@createOpenGLFun glGetShaderInfoLog(shader::GLuint, bufSize::GLsizei, length::Ptr{GLsizei}, infoLog::Ptr{GLchar})::Void
@createOpenGLFun glRenderbufferStorageMultisample(target::GLenum, samples::GLsizei, internalformat::GLenum, width::GLsizei, height::GLsizei)::Void
@createOpenGLFun glUniformMatrix2x3fv(location::GLint, count::GLsizei, transpose::GLboolean, value::Ptr{GLfloat})::Void
@createOpenGLFun glUseProgramStages(pipeline::GLuint, stages::GLbitfield, program::GLuint)::Void
@createOpenGLFun glVertexAttribLFormat(attribindex::GLuint, size::GLint, type_::GLenum, relativeoffset::GLuint)::Void
@createOpenGLFun glProgramUniform1i(program::GLuint, location::GLint, v0::GLint)::Void
@createOpenGLFun glGetFramebufferParameteriv(target::GLenum, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glDeleteProgramPipelines(n::GLsizei, pipelines::Ptr{GLuint})::Void
@createOpenGLFun glProgramUniform2fv(program::GLuint, location::GLint, count::GLsizei, value::Ptr{GLfloat})::Void
@createOpenGLFun glProgramUniform1iv(program::GLuint, location::GLint, count::GLsizei, value::Ptr{GLint})::Void
@createOpenGLFun glBindBuffer(target::GLenum, buffer::GLuint)::Void
@createOpenGLFun glGetAttribLocation(program::GLuint, name::Ptr{GLchar})::Cint
@createOpenGLFun glProgramUniform3ui(program::GLuint, location::GLint, v0::GLuint, v1::GLuint, v2::GLuint)::Void
@createOpenGLFun glTexParameteri(target::GLenum, pname::GLenum, param::GLint)::Void
@createOpenGLFun glWaitSync(sync::GLsync, flags::GLbitfield, timeout::GLuint64)::Void
@createOpenGLFun glTextureStorage3DMultisampleEXT(texture::GLuint, target::GLenum, samples::GLsizei, internalformat::GLenum, width::GLsizei, height::GLsizei, depth::GLsizei, fixedsamplelocations::GLboolean)::Void
@createOpenGLFun glIsVertexArray(array::GLuint)::Bool
@createOpenGLFun glEnableVertexAttribArray(index::GLuint)::Void
@createOpenGLFun glObjectPtrLabel(ptr::Ptr{Void}, length::GLsizei, label::Ptr{GLchar})::Void
@createOpenGLFun glProgramBinary(program::GLuint, binaryFormat::GLenum, binary::Ptr{Void}, length::GLsizei)::Void
@createOpenGLFun glCompressedTexImage1D(target::GLenum, level::GLint, internalformat::GLenum, width::GLsizei, border::GLint, imageSize::GLsizei, data::Ptr{Void})::Void
@createOpenGLFun glTexCoordP2uiv(type_::GLenum, coords::Ptr{GLuint})::Void
@createOpenGLFun glUseProgram(program::GLuint)::Void
@createOpenGLFun glProgramUniform3i(program::GLuint, location::GLint, v0::GLint, v1::GLint, v2::GLint)::Void
@createOpenGLFun glVertexAttribI2ui(index::GLuint, x::GLuint, y::GLuint)::Void
@createOpenGLFun glGetActiveSubroutineUniformiv(program::GLuint, shadertype::GLenum, index::GLuint, pname::GLenum, values::Ptr{GLint})::Void
@createOpenGLFun glDepthMask(flag::GLboolean)::Void
@createOpenGLFun glPolygonMode(face::GLenum, mode::GLenum)::Void
@createOpenGLFun glVertexAttribI3uiv(index::GLuint, v::Ptr{GLuint})::Void
@createOpenGLFun glFramebufferTexture1D(target::GLenum, attachment::GLenum, textarget::GLenum, texture::GLuint, level::GLint)::Void
@createOpenGLFun glGetActiveSubroutineUniformName(program::GLuint, shadertype::GLenum, index::GLuint, bufsize::GLsizei, length::Ptr{GLsizei}, name::Ptr{GLchar})::Void
@createOpenGLFun glGenFramebuffers(n::GLsizei, framebuffers::Ptr{GLuint})::Void
@createOpenGLFun glFramebufferTextureLayer(target::GLenum, attachment::GLenum, texture::GLuint, level::GLint, layer::GLint)::Void
@createOpenGLFun glViewportArrayv(first::GLuint, count::GLsizei, v::Ptr{GLfloat})::Void
@createOpenGLFun glDrawRangeElements(mode::GLenum, start::GLuint, END::GLuint, count::GLsizei, type_::GLenum, indices::Ptr{Void})::Void
@createOpenGLFun glCopyTexSubImage3D(target::GLenum, level::GLint, xoffset::GLint, yoffset::GLint, zoffset::GLint, x::GLint, y::GLint, width::GLsizei, height::GLsizei)::Void
@createOpenGLFun glStencilMaskSeparate(face::GLenum, mask::GLuint)::Void
@createOpenGLFun glGetProgramInfoLog(program::GLuint, bufSize::GLsizei, length::Ptr{GLsizei}, infoLog::Ptr{GLchar})::Void
@createOpenGLFun glGetProgramResourceIndex(program::GLuint, programCinterface::GLenum, name::Ptr{GLchar})::Cuint
@createOpenGLFun glBlitFramebuffer(srcX0::GLint, srcY0::GLint, srcX1::GLint, srcY1::GLint, dstX0::GLint, dstY0::GLint, dstX1::GLint, dstY1::GLint, mask::GLbitfield, filter::GLenum)::Void
@createOpenGLFun glBeginTransformFeedback(primitiveMode::GLenum)::Void
@createOpenGLFun glVertexAttribI4bv(index::GLuint, v::Ptr{GLbyte})::Void
@createOpenGLFun glIsSampler(sampler::GLuint)::Bool
@createOpenGLFun glVertexAttribI4ui(index::GLuint, x::GLuint, y::GLuint, z::GLuint, w::GLuint)::Void
@createOpenGLFun glProgramUniformMatrix3x4dv(program::GLuint, location::GLint, count::GLsizei, transpose::GLboolean, value::Ptr{GLdouble})::Void
@createOpenGLFun glCheckFramebufferStatus(target::GLenum)::Cint
@createOpenGLFun glProgramUniformMatrix3fv(program::GLuint, location::GLint, count::GLsizei, transpose::GLboolean, value::Ptr{GLfloat})::Void
@createOpenGLFun glTextureBufferRangeEXT(texture::GLuint, target::GLenum, internalformat::GLenum, buffer::GLuint, offset::GLintptr, size::GLsizeiptr)::Void
@createOpenGLFun glInvalidateSubFramebuffer(target::GLenum, numAttachments::GLsizei, attachments::Ptr{GLenum}, x::GLint, y::GLint, width::GLsizei, height::GLsizei)::Void
@createOpenGLFun glDeleteTransformFeedbacks(n::GLsizei, ids::Ptr{GLuint})::Void
@createOpenGLFun glGetActiveUniformName(program::GLuint, uniformIndex::GLuint, bufSize::GLsizei, length::Ptr{GLsizei}, uniformName::Ptr{GLchar})::Void
@createOpenGLFun glPatchParameterfv(pname::GLenum, values::Ptr{GLfloat})::Void
@createOpenGLFun glProgramUniform4d(program::GLuint, location::GLint, v0::GLdouble, v1::GLdouble, v2::GLdouble, v3::GLdouble)::Void
@createOpenGLFun glSamplerParameteriv(sampler::GLuint, pname::GLenum, param::Ptr{GLint})::Void
@createOpenGLFun glTextureStorage2DMultisampleEXT(texture::GLuint, target::GLenum, samples::GLsizei, internalformat::GLenum, width::GLsizei, height::GLsizei, fixedsamplelocations::GLboolean)::Void
@createOpenGLFun glStencilOpSeparate(face::GLenum, sfail::GLenum, dpfail::GLenum, dppass::GLenum)::Void
@createOpenGLFun glScissorIndexed(index::GLuint, left::GLint, bottom::GLint, width::GLsizei, height::GLsizei)::Void
@createOpenGLFun glVertexAttribI3iv(index::GLuint, v::Ptr{GLint})::Void
@createOpenGLFun glBeginQueryIndexed(target::GLenum, index::GLuint, id::GLuint)::Void
@createOpenGLFun glValidateProgramPipeline(pipeline::GLuint)::Void
@createOpenGLFun glUnmapBuffer(target::GLenum)::Bool
@createOpenGLFun glEndQuery(target::GLenum)::Void
@createOpenGLFun glStencilOp(fail::GLenum, zfail::GLenum, zpass::GLenum)::Void
@createOpenGLFun glCompressedTexImage3D(target::GLenum, level::GLint, internalformat::GLenum, width::GLsizei, height::GLsizei, depth::GLsizei, border::GLint, imageSize::GLsizei, data::Ptr{Void})::Void
@createOpenGLFun glSampleMaski(index::GLuint, mask::GLbitfield)::Void
@createOpenGLFun glDisableVertexAttribArray(index::GLuint)::Void
@createOpenGLFun glVertexAttribI2i(index::GLuint, x::GLint, y::GLint)::Void
@createOpenGLFun glCompressedTexSubImage2D(target::GLenum, level::GLint, xoffset::GLint, yoffset::GLint, width::GLsizei, height::GLsizei, format::GLenum, imageSize::GLsizei, data::Ptr{Void})::Void
@createOpenGLFun glGetVertexAttribPointerv(index::GLuint, pname::GLenum, pointer::Ptr{Ptr{Void}})::Void
@createOpenGLFun glDeleteFramebuffers(n::GLsizei, framebuffers::Ptr{GLuint})::Void
@createOpenGLFun glUniformMatrix4x2dv(location::GLint, count::GLsizei, transpose::GLboolean, value::Ptr{GLdouble})::Void
@createOpenGLFun glInvalidateBufferSubData(buffer::GLuint, offset::GLintptr, length::GLsizeiptr)::Void
@createOpenGLFun glFramebufferTexture(target::GLenum, attachment::GLenum, texture::GLuint, level::GLint)::Void
@createOpenGLFun glTexImage3DMultisample(target::GLenum, samples::GLsizei, internalformat::GLint, width::GLsizei, height::GLsizei, depth::GLsizei, fixedsamplelocations::GLboolean)::Void
@createOpenGLFun glVertexAttribL1d(index::GLuint, x::GLdouble)::Void
@createOpenGLFun glTextureStorage3DEXT(texture::GLuint, target::GLenum, levels::GLsizei, internalformat::GLenum, width::GLsizei, height::GLsizei, depth::GLsizei)::Void
@createOpenGLFun glGetBufferParameteriv(target::GLenum, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glCopyBufferSubData(readTarget::GLenum, writeTarget::GLenum, readOffset::GLintptr, writeOffset::GLintptr, size::GLsizeiptr)::Void
@createOpenGLFun glSamplerParameterf(sampler::GLuint, pname::GLenum, param::GLfloat)::Void
@createOpenGLFun glColorMask(red::GLboolean, green::GLboolean, blue::GLboolean, alpha::GLboolean)::Void
@createOpenGLFun glBlendFuncSeparate(sfactorRGB::GLenum, dfactorRGB::GLenum, sfactorAlpha::GLenum, dfactorAlpha::GLenum)::Void
@createOpenGLFun glUniform3fv(location::GLint, count::GLsizei, value::Ptr{GLfloat})::Void
@createOpenGLFun glVertexAttribL1dv(index::GLuint, v::Ptr{GLdouble})::Void
@createOpenGLFun glUniform4i(location::GLint, v0::GLint, v1::GLint, v2::GLint, v3::GLint)::Void
@createOpenGLFun glMultiTexCoordP3ui(texture::GLenum, type_::GLenum, coords::GLuint)::Void
@createOpenGLFun glDrawBuffers(n::GLsizei, bufs::Ptr{GLenum})::Void
@createOpenGLFun glColorP3ui(type_::GLenum, color::GLuint)::Void
@createOpenGLFun glProgramUniformMatrix2x4dv(program::GLuint, location::GLint, count::GLsizei, transpose::GLboolean, value::Ptr{GLdouble})::Void
@createOpenGLFun glVertexP2ui(type_::GLenum, value::GLuint)::Void
@createOpenGLFun glDrawElementsInstanced(mode::GLenum, count::GLsizei, type_::GLenum, indices::Ptr{Void}, instancecount::GLsizei)::Void
@createOpenGLFun glGetUniformiv(program::GLuint, location::GLint, params::Ptr{GLint})::Void
@createOpenGLFun glTexImage2D(target::GLenum, level::GLint, internalformat::GLint, width::GLsizei, height::GLsizei, border::GLint, format::GLenum, type_::GLenum, pixels::Ptr{Void})::Void
@createOpenGLFun glGetQueryObjecti64v(id::GLuint, pname::GLenum, params::Ptr{GLint64})::Void
@createOpenGLFun glGetTexImage(target::GLenum, level::GLint, format::GLenum, type_::GLenum, pixels::Ptr{Void})::Void
@createOpenGLFun glGetTexLevelParameteriv(target::GLenum, level::GLint, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glTexSubImage2D(target::GLenum, level::GLint, xoffset::GLint, yoffset::GLint, width::GLsizei, height::GLsizei, format::GLenum, type_::GLenum, pixels::Ptr{Void})::Void
@createOpenGLFun glDeleteVertexArrays(n::GLsizei, arrays::Ptr{GLuint})::Void
@createOpenGLFun glIsRenderbuffer(renderbuffer::GLuint)::Bool
@createOpenGLFun glGetProgramResourceLocationIndex(program::GLuint, programCinterface::GLenum, name::Ptr{GLchar})::Cint
@createOpenGLFun glGetInteger64i_v(target::GLenum, index::GLuint, data::Ptr{GLint64})::Void
@createOpenGLFun glProgramUniform1ui(program::GLuint, location::GLint, v0::GLuint)::Void
@createOpenGLFun glUniform4iv(location::GLint, count::GLsizei, value::Ptr{GLint})::Void
@createOpenGLFun glProgramUniform3fv(program::GLuint, location::GLint, count::GLsizei, value::Ptr{GLfloat})::Void
@createOpenGLFun glVertexAttribL2d(index::GLuint, x::GLdouble, y::GLdouble)::Void
@createOpenGLFun glUniform2d(location::GLint, x::GLdouble, y::GLdouble)::Void
@createOpenGLFun glGetBufferParameteri64v(target::GLenum, pname::GLenum, params::Ptr{GLint64})::Void
@createOpenGLFun glTexCoordP1ui(type_::GLenum, coords::GLuint)::Void
@createOpenGLFun glDeleteBuffers(n::GLsizei, buffers::Ptr{GLuint})::Void
@createOpenGLFun glProgramUniformMatrix2x4fv(program::GLuint, location::GLint, count::GLsizei, transpose::GLboolean, value::Ptr{GLfloat})::Void
@createOpenGLFun glMultiTexCoordP4uiv(texture::GLenum, type_::GLenum, coords::Ptr{GLuint})::Void
@createOpenGLFun glVertexAttribPointer(index::GLuint, size::GLint, type_::GLenum, normalized::GLboolean, stride::GLsizei, pointer::Ptr{Void})::Void
@createOpenGLFun glVertexP3uiv(type_::GLenum, value::Ptr{GLuint})::Void
@createOpenGLFun glDispatchComputeIndirect(indirect::GLintptr)::Void
@createOpenGLFun glProgramUniform1d(program::GLuint, location::GLint, v0::GLdouble)::Void
@createOpenGLFun glGetFloati_v(target::GLenum, index::GLuint, data::Ptr{GLfloat})::Void
@createOpenGLFun glDebugMessageControl(source::GLenum, type_::GLenum, severity::GLenum, count::GLsizei, ids::Ptr{GLuint}, enabled::GLboolean)::Void
@createOpenGLFun glVertexAttribFormat(attribindex::GLuint, size::GLint, type_::GLenum, normalized::GLboolean, relativeoffset::GLuint)::Void
@createOpenGLFun glClearColor(red::GLfloat, green::GLfloat, blue::GLfloat, alpha::GLfloat)::Void
@createOpenGLFun glIsFramebuffer(framebuffer::GLuint)::Bool
@createOpenGLFun glVertexAttribP1uiv(index::GLuint, type_::GLenum, normalized::GLboolean, value::Ptr{GLuint})::Void
@createOpenGLFun glUniform3i(location::GLint, v0::GLint, v1::GLint, v2::GLint)::Void
@createOpenGLFun glGetString(name::GLenum)::Ptr{Cuchar}
@createOpenGLFun glGenTextures(n::GLsizei, textures::Ptr{GLuint})::Void
@createOpenGLFun glFramebufferRenderbuffer(target::GLenum, attachment::GLenum, renderbuffertarget::GLenum, renderbuffer::GLuint)::Void
@createOpenGLFun glGetQueryObjectiv(id::GLuint, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glBindProgramPipeline(pipeline::GLuint)::Void
@createOpenGLFun glGetActiveUniformBlockName(program::GLuint, uniformBlockIndex::GLuint, bufSize::GLsizei, length::Ptr{GLsizei}, uniformBlockName::Ptr{GLchar})::Void
@createOpenGLFun glUniformMatrix2fv(location::GLint, count::GLsizei, transpose::GLboolean, value::Ptr{GLfloat})::Void
@createOpenGLFun glTexStorage3D(target::GLenum, levels::GLsizei, internalformat::GLenum, width::GLsizei, height::GLsizei, depth::GLsizei)::Void
@createOpenGLFun glTexCoordP3ui(type_::GLenum, coords::GLuint)::Void
@createOpenGLFun glDeleteSync(sync::GLsync)::Void
@createOpenGLFun glBindFragDataLocation(program::GLuint, color::GLuint, name::Ptr{GLchar})::Void
@createOpenGLFun glGetShaderPrecisionFormat(shadertype::GLenum, precisiontype::GLenum, range_::Ptr{GLint}, precision::Ptr{GLint})::Void
@createOpenGLFun glGenTransformFeedbacks(n::GLsizei, ids::Ptr{GLuint})::Void
@createOpenGLFun glProgramUniform4iv(program::GLuint, location::GLint, count::GLsizei, value::Ptr{GLint})::Void
@createOpenGLFun glHint(target::GLenum, mode::GLenum)::Void
@createOpenGLFun glVertexArrayVertexAttribBindingEXT(vaobj::GLuint, attribindex::GLuint, bindingindex::GLuint)::Void
@createOpenGLFun glDrawTransformFeedback(mode::GLenum, id::GLuint)::Void
@createOpenGLFun glUniform1ui(location::GLint, v0::GLuint)::Void
@createOpenGLFun glTexSubImage3D(target::GLenum, level::GLint, xoffset::GLint, yoffset::GLint, zoffset::GLint, width::GLsizei, height::GLsizei, depth::GLsizei, format::GLenum, type_::GLenum, pixels::Ptr{Void})::Void
@createOpenGLFun glBeginConditionalRender(id::GLuint, mode::GLenum)::Void
@createOpenGLFun glGetActiveUniformsiv(program::GLuint, uniformCount::GLsizei, uniformIndices::Ptr{GLuint}, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glGetStringi(name::GLenum, index::GLuint)::Ptr{Cuchar}
@createOpenGLFun glMultiDrawArraysIndirect(mode::GLenum, indirect::Ptr{Void}, drawcount::GLsizei, stride::GLsizei)::Void
@createOpenGLFun glDepthRange(near_::GLdouble, far_::GLdouble)::Void
@createOpenGLFun glUniform2ui(location::GLint, v0::GLuint, v1::GLuint)::Void
@createOpenGLFun glBindFragDataLocationIndexed(program::GLuint, colorNumber::GLuint, index::GLuint, name::Ptr{GLchar})::Void
@createOpenGLFun glDrawElementsBaseVertex(mode::GLenum, count::GLsizei, type_::GLenum, indices::Ptr{Void}, basevertex::GLint)::Void
@createOpenGLFun glMultiTexCoordP4ui(texture::GLenum, type_::GLenum, coords::GLuint)::Void
@createOpenGLFun glGetTexParameterfv(target::GLenum, pname::GLenum, params::Ptr{GLfloat})::Void
@createOpenGLFun glVertexArrayBindVertexBufferEXT(vaobj::GLuint, bindingindex::GLuint, buffer::GLuint, offset::GLintptr, stride::GLsizei)::Void
@createOpenGLFun glScissor(x::GLint, y::GLint, width::GLsizei, height::GLsizei)::Void
@createOpenGLFun glClearDepthf(d::GLfloat)::Void
@createOpenGLFun glProgramUniformMatrix4x2dv(program::GLuint, location::GLint, count::GLsizei, transpose::GLboolean, value::Ptr{GLdouble})::Void
@createOpenGLFun glDrawElementsInstancedBaseVertex(mode::GLenum, count::GLsizei, type_::GLenum, indices::Ptr{Void}, instancecount::GLsizei, basevertex::GLint)::Void
@createOpenGLFun glClearNamedBufferDataEXT(buffer::GLuint, internalformat::GLenum, format::GLenum, type_::GLenum, data::Ptr{Void})::Void
@createOpenGLFun glProgramUniform2iv(program::GLuint, location::GLint, count::GLsizei, value::Ptr{GLint})::Void
@createOpenGLFun glStencilMask(mask::GLuint)::Void
@createOpenGLFun glCopyTexSubImage2D(target::GLenum, level::GLint, xoffset::GLint, yoffset::GLint, x::GLint, y::GLint, width::GLsizei, height::GLsizei)::Void
@createOpenGLFun glGetTexLevelParameterfv(target::GLenum, level::GLint, pname::GLenum, params::Ptr{GLfloat})::Void
@createOpenGLFun glColorMaski(index::GLuint, r::GLboolean, g::GLboolean, b::GLboolean, a::GLboolean)::Void
@createOpenGLFun glVertexP3ui(type_::GLenum, value::GLuint)::Void
@createOpenGLFun glUniformMatrix2dv(location::GLint, count::GLsizei, transpose::GLboolean, value::Ptr{GLdouble})::Void
@createOpenGLFun glGetProgramPipelineInfoLog(pipeline::GLuint, bufSize::GLsizei, length::Ptr{GLsizei}, infoLog::Ptr{GLchar})::Void
@createOpenGLFun glVertexAttribP1ui(index::GLuint, type_::GLenum, normalized::GLboolean, value::GLuint)::Void
@createOpenGLFun glUniform3iv(location::GLint, count::GLsizei, value::Ptr{GLint})::Void
@createOpenGLFun glUniformSubroutinesuiv(shadertype::GLenum, count::GLsizei, indices::Ptr{GLuint})::Void
@createOpenGLFun glPatchParameteri(pname::GLenum, value::GLint)::Void
@createOpenGLFun glGenVertexArrays(n::GLsizei, arrays::Ptr{GLuint})::Void
@createOpenGLFun glStencilFunc(func_::GLenum, ref::GLint, mask::GLuint)::Void
@createOpenGLFun glGetInternalformativ(target::GLenum, internalformat::GLenum, pname::GLenum, bufSize::GLsizei, params::Ptr{GLint})::Void
@createOpenGLFun glMinSampleShading(value::GLfloat)::Void
@createOpenGLFun glProgramUniform2uiv(program::GLuint, location::GLint, count::GLsizei, value::Ptr{GLuint})::Void
@createOpenGLFun glGetActiveUniform(program::GLuint, index::GLuint, bufSize::GLsizei, length::Ptr{GLsizei}, size::Ptr{GLint}, type_::Ptr{GLenum}, name::Ptr{GLchar})::Void
@createOpenGLFun glVertexAttribI4i(index::GLuint, x::GLint, y::GLint, z::GLint, w::GLint)::Void
@createOpenGLFun glClearNamedBufferSubDataEXT(buffer::GLuint, internalformat::GLenum, offset::GLsizeiptr, size::GLsizeiptr, format::GLenum, type_::GLenum, data::Ptr{Void})::Void
@createOpenGLFun glUniformMatrix4x2fv(location::GLint, count::GLsizei, transpose::GLboolean, value::Ptr{GLfloat})::Void
@createOpenGLFun glDeleteTextures(n::GLsizei, textures::Ptr{GLuint})::Void
@createOpenGLFun glProgramUniformMatrix4dv(program::GLuint, location::GLint, count::GLsizei, transpose::GLboolean, value::Ptr{GLdouble})::Void
@createOpenGLFun glCullFace(mode::GLenum)::Void
@createOpenGLFun glProgramUniformMatrix3x2dv(program::GLuint, location::GLint, count::GLsizei, transpose::GLboolean, value::Ptr{GLdouble})::Void
@createOpenGLFun glTexBufferRange(target::GLenum, internalformat::GLenum, buffer::GLuint, offset::GLintptr, size::GLsizeiptr)::Void
@createOpenGLFun glClearBufferSubData(target::GLenum, internalformat::GLenum, offset::GLintptr, size::GLsizeiptr, format::GLenum, type_::GLenum, data::Ptr{Void})::Void
@createOpenGLFun glLineWidth(width::GLfloat)::Void
@createOpenGLFun glCompressedTexSubImage3D(target::GLenum, level::GLint, xoffset::GLint, yoffset::GLint, zoffset::GLint, width::GLsizei, height::GLsizei, depth::GLsizei, format::GLenum, imageSize::GLsizei, data::Ptr{Void})::Void
@createOpenGLFun glVertexArrayVertexBindingDivisorEXT(vaobj::GLuint, bindingindex::GLuint, divisor::GLuint)::Void
@createOpenGLFun glClearBufferfi(buffer::GLenum, drawbuffer::GLint, depth::GLfloat, stencil::GLint)::Void
@createOpenGLFun glIsProgram(program::GLuint)::Bool
@createOpenGLFun glGetVertexAttribIiv(index::GLuint, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glGetTransformFeedbackVarying(program::GLuint, index::GLuint, bufSize::GLsizei, length::Ptr{GLsizei}, size::Ptr{GLsizei}, type_::Ptr{GLenum}, name::Ptr{GLchar})::Void
@createOpenGLFun glVertexAttribLPointer(index::GLuint, size::GLint, type_::GLenum, stride::GLsizei, pointer::Ptr{Void})::Void
@createOpenGLFun glGetFramebufferAttachmentParameteriv(target::GLenum, attachment::GLenum, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glGetActiveAtomicCounterBufferiv(program::GLuint, bufferIndex::GLuint, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glProgramUniform3dv(program::GLuint, location::GLint, count::GLsizei, value::Ptr{GLdouble})::Void
@createOpenGLFun glUniformMatrix4x3dv(location::GLint, count::GLsizei, transpose::GLboolean, value::Ptr{GLdouble})::Void
@createOpenGLFun glVertexAttribI4ubv(index::GLuint, v::Ptr{GLubyte})::Void
@createOpenGLFun glCreateProgram()::Cuint
@createOpenGLFun glUniformBlockBinding(program::GLuint, uniformBlockIndex::GLuint, uniformBlockBinding::GLuint)::Void
@createOpenGLFun glEndQueryIndexed(target::GLenum, index::GLuint)::Void
@createOpenGLFun glTexStorage2DMultisample(target::GLenum, samples::GLsizei, internalformat::GLenum, width::GLsizei, height::GLsizei, fixedsamplelocations::GLboolean)::Void
@createOpenGLFun glGetSynciv(sync::GLsync, pname::GLenum, bufSize::GLsizei, length::Ptr{GLsizei}, values::Ptr{GLint})::Void
@createOpenGLFun glClampColor(target::GLenum, clamp::GLenum)::Void
@createOpenGLFun glVertexAttribP3ui(index::GLuint, type_::GLenum, normalized::GLboolean, value::GLuint)::Void
@createOpenGLFun glBindAttribLocation(program::GLuint, index::GLuint, name::Ptr{GLchar})::Void
@createOpenGLFun glBindVertexBuffer(bindingindex::GLuint, buffer::GLuint, offset::GLintptr, stride::GLsizei)::Void
@createOpenGLFun glValidateProgram(program::GLuint)::Void
@createOpenGLFun glGetSamplerParameterfv(sampler::GLuint, pname::GLenum, params::Ptr{GLfloat})::Void
@createOpenGLFun glGetBooleani_v(target::GLenum, index::GLuint, data::Ptr{GLboolean})::Void
@createOpenGLFun glMultiTexCoordP2uiv(texture::GLenum, type_::GLenum, coords::Ptr{GLuint})::Void
@createOpenGLFun glFramebufferTexture2D(target::GLenum, attachment::GLenum, textarget::GLenum, texture::GLuint, level::GLint)::Void
@createOpenGLFun glEndTransformFeedback()::Void
@createOpenGLFun glGetSubroutineUniformLocation(program::GLuint, shadertype::GLenum, name::Ptr{GLchar})::Cint
@createOpenGLFun glGetQueryiv(target::GLenum, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glProgramUniform2d(program::GLuint, location::GLint, v0::GLdouble, v1::GLdouble)::Void
@createOpenGLFun glProgramUniform3iv(program::GLuint, location::GLint, count::GLsizei, value::Ptr{GLint})::Void
@createOpenGLFun glIsSync(sync::GLsync)::Bool
@createOpenGLFun glGetTexParameterIiv(target::GLenum, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glGetObjectPtrLabel(ptr::Ptr{Void}, bufSize::GLsizei, length::Ptr{GLsizei}, label::Ptr{GLchar})::Void
@createOpenGLFun glGetUniformSubroutineuiv(shadertype::GLenum, location::GLint, params::Ptr{GLuint})::Void
@createOpenGLFun glTexBuffer(target::GLenum, internalformat::GLenum, buffer::GLuint)::Void
@createOpenGLFun glDeleteQueries(n::GLsizei, ids::Ptr{GLuint})::Void
@createOpenGLFun glDisablei(target::GLenum, index::GLuint)::Void
@createOpenGLFun glNamedFramebufferParameteriEXT(framebuffer::GLuint, pname::GLenum, param::GLint)::Void
@createOpenGLFun glGetUniformLocation(program::GLuint, name::Ptr{GLchar})::Cint
@createOpenGLFun glMemoryBarrier(barriers::GLbitfield)::Void
@createOpenGLFun glGetDoublei_v(target::GLenum, index::GLuint, data::Ptr{GLdouble})::Void
@createOpenGLFun glClearBufferuiv(buffer::GLenum, drawbuffer::GLint, value::Ptr{GLuint})::Void
@createOpenGLFun glRenderbufferStorage(target::GLenum, internalformat::GLenum, width::GLsizei, height::GLsizei)::Void
@createOpenGLFun glViewportIndexedf(index::GLuint, x::GLfloat, y::GLfloat, w::GLfloat, h::GLfloat)::Void
@createOpenGLFun glDrawElements(mode::GLenum, count::GLsizei, type_::GLenum, indices::Ptr{Void})::Void
@createOpenGLFun glVertexAttribI1ui(index::GLuint, x::GLuint)::Void
@createOpenGLFun glUniform2i(location::GLint, v0::GLint, v1::GLint)::Void
@createOpenGLFun glGetQueryIndexediv(target::GLenum, index::GLuint, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glAttachShader(program::GLuint, shader::GLuint)::Void
@createOpenGLFun glDrawTransformFeedbackStreamInstanced(mode::GLenum, id::GLuint, stream::GLuint, instancecount::GLsizei)::Void
@createOpenGLFun glIsQuery(id::GLuint)::Bool
@createOpenGLFun glViewportIndexedfv(index::GLuint, v::Ptr{GLfloat})::Void
@createOpenGLFun glVertexBindingDivisor(bindingindex::GLuint, divisor::GLuint)::Void
@createOpenGLFun glCopyTexImage2D(target::GLenum, level::GLint, internalformat::GLenum, x::GLint, y::GLint, width::GLsizei, height::GLsizei, border::GLint)::Void
@createOpenGLFun glDeleteSamplers(count::GLsizei, samplers::Ptr{GLuint})::Void
@createOpenGLFun glGetProgramStageiv(program::GLuint, shadertype::GLenum, pname::GLenum, values::Ptr{GLint})::Void
@createOpenGLFun glBindSampler(unit::GLuint, sampler::GLuint)::Void
@createOpenGLFun glBindRenderbuffer(target::GLenum, renderbuffer::GLuint)::Void
@createOpenGLFun glGetSamplerParameterIuiv(sampler::GLuint, pname::GLenum, params::Ptr{GLuint})::Void
@createOpenGLFun glGetTexParameteriv(target::GLenum, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glVertexAttribIFormat(attribindex::GLuint, size::GLint, type_::GLenum, relativeoffset::GLuint)::Void
@createOpenGLFun glBlendEquationSeparatei(buf::GLuint, modeRGB::GLenum, modeAlpha::GLenum)::Void
@createOpenGLFun glTexImage2DMultisample(target::GLenum, samples::GLsizei, internalformat::GLint, width::GLsizei, height::GLsizei, fixedsamplelocations::GLboolean)::Void
@createOpenGLFun glDepthRangef(n::GLfloat, f::GLfloat)::Void
@createOpenGLFun glUniform4f(location::GLint, v0::GLfloat, v1::GLfloat, v2::GLfloat, v3::GLfloat)::Void
@createOpenGLFun glMapBuffer(target::GLenum, access::GLenum)::Ptr{Void}
#constants
const GL_MAP1_GRID_SEGMENTS                                           = 0x0DD1
const GL_COMPILE                                                      = 0x1300
const GL_SAMPLER_3D                                                   = 0x8B5F
const GL_QUERY                                                        = 0x82E3
const GL_INTENSITY                                                    = 0x8049
const GL_FOG_HINT                                                     = 0x0C54
const GL_FOG_COORDINATE_ARRAY_BUFFER_BINDING                          = 0x889D
const GL_DOUBLE_MAT2x3                                                = 0x8F49
const GL_FRAMEBUFFER_INCOMPLETE_READ_BUFFER                           = 0x8CDC
const GL_BUFFER_ACCESS                                                = 0x88BB
const GL_LUMINANCE12_ALPHA12                                          = 0x8047
const GL_IMAGE_CUBE_MAP_ARRAY                                         = 0x9054
const GL_COMPRESSED_RG11_EAC                                          = 0x9272
const GL_RGBA32I                                                      = 0x8D82
const GL_MAX_TESS_CONTROL_OUTPUT_COMPONENTS                           = 0x8E83
const GL_FRAMEBUFFER_UNSUPPORTED                                      = 0x8CDD
const GL_SAMPLER_2D_ARRAY                                             = 0x8DC1
const GL_MAX_COMBINED_ATOMIC_COUNTER_BUFFERS                          = 0x92D1
const GL_IMAGE_CLASS_4_X_8                                            = 0x82BF
const GL_UNSIGNED_INT_ATOMIC_COUNTER                                  = 0x92DB
const GL_UNPACK_LSB_FIRST                                             = 0x0CF1
const GL_ACCUM_RED_BITS                                               = 0x0D58
const GL_ELEMENT_ARRAY_BARRIER_BIT                                    = 0x00000002
const GL_LIGHT4                                                       = 0x4004
const GL_POINT_SPRITE                                                 = 0x8861
const GL_PIXEL_BUFFER_BARRIER_BIT                                     = 0x00000080
const GL_MAX_GEOMETRY_OUTPUT_VERTICES                                 = 0x8DE0
const GL_READ_FRAMEBUFFER_BINDING                                     = 0x8CAA
const GL_LIGHT_MODEL_LOCAL_VIEWER                                     = 0x0B51
const GL_OBJECT_LINEAR                                                = 0x2401
const GL_COLOR_ARRAY_SIZE                                             = 0x8081
const GL_TEXTURE12                                                    = 0x84CC
const GL_MAX_COMPUTE_WORK_GROUP_SIZE                                  = 0x91BF
const GL_OPERAND1_RGB                                                 = 0x8591
const GL_X3D                                                          = 0x0601
const GL_TEXTURE_BINDING_3D                                           = 0x806A
const GL_SECONDARY_COLOR_ARRAY                                        = 0x845E
const GL_UNSIGNED_SHORT_5_6_5_REV                                     = 0x8364
const GL_BGRA_INTEGER                                                 = 0x8D9B
const GL_PACK_ROW_LENGTH                                              = 0x0D02
const GL_INT_IMAGE_2D_RECT                                            = 0x905A
const GL_SET                                                          = 0x150F
const GL_LAYER_PROVOKING_VERTEX                                       = 0x825E
const GL_FRACTIONAL_EVEN                                              = 0x8E7C
const GL_LINES                                                        = 0x0001
const GL_QUADS                                                        = 0x0007
const GL_EYE_LINEAR                                                   = 0x2400
const GL_POLYGON_OFFSET_POINT                                         = 0x2A01
const GL_TEXTURE                                                      = 0x1702
const GL_BLEND_EQUATION_ALPHA                                         = 0x883D
const GL_INFO_LOG_LENGTH                                              = 0x8B84
const GL_CLIP_DISTANCE0                                               = 0x3000
const GL_MATRIX_STRIDE                                                = 0x92FF
const GL_COMPILE_STATUS                                               = 0x8B81
const GL_QUERY_RESULT                                                 = 0x8866
const GL_MAX_FRAMEBUFFER_WIDTH                                        = 0x9315
const GL_RGB5                                                         = 0x8050
const GL_VERTEX_SHADER                                                = 0x8B31
const GL_LIST_BIT                                                     = 0x00020000
const GL_PROXY_TEXTURE_2D_MULTISAMPLE                                 = 0x9101
const GL_INT_SAMPLER_CUBE_MAP_ARRAY                                   = 0x900E
const GL_TEXTURE_PRIORITY                                             = 0x8066
const GL_EVAL_BIT                                                     = 0x00010000
const GL_POINT_SPRITE_COORD_ORIGIN                                    = 0x8CA0
const GL_CCW                                                          = 0x0901
const GL_TEXTURE26                                                    = 0x84DA
const GL_SMOOTH_LINE_WIDTH_GRANULARITY                                = 0x0B23
const GL_MEDIUM_INT                                                   = 0x8DF4
const GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME                           = 0x8CD1
const GL_SHADER_COMPILER                                              = 0x8DFA
const GL_BUFFER_MAP_LENGTH                                            = 0x9120
const GL_ATTACHED_SHADERS                                             = 0x8B85
const GL_CLIP_DISTANCE5                                               = 0x3005
const GL_MAP_UNSYNCHRONIZED_BIT                                       = 0x0020
const GL_BLEND_SRC_ALPHA                                              = 0x80CB
const GL_MAX_UNIFORM_LOCATIONS                                        = 0x826E
const GL_COMPRESSED_RGB8_ETC2                                         = 0x9274
const GL_R32F                                                         = 0x822E
const GL_INT_SAMPLER_2D                                               = 0x8DCA
const GL_DOUBLE_MAT4x3                                                = 0x8F4E
const GL_C3F_V3F                                                      = 0x2A24
const GL_TEXTURE_CUBE_MAP_NEGATIVE_X                                  = 0x8516
const GL_MAP2_INDEX                                                   = 0x0DB1
const GL_TEXTURE_FETCH_BARRIER_BIT                                    = 0x00000008
const GL_DEPTH_BUFFER_BIT                                             = 0x00000100
const GL_STENCIL_BITS                                                 = 0x0D57
const GL_INTENSITY12                                                  = 0x804C
const GL_DEPTH_COMPONENT32                                            = 0x81A7
const GL_MAX_TESS_EVALUATION_OUTPUT_COMPONENTS                        = 0x8E86
const GL_SYNC_FLUSH_COMMANDS_BIT                                      = 0x00000001
const GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_FRAGMENT_SHADER          = 0x92CB
const GL_UNSIGNED_INT_IMAGE_CUBE                                      = 0x9066
const GL_UNIFORM_BLOCK_ACTIVE_UNIFORMS                                = 0x8A42
const GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN                        = 0x8C88
const GL_LIST_BASE                                                    = 0x0B32
const GL_DRAW_BUFFER7                                                 = 0x882C
const GL_INTERNALFORMAT_BLUE_SIZE                                     = 0x8273
const GL_POINT_SMOOTH                                                 = 0x0B10
const GL_INT_SAMPLER_3D                                               = 0x8DCB
const GL_BUFFER_MAP_OFFSET                                            = 0x9121
const GL_MAX_GEOMETRY_SHADER_INVOCATIONS                              = 0x8E5A
const GL_DEPTH_COMPONENTS                                             = 0x8284
const GL_REFERENCED_BY_TESS_CONTROL_SHADER                            = 0x9307
const GL_HIGH_FLOAT                                                   = 0x8DF2
const GL_PIXEL_MAP_S_TO_S                                             = 0x0C71
const GL_INT_SAMPLER_1D_ARRAY                                         = 0x8DCE
const GL_DOUBLE                                                       = 0x140A
const GL_ACTIVE_SUBROUTINE_MAX_LENGTH                                 = 0x8E48
const GL_FOG_COORDINATE_ARRAY_STRIDE                                  = 0x8455
const GL_RG32F                                                        = 0x8230
const GL_COMMAND_BARRIER_BIT                                          = 0x00000040
const GL_GENERATE_MIPMAP                                              = 0x8191
const GL_RGB10_A2UI                                                   = 0x906F
const GL_T2F_C4UB_V3F                                                 = 0x2A29
const GL_RGB16                                                        = 0x8054
const GL_TEXTURE_MATRIX                                               = 0x0BA8
const GL_IMAGE_2D_MULTISAMPLE_ARRAY                                   = 0x9056
const GL_SRGB8_ALPHA8                                                 = 0x8C43
const GL_LAST_VERTEX_CONVENTION                                       = 0x8E4E
const GL_COLOR_ARRAY_STRIDE                                           = 0x8083
const GL_MAX_DEBUG_LOGGED_MESSAGES                                    = 0x9144
const GL_VERTEX_SUBROUTINE                                            = 0x92E8
const GL_STENCIL_INDEX16                                              = 0x8D49
const GL_TEXTURE_CUBE_MAP_POSITIVE_X                                  = 0x8515
const GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTERS                 = 0x92C5
const GL_BITMAP                                                       = 0x1A00
const GL_CURRENT_INDEX                                                = 0x0B01
const GL_IMAGE_PIXEL_FORMAT                                           = 0x82A9
const GL_MAX_GEOMETRY_SHADER_STORAGE_BLOCKS                           = 0x90D7
const GL_FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE                            = 0x8216
const GL_MAP1_GRID_DOMAIN                                             = 0x0DD0
const GL_VERTEX_PROGRAM_POINT_SIZE                                    = 0x8642
const GL_STENCIL_PASS_DEPTH_FAIL                                      = 0x0B95
const GL_TEXTURE_CUBE_MAP_NEGATIVE_Y                                  = 0x8518
const GL_BLUE_INTEGER                                                 = 0x8D96
const GL_STENCIL_BACK_FAIL                                            = 0x8801
const GL_MAX_ATOMIC_COUNTER_BUFFER_SIZE                               = 0x92D8
const GL_XOR                                                          = 0x1506
const GL_GET_TEXTURE_IMAGE_TYPE                                       = 0x8292
const GL_VERTEX_PROGRAM_TWO_SIDE                                      = 0x8643
const GL_LIGHT_MODEL_AMBIENT                                          = 0x0B53
const GL_OPERAND0_ALPHA                                               = 0x8598
const GL_FOG_COORD_ARRAY_BUFFER_BINDING                               = 0x889D
const GL_RGBA16UI                                                     = 0x8D76
const GL_AMBIENT                                                      = 0x1200
const GL_DEPTH_CLAMP                                                  = 0x864F
const GL_DEBUG_SOURCE_SHADER_COMPILER                                 = 0x8248
const GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET                            = 0x8E5F
const GL_DYNAMIC_COPY                                                 = 0x88EA
const GL_TEXTURE_1D_ARRAY                                             = 0x8C18
const GL_TEXTURE_GATHER                                               = 0x82A2
const GL_EQUIV                                                        = 0x1509
const GL_CURRENT_RASTER_INDEX                                         = 0x0B05
const GL_POLYGON_OFFSET_FILL                                          = 0x8037
const GL_MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS                      = 0x8266
const GL_COLOR_WRITEMASK                                              = 0x0C23
const GL_POINT_TOKEN                                                  = 0x0701
const GL_TEXTURE8                                                     = 0x84C8
const GL_EQUAL                                                        = 0x0202
const GL_R32I                                                         = 0x8235
const GL_MAX_ARRAY_TEXTURE_LAYERS                                     = 0x88FF
const GL_TEXTURE1                                                     = 0x84C1
const GL_MAX_NUM_ACTIVE_VARIABLES                                     = 0x92F7
const GL_SECONDARY_COLOR_ARRAY_STRIDE                                 = 0x845C
const GL_UNSIGNED_INT_10F_11F_11F_REV                                 = 0x8C3B
const GL_SRC1_RGB                                                     = 0x8581
const GL_PROGRAM                                                      = 0x82E2
const GL_RETURN                                                       = 0x0102
const GL_RGBA16                                                       = 0x805B
const GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE                           = 0x8D56
const GL_TEXTURE_2D                                                   = 0x0DE1
const GL_TEXTURE_BINDING_1D                                           = 0x8068
const GL_MAX_GEOMETRY_ATOMIC_COUNTERS                                 = 0x92D5
const GL_MAX_GEOMETRY_OUTPUT_COMPONENTS                               = 0x9124
const GL_SHADER_STORAGE_BUFFER_START                                  = 0x90D4
const GL_LINE_WIDTH_RANGE                                             = 0x0B22
const GL_PIXEL_MAP_I_TO_B                                             = 0x0C74
const GL_TESS_CONTROL_SHADER_BIT                                      = 0x00000008
const GL_VIEW_CLASS_BPTC_UNORM                                        = 0x82D2
const GL_ACCUM_BUFFER_BIT                                             = 0x00000200
const GL_SAMPLES_PASSED                                               = 0x8914
const GL_MAP2_GRID_SEGMENTS                                           = 0x0DD3
const GL_IMAGE_FORMAT_COMPATIBILITY_BY_CLASS                          = 0x90C9
const GL_READ_FRAMEBUFFER                                             = 0x8CA8
const GL_INDEX_CLEAR_VALUE                                            = 0x0C20
const GL_ENABLE_BIT                                                   = 0x00002000
const GL_OBJECT_TYPE                                                  = 0x9112
const GL_MAP2_VERTEX_3                                                = 0x0DB7
const GL_MAX_DEPTH                                                    = 0x8280
const GL_OUT_OF_MEMORY                                                = 0x0505
const GL_MAX_COMPUTE_UNIFORM_BLOCKS                                   = 0x91BB
const GL_MAX_COMPUTE_ATOMIC_COUNTERS                                  = 0x8265
const GL_COLOR_ATTACHMENT12                                           = 0x8CEC
const GL_UNSIGNED_SHORT_4_4_4_4                                       = 0x8033
const GL_GEOMETRY_SHADER_INVOCATIONS                                  = 0x887F
const GL_STENCIL_INDEX8                                               = 0x8D48
const GL_MAX_COMBINED_SHADER_STORAGE_BLOCKS                           = 0x90DC
const GL_RGB8I                                                        = 0x8D8F
const GL_AUTO_GENERATE_MIPMAP                                         = 0x8295
const GL_MAP1_VERTEX_3                                                = 0x0D97
const GL_CLIP_DISTANCE2                                               = 0x3002
const GL_TEXTURE18                                                    = 0x84D2
const GL_INT_2_10_10_10_REV                                           = 0x8D9F
const GL_UNSIGNED_INT_SAMPLER_3D                                      = 0x8DD3
const GL_DEPTH_ATTACHMENT                                             = 0x8D00
const GL_IMAGE_CLASS_11_11_10                                         = 0x82C2
const GL_COMPRESSED_RGBA8_ETC2_EAC                                    = 0x9278
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
const GL_DEBUG_TYPE_PERFORMANCE                                       = 0x8250
const GL_LOCATION_INDEX                                               = 0x930F
const GL_TEXTURE_GEN_R                                                = 0x0C62
const GL_FLOAT_MAT2                                                   = 0x8B5A
const GL_UNSIGNED_NORMALIZED                                          = 0x8C17
const GL_VIEW_CLASS_16_BITS                                           = 0x82CA
const GL_QUAD_STRIP                                                   = 0x0008
const GL_DYNAMIC_DRAW                                                 = 0x88E8
const GL_SYNC_FENCE                                                   = 0x9116
const GL_ONE_MINUS_SRC1_ALPHA                                         = 0x88FB
const GL_MANUAL_GENERATE_MIPMAP                                       = 0x8294
const GL_DEPTH_FUNC                                                   = 0x0B74
const GL_VERTEX_SUBROUTINE_UNIFORM                                    = 0x92EE
const GL_COMPUTE_TEXTURE                                              = 0x82A0
const GL_MAP2_VERTEX_4                                                = 0x0DB8
const GL_ARRAY_SIZE                                                   = 0x92FB
const GL_FLOAT_MAT3x2                                                 = 0x8B67
const GL_RGBA8I                                                       = 0x8D8E
const GL_RENDERBUFFER_SAMPLES                                         = 0x8CAB
const GL_TEXTURE_VIEW                                                 = 0x82B5
const GL_VIEW_CLASS_RGTC1_RED                                         = 0x82D0
const GL_PIXEL_MAP_G_TO_G                                             = 0x0C77
const GL_INTENSITY8                                                   = 0x804B
const GL_PIXEL_MAP_A_TO_A_SIZE                                        = 0x0CB9
const GL_MAP2_GRID_DOMAIN                                             = 0x0DD2
const GL_N3F_V3F                                                      = 0x2A25
const GL_MAX_VIEWPORTS                                                = 0x825B
const GL_COMPRESSED_R11_EAC                                           = 0x9270
const GL_SRC0_ALPHA                                                   = 0x8588
const GL_INTERNALFORMAT_RED_TYPE                                      = 0x8278
const GL_DOMAIN                                                       = 0x0A02
const GL_IMAGE_CUBE                                                   = 0x9050
const GL_TEXTURE_1D                                                   = 0x0DE0
const GL_RENDERBUFFER_WIDTH                                           = 0x8D42
const GL_POINT_SIZE                                                   = 0x0B11
const GL_SIMULTANEOUS_TEXTURE_AND_DEPTH_TEST                          = 0x82AC
const GL_VIEWPORT                                                     = 0x0BA2
const GL_R16_SNORM                                                    = 0x8F98
const GL_RGBA                                                         = 0x1908
const GL_DRAW_PIXEL_TOKEN                                             = 0x0705
const GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE                            = 0x906B
const GL_TEXTURE_SWIZZLE_G                                            = 0x8E43
const GL_TEXTURE_IMMUTABLE_FORMAT                                     = 0x912F
const GL_CLAMP                                                        = 0x2900
const GL_TEXTURE31                                                    = 0x84DF
const GL_TEXTURE_GEN_MODE                                             = 0x2500
const GL_FOG_COORD_ARRAY_STRIDE                                       = 0x8455
const GL_MAX_SUBROUTINES                                              = 0x8DE7
const GL_MAX_VERTEX_ATOMIC_COUNTER_BUFFERS                            = 0x92CC
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
const GL_DEBUG_TYPE_DEPRECATED_BEHAVIOR                               = 0x824D
const GL_FULL_SUPPORT                                                 = 0x82B7
const GL_SUBPIXEL_BITS                                                = 0x0D50
const GL_UNPACK_SKIP_ROWS                                             = 0x0CF3
const GL_VIEW_CLASS_64_BITS                                           = 0x82C6
const GL_SOURCE0_RGB                                                  = 0x8580
const GL_TEXTURE_SWIZZLE_RGBA                                         = 0x8E46
const GL_IMAGE_FORMAT_COMPATIBILITY_TYPE                              = 0x90C7
const GL_UNIFORM_BLOCK_INDEX                                          = 0x8A3A
const GL_MAX_DUAL_SOURCE_DRAW_BUFFERS                                 = 0x88FC
const GL_RGBA_INTEGER                                                 = 0x8D99
const GL_MAX_COMBINED_IMAGE_UNIFORMS                                  = 0x90CF
const GL_MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS                    = 0x90D9
const GL_RGB16F                                                       = 0x881B
const GL_MAX_COMBINED_UNIFORM_BLOCKS                                  = 0x8A2E
const GL_TESS_GEN_POINT_MODE                                          = 0x8E79
const GL_INT_IMAGE_2D_MULTISAMPLE_ARRAY                               = 0x9061
const GL_FRAMEBUFFER_BARRIER_BIT                                      = 0x00000400
const GL_POINTS                                                       = 0x0000
const GL_INCR_WRAP                                                    = 0x8507
const GL_ACTIVE_ATTRIBUTES                                            = 0x8B89
const GL_FIXED_ONLY                                                   = 0x891D
const GL_MAX_UNIFORM_BLOCK_SIZE                                       = 0x8A30
const GL_TEXTURE5                                                     = 0x84C5
const GL_ALPHA12                                                      = 0x803D
const GL_GREEN_SCALE                                                  = 0x0D18
const GL_INT_IMAGE_2D                                                 = 0x9058
const GL_INTERNALFORMAT_GREEN_SIZE                                    = 0x8272
const GL_CURRENT_FOG_COORD                                            = 0x8453
const GL_SRC1_ALPHA                                                   = 0x8589
const GL_PROXY_TEXTURE_1D                                             = 0x8063
const GL_PROXY_TEXTURE_CUBE_MAP_ARRAY                                 = 0x900B
const GL_TEXTURE_WRAP_S                                               = 0x2802
const GL_COMPRESSED_SIGNED_RG11_EAC                                   = 0x9273
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
const GL_DISPLAY_LIST                                                 = 0x82E7
const GL_MAX_TEXTURE_SIZE                                             = 0x0D33
const GL_MAX_DRAW_BUFFERS                                             = 0x8824
const GL_TEXTURE_COMPRESSED_BLOCK_WIDTH                               = 0x82B1
const GL_TEXTURE_ENV_MODE                                             = 0x2200
const GL_LIGHT3                                                       = 0x4003
const GL_TEXTURE_BLUE_SIZE                                            = 0x805E
const GL_UNSIGNED_INT_SAMPLER_2D_RECT                                 = 0x8DD5
const GL_MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS                      = 0x8E82
const GL_EDGE_FLAG_ARRAY                                              = 0x8079
const GL_IMAGE_BUFFER                                                 = 0x9051
const GL_TEXTURE_WRAP_R                                               = 0x8072
const GL_QUERY_COUNTER_BITS                                           = 0x8864
const GL_DECAL                                                        = 0x2101
const GL_RG32I                                                        = 0x823B
const GL_NUM_COMPATIBLE_SUBROUTINES                                   = 0x8E4A
const GL_ATOMIC_COUNTER_BARRIER_BIT                                   = 0x00001000
const GL_INTERNALFORMAT_PREFERRED                                     = 0x8270
const GL_ONE_MINUS_DST_ALPHA                                          = 0x0305
const GL_COLOR_ATTACHMENT8                                            = 0x8CE8
const GL_VIEW_CLASS_24_BITS                                           = 0x82C9
const GL_RGB565                                                       = 0x8D62
const GL_MAX_TESS_CONTROL_IMAGE_UNIFORMS                              = 0x90CB
const GL_DEBUG_OUTPUT                                                 = 0x92E0
const GL_COMPRESSED_SIGNED_RED_RGTC1                                  = 0x8DBC
const GL_PACK_SKIP_PIXELS                                             = 0x0D04
const GL_SECONDARY_COLOR_ARRAY_TYPE                                   = 0x845B
const GL_TEXTURE_GREEN_SIZE                                           = 0x805D
const GL_EXP2                                                         = 0x0801
const GL_LIGHT1                                                       = 0x4001
const GL_INT_IMAGE_3D                                                 = 0x9059
const GL_MAX_COMBINED_DIMENSIONS                                      = 0x8282
const GL_DRAW_BUFFER13                                                = 0x8832
const GL_DEPTH                                                        = 0x1801
const GL_MAX_PATCH_VERTICES                                           = 0x8E7D
const GL_CULL_FACE_MODE                                               = 0x0B45
const GL_CLIP_PLANE5                                                  = 0x3005
const GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT                            = 0x8CD6
const GL_COMPRESSED_RGB                                               = 0x84ED
const GL_ALPHA_BIAS                                                   = 0x0D1D
const GL_TEXTURE_GEN_S                                                = 0x0C60
const GL_FRAGMENT_SHADER_BIT                                          = 0x00000002
const GL_SIGNALED                                                     = 0x9119
const GL_INT_IMAGE_2D_ARRAY                                           = 0x905E
const GL_MAP2_TEXTURE_COORD_1                                         = 0x0DB3
const GL_FLOAT_MAT4x3                                                 = 0x8B6A
const GL_ACTIVE_RESOURCES                                             = 0x92F5
const GL_SAMPLER_2D                                                   = 0x8B5E
const GL_VERTEX_BINDING_DIVISOR                                       = 0x82D6
const GL_TEXTURE_DEPTH_SIZE                                           = 0x884A
const GL_SRC0_RGB                                                     = 0x8580
const GL_AND_REVERSE                                                  = 0x1502
const GL_UNPACK_COMPRESSED_BLOCK_WIDTH                                = 0x9127
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
const GL_TEXTURE_VIEW_NUM_LAYERS                                      = 0x82DE
const GL_RG8                                                          = 0x822B
const GL_LINE_LOOP                                                    = 0x0002
const GL_RGB8UI                                                       = 0x8D7D
const GL_PIXEL_PACK_BUFFER                                            = 0x88EB
const GL_GEOMETRY_VERTICES_OUT                                        = 0x8916
const GL_DEBUG_CALLBACK_FUNCTION                                      = 0x8244
const GL_COMPRESSED_ALPHA                                             = 0x84E9
const GL_FLOAT_MAT2x3                                                 = 0x8B65
const GL_ALPHA_TEST                                                   = 0x0BC0
const GL_R16UI                                                        = 0x8234
const GL_MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS                 = 0x8E1E
const GL_SYNC_CONDITION                                               = 0x9113
const GL_COLOR_ATTACHMENT11                                           = 0x8CEB
const GL_BOOL_VEC2                                                    = 0x8B57
const GL_READ_ONLY                                                    = 0x88B8
const GL_PROGRAM_BINARY_RETRIEVABLE_HINT                              = 0x8257
const GL_COMPUTE_SHADER                                               = 0x91B9
const GL_VIEW_CLASS_BPTC_FLOAT                                        = 0x82D3
const GL_R16F                                                         = 0x822D
const GL_LIGHT6                                                       = 0x4006
const GL_SECONDARY_COLOR_ARRAY_SIZE                                   = 0x845A
const GL_SAMPLER_CUBE_SHADOW                                          = 0x8DC5
const GL_VIEWPORT_SUBPIXEL_BITS                                       = 0x825C
const GL_RED_BITS                                                     = 0x0D52
const GL_COMPARE_REF_TO_TEXTURE                                       = 0x884E
const GL_STENCIL_BACK_REF                                             = 0x8CA3
const GL_PREVIOUS                                                     = 0x8578
const GL_STENCIL_BACK_FUNC                                            = 0x8800
const GL_COMPRESSED_LUMINANCE                                         = 0x84EA
const GL_BITMAP_TOKEN                                                 = 0x0704
const GL_CLIP_DISTANCE7                                               = 0x3007
const GL_TEXTURE_COMPRESSED_BLOCK_HEIGHT                              = 0x82B2
const GL_UNSIGNED_SHORT_4_4_4_4_REV                                   = 0x8365
const GL_VIEW_CLASS_96_BITS                                           = 0x82C5
const GL_TEXTURE4                                                     = 0x84C4
const GL_ACCUM_GREEN_BITS                                             = 0x0D59
const GL_POINT_SIZE_RANGE                                             = 0x0B12
const GL_UNSIGNED_BYTE_3_3_2                                          = 0x8032
const GL_TEXTURE_SWIZZLE_A                                            = 0x8E45
const GL_FRACTIONAL_ODD                                               = 0x8E7B
const GL_MAX_VERTEX_OUTPUT_COMPONENTS                                 = 0x9122
const GL_MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS                       = 0x90D8
const GL_WRITE_ONLY                                                   = 0x88B9
const GL_IMPLEMENTATION_COLOR_READ_TYPE                               = 0x8B9A
const GL_SHADER_BINARY_FORMATS                                        = 0x8DF8
const GL_COMPRESSED_RED                                               = 0x8225
const GL_PIXEL_MAP_A_TO_A                                             = 0x0C79
const GL_TEXTURE_COMPONENTS                                           = 0x1003
const GL_INVALID_VALUE                                                = 0x0501
const GL_GEOMETRY_SUBROUTINE_UNIFORM                                  = 0x92F1
const GL_CLAMP_READ_COLOR                                             = 0x891C
const GL_ACCUM                                                        = 0x0100
const GL_RGB_SCALE                                                    = 0x8573
const GL_PIXEL_MAP_S_TO_S_SIZE                                        = 0x0CB1
const GL_CURRENT_RASTER_SECONDARY_COLOR                               = 0x845F
const GL_NUM_SAMPLE_COUNTS                                            = 0x9380
const GL_SIMULTANEOUS_TEXTURE_AND_STENCIL_TEST                        = 0x82AD
const GL_RASTERIZER_DISCARD                                           = 0x8C89
const GL_VERTEX_ARRAY_TYPE                                            = 0x807B
const GL_SRGB8                                                        = 0x8C41
const GL_SINGLE_COLOR                                                 = 0x81F9
const GL_RG_SNORM                                                     = 0x8F91
const GL_UNSIGNED_INT_IMAGE_2D_RECT                                   = 0x9065
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
const GL_SAMPLE_SHADING                                               = 0x8C36
const GL_FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS                   = 0x9314
const GL_TEXTURE_GEN_Q                                                = 0x0C63
const GL_TEXTURE_DEPTH_TYPE                                           = 0x8C16
const GL_MAX_TESS_PATCH_COMPONENTS                                    = 0x8E84
const GL_SAMPLER_CUBE_MAP_ARRAY                                       = 0x900C
const GL_TEXTURE_STACK_DEPTH                                          = 0x0BA5
const GL_SCISSOR_TEST                                                 = 0x0C11
const GL_LIGHT2                                                       = 0x4002
const GL_STEREO                                                       = 0x0C33
const GL_TEXTURE_COMPRESSED_IMAGE_SIZE                                = 0x86A0
const GL_AUTO_NORMAL                                                  = 0x0D80
const GL_TEXTURE_LUMINANCE_TYPE                                       = 0x8C14
const GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS                         = 0x8DE1
const GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_GEOMETRY_SHADER          = 0x92CA
const GL_TEXTURE22                                                    = 0x84D6
const GL_IMAGE_CLASS_1_X_8                                            = 0x82C1
const GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTER_INDICES          = 0x92C6
const GL_CLAMP_TO_EDGE                                                = 0x812F
const GL_CLIP_DISTANCE6                                               = 0x3006
const GL_ZOOM_X                                                       = 0x0D16
const GL_DRAW_BUFFER0                                                 = 0x8825
const GL_FRAGMENT_INTERPOLATION_OFFSET_BITS                           = 0x8E5D
const GL_ACTIVE_TEXTURE                                               = 0x84E0
const GL_UNSIGNED_INT_VEC2                                            = 0x8DC6
const GL_MAX_EVAL_ORDER                                               = 0x0D30
const GL_TEXTURE_DEPTH                                                = 0x8071
const GL_FRONT_RIGHT                                                  = 0x0401
const GL_MAX_COMBINED_ATOMIC_COUNTERS                                 = 0x92D7
const GL_DEBUG_LOGGED_MESSAGES                                        = 0x9145
const GL_DEPTH_RANGE                                                  = 0x0B70
const GL_ACTIVE_PROGRAM                                               = 0x8259
const GL_DEBUG_SOURCE_API                                             = 0x8246
const GL_X4_BYTES                                                     = 0x1409
const GL_NORMAL_ARRAY                                                 = 0x8075
const GL_BLEND_SRC_RGB                                                = 0x80C9
const GL_LINE_RESET_TOKEN                                             = 0x0707
const GL_MAP_INVALIDATE_BUFFER_BIT                                    = 0x0008
const GL_ONE                                                          = 1
const GL_DEBUG_TYPE_MARKER                                            = 0x8268
const GL_STENCIL_PASS_DEPTH_PASS                                      = 0x0B96
const GL_NO_ERROR                                                     = 0
const GL_SMOOTH_POINT_SIZE_RANGE                                      = 0x0B12
const GL_PROXY_TEXTURE_2D_ARRAY                                       = 0x8C1B
const GL_AUX_BUFFERS                                                  = 0x0C00
const GL_MAX_TEXTURE_STACK_DEPTH                                      = 0x0D39
const GL_CLIP_DISTANCE4                                               = 0x3004
const GL_DOUBLE_VEC3                                                  = 0x8FFD
const GL_LEQUAL                                                       = 0x0203
const GL_TIMESTAMP                                                    = 0x8E28
const GL_POINT_SIZE_MAX                                               = 0x8127
const GL_TESS_EVALUATION_SHADER_BIT                                   = 0x00000010
const GL_MAX_TEXTURE_COORDS                                           = 0x8871
const GL_IMAGE_BINDING_LAYER                                          = 0x8F3D
const GL_NONE                                                         = 0
const GL_BUFFER_SIZE                                                  = 0x8764
const GL_PIXEL_MAP_B_TO_B                                             = 0x0C78
const GL_INT_VEC4                                                     = 0x8B55
const GL_MAX_FRAGMENT_INTERPOLATION_OFFSET                            = 0x8E5C
const GL_RGB16_SNORM                                                  = 0x8F9A
const GL_OR_INVERTED                                                  = 0x150D
const GL_SAMPLE_MASK                                                  = 0x8E51
const GL_INTERNALFORMAT_GREEN_TYPE                                    = 0x8279
const GL_TESS_GEN_VERTEX_ORDER                                        = 0x8E78
const GL_PACK_SKIP_ROWS                                               = 0x0D03
const GL_NUM_COMPRESSED_TEXTURE_FORMATS                               = 0x86A2
const GL_MAX_COMBINED_SHADER_OUTPUT_RESOURCES                         = 0x8F39
const GL_RESCALE_NORMAL                                               = 0x803A
const GL_DEPTH_COMPONENT24                                            = 0x81A6
const GL_BACK_LEFT                                                    = 0x0402
const GL_MAP2_TEXTURE_COORD_4                                         = 0x0DB6
const GL_COLOR                                                        = 0x1800
const GL_INVALID_INDEX                                                = 0xFFFFFFFF
const GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_CONTROL_SHADER              = 0x84F0
const GL_CONSTANT                                                     = 0x8576
const GL_INT_VEC2                                                     = 0x8B53
const GL_PROGRAM_OUTPUT                                               = 0x92E4
const GL_UNSIGNED_SHORT                                               = 0x1403
const GL_VERTEX_ARRAY_BINDING                                         = 0x85B5
const GL_RED_SNORM                                                    = 0x8F90
const GL_MODULATE                                                     = 0x2100
const GL_UNSIGNED_INT                                                 = 0x1405
const GL_LUMINANCE4_ALPHA4                                            = 0x8043
const GL_X3D_COLOR                                                    = 0x0602
const GL_COMPUTE_LOCAL_WORK_SIZE                                      = 0x8267
const GL_SHADER_STORAGE_BUFFER_SIZE                                   = 0x90D5
const GL_TEXTURE_BUFFER                                               = 0x8C2A
const GL_POSITION                                                     = 0x1203
const GL_COMPRESSED_INTENSITY                                         = 0x84EC
const GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS                               = 0x8B4C
const GL_COLOR_CLEAR_VALUE                                            = 0x0C22
const GL_R3_G3_B2                                                     = 0x2A10
const GL_MAX_VARYING_VECTORS                                          = 0x8DFC
const GL_IMAGE_CLASS_4_X_32                                           = 0x82B9
const GL_NUM_SHADING_LANGUAGE_VERSIONS                                = 0x82E9
const GL_MIN_MAP_BUFFER_ALIGNMENT                                     = 0x90BC
const GL_DELETE_STATUS                                                = 0x8B80
const GL_UNSIGNED_INT_VEC3                                            = 0x8DC7
const GL_TESS_EVALUATION_SUBROUTINE                                   = 0x92EA
const GL_PIXEL_MAP_G_TO_G_SIZE                                        = 0x0CB7
const GL_FLOAT_MAT4                                                   = 0x8B5C
const GL_BACK_RIGHT                                                   = 0x0403
const GL_LUMINANCE12_ALPHA4                                           = 0x8046
const GL_GEOMETRY_SHADER_BIT                                          = 0x00000004
const GL_MAX_TESS_EVALUATION_IMAGE_UNIFORMS                           = 0x90CC
const GL_VERTEX_TEXTURE                                               = 0x829B
const GL_FRONT_AND_BACK                                               = 0x0408
const GL_ACTIVE_UNIFORM_BLOCKS                                        = 0x8A36
const GL_RENDERER                                                     = 0x1F01
const GL_COLOR_ATTACHMENT10                                           = 0x8CEA
const GL_FOG_COORDINATE_SOURCE                                        = 0x8450
const GL_IMAGE_BINDING_LEVEL                                          = 0x8F3B
const GL_MAX_DEBUG_GROUP_STACK_DEPTH                                  = 0x826C
const GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE                 = 0x8CD3
const GL_ATTRIB_STACK_DEPTH                                           = 0x0BB0
const GL_LINE_STIPPLE_REPEAT                                          = 0x0B26
const GL_POLYGON_SMOOTH_HINT                                          = 0x0C53
const GL_LUMINANCE4                                                   = 0x803F
const GL_SMOOTH_POINT_SIZE_GRANULARITY                                = 0x0B13
const GL_OR_REVERSE                                                   = 0x150B
const GL_MAP2_TEXTURE_COORD_2                                         = 0x0DB4
const GL_FOG_MODE                                                     = 0x0B65
const GL_TOP_LEVEL_ARRAY_SIZE                                         = 0x930C
const GL_LUMINANCE16                                                  = 0x8042
const GL_OPERAND0_RGB                                                 = 0x8590
const GL_STENCIL_BUFFER_BIT                                           = 0x00000400
const GL_MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS                = 0x8F39
const GL_MAX_PROJECTION_STACK_DEPTH                                   = 0x0D38
const GL_ARRAY_BUFFER                                                 = 0x8892
const GL_POLYGON_SMOOTH                                               = 0x0B41
const GL_FRAMEBUFFER_ATTACHMENT_LAYERED                               = 0x8DA7
const GL_EDGE_FLAG_ARRAY_POINTER                                      = 0x8093
const GL_FOG_COORD                                                    = 0x8451
const GL_TEXTURE23                                                    = 0x84D7
const GL_INDEX_LOGIC_OP                                               = 0x0BF1
const GL_REFERENCED_BY_TESS_EVALUATION_SHADER                         = 0x9308
const GL_SHADER_IMAGE_LOAD                                            = 0x82A4
const GL_DOT3_RGBA                                                    = 0x86AF
const GL_VERTEX_ATTRIB_ARRAY_LONG                                     = 0x874E
const GL_MAX_COMPUTE_TEXTURE_IMAGE_UNITS                              = 0x91BC
const GL_IMAGE_2D_ARRAY                                               = 0x9053
const GL_NORMAL_ARRAY_POINTER                                         = 0x808F
const GL_STENCIL_INDEX1                                               = 0x8D46
const GL_TEXTURE11                                                    = 0x84CB
const GL_DRAW_INDIRECT_BUFFER                                         = 0x8F3F
const GL_COLOR_ATTACHMENT3                                            = 0x8CE3
const GL_INT_IMAGE_CUBE_MAP_ARRAY                                     = 0x905F
const GL_BLUE_SCALE                                                   = 0x0D1A
const GL_DEPTH_BITS                                                   = 0x0D56
const GL_STENCIL_BACK_PASS_DEPTH_PASS                                 = 0x8803
const GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS                         = 0x8DA8
const GL_FRAMEBUFFER_ATTACHMENT_RED_SIZE                              = 0x8212
const GL_UNIFORM_SIZE                                                 = 0x8A38
const GL_TESS_CONTROL_SUBROUTINE                                      = 0x92E9
const GL_PROGRAM_INPUT                                                = 0x92E3
const GL_TIMEOUT_EXPIRED                                              = 0x911B
const GL_IMAGE_FORMAT_COMPATIBILITY_BY_SIZE                           = 0x90C8
const GL_LIGHT_MODEL_TWO_SIDE                                         = 0x0B52
const GL_INT_SAMPLER_2D_ARRAY                                         = 0x8DCF
const GL_IMAGE_CLASS_2_X_16                                           = 0x82BD
const GL_READ_BUFFER                                                  = 0x0C02
const GL_SLUMINANCE_ALPHA                                             = 0x8C44
const GL_RGB16UI                                                      = 0x8D77
const GL_MAX_DEBUG_MESSAGE_LENGTH                                     = 0x9143
const GL_NORMALIZE                                                    = 0x0BA1
const GL_CURRENT_COLOR                                                = 0x0B00
const GL_FRAMEBUFFER_COMPLETE                                         = 0x8CD5
const GL_FASTEST                                                      = 0x1101
const GL_INDEX_ARRAY_POINTER                                          = 0x8091
const GL_UNIFORM_BUFFER                                               = 0x8A11
const GL_MULTISAMPLE_BIT                                              = 0x20000000
const GL_CURRENT_SECONDARY_COLOR                                      = 0x8459
const GL_UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER                    = 0x8A44
const GL_DEBUG_SOURCE_OTHER                                           = 0x824B
const GL_MAP1_TEXTURE_COORD_1                                         = 0x0D93
const GL_SHADER_STORAGE_BLOCK                                         = 0x92E6
const GL_QUERY_NO_WAIT                                                = 0x8E14
const GL_C4UB_V2F                                                     = 0x2A22
const GL_AUX2                                                         = 0x040B
const GL_CURRENT_RASTER_POSITION_VALID                                = 0x0B08
const GL_MAX_COLOR_ATTACHMENTS                                        = 0x8CDF
const GL_COLOR_MATERIAL                                               = 0x0B57
const GL_OFFSET                                                       = 0x92FC
const GL_R16I                                                         = 0x8233
const GL_UNIFORM_BLOCK_REFERENCED_BY_COMPUTE_SHADER                   = 0x90EC
const GL_NAME_STACK_DEPTH                                             = 0x0D70
const GL_PACK_COMPRESSED_BLOCK_HEIGHT                                 = 0x912C
const GL_AND_INVERTED                                                 = 0x1504
const GL_LIGHT7                                                       = 0x4007
const GL_DRAW_BUFFER3                                                 = 0x8828
const GL_NICEST                                                       = 0x1102
const GL_MAX_GEOMETRY_IMAGE_UNIFORMS                                  = 0x90CD
const GL_TRANSFORM_FEEDBACK_BUFFER_BINDING                            = 0x8C8F
const GL_MAP_READ_BIT                                                 = 0x0001
const GL_PIXEL_MAP_I_TO_G                                             = 0x0C73
const GL_MAX_VERTEX_UNIFORM_BLOCKS                                    = 0x8A2B
const GL_IMAGE_PIXEL_TYPE                                             = 0x82AA
const GL_KEEP                                                         = 0x1E00
const GL_GEOMETRY_SUBROUTINE                                          = 0x92EB
const GL_SOURCE0_ALPHA                                                = 0x8588
const GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS                   = 0x8C80
const GL_MAX_CLIP_DISTANCES                                           = 0x0D32
const GL_INVALID_FRAMEBUFFER_OPERATION                                = 0x0506
const GL_BUFFER_VARIABLE                                              = 0x92E5
const GL_ZERO                                                         = 0
const GL_ACCUM_CLEAR_VALUE                                            = 0x0B80
const GL_FRAGMENT_SUBROUTINE                                          = 0x92EC
const GL_MAX_SAMPLES                                                  = 0x8D57
const GL_INDEX_ARRAY_STRIDE                                           = 0x8086
const GL_MAX_HEIGHT                                                   = 0x827F
const GL_PRIMITIVE_RESTART_FIXED_INDEX                                = 0x8D69
const GL_COLOR_ATTACHMENT4                                            = 0x8CE4
const GL_AMBIENT_AND_DIFFUSE                                          = 0x1602
const GL_COLOR_ATTACHMENT9                                            = 0x8CE9
const GL_DRAW_BUFFER                                                  = 0x0C01
const GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_EVALUATION_SHADER           = 0x84F1
const GL_BYTE                                                         = 0x1400
const GL_COMPARE_R_TO_TEXTURE                                         = 0x884E
const GL_GREATER                                                      = 0x0204
const GL_TEXTURE_GATHER_SHADOW                                        = 0x82A3
const GL_COPY                                                         = 0x1503
const GL_NORMAL_ARRAY_BUFFER_BINDING                                  = 0x8897
const GL_MAX_FRAGMENT_SHADER_STORAGE_BLOCKS                           = 0x90DA
const GL_FRAMEBUFFER_SRGB                                             = 0x8DB9
const GL_ADD_SIGNED                                                   = 0x8574
const GL_READ_PIXELS_TYPE                                             = 0x828E
const GL_DONT_CARE                                                    = 0x1100
const GL_IMAGE_BINDING_NAME                                           = 0x8F3A
const GL_FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE                        = 0x8211
const GL_MAX_ELEMENTS_VERTICES                                        = 0x80E8
const GL_UNSIGNED_INT_SAMPLER_2D_ARRAY                                = 0x8DD7
const GL_DEBUG_SEVERITY_HIGH                                          = 0x9146
const GL_DST_ALPHA                                                    = 0x0304
const GL_INTERNALFORMAT_ALPHA_TYPE                                    = 0x827B
const GL_DEPTH_STENCIL_TEXTURE_MODE                                   = 0x90EA
const GL_IS_ROW_MAJOR                                                 = 0x9300
const GL_RGBA32F                                                      = 0x8814
const GL_ANY_SAMPLES_PASSED                                           = 0x8C2F
const GL_MAX_LIST_NESTING                                             = 0x0B31
const GL_UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES                         = 0x8A43
const GL_POINT_DISTANCE_ATTENUATION                                   = 0x8129
const GL_COLOR_MATERIAL_PARAMETER                                     = 0x0B56
const GL_LIGHTING                                                     = 0x0B50
const GL_UNIFORM_BLOCK                                                = 0x92E2
const GL_INTERNALFORMAT_SUPPORTED                                     = 0x826F
const GL_MAX_VERTEX_ATTRIB_BINDINGS                                   = 0x82DA
const GL_ELEMENT_ARRAY_BUFFER_BINDING                                 = 0x8895
const GL_INT_SAMPLER_2D_MULTISAMPLE_ARRAY                             = 0x910C
const GL_TOP_LEVEL_ARRAY_STRIDE                                       = 0x930D
const GL_AND                                                          = 0x1501
const GL_SPOT_DIRECTION                                               = 0x1204
const GL_MAX_FRAMEBUFFER_LAYERS                                       = 0x9317
const GL_PIXEL_MAP_I_TO_B_SIZE                                        = 0x0CB4
const GL_ATOMIC_COUNTER_BUFFER_START                                  = 0x92C2
const GL_MAX_ATOMIC_COUNTER_BUFFER_BINDINGS                           = 0x92DC
const GL_UNSIGNED_INT_SAMPLER_BUFFER                                  = 0x8DD8
const GL_COPY_PIXEL_TOKEN                                             = 0x0706
const GL_TRIANGLE_FAN                                                 = 0x0006
const GL_RENDERBUFFER_DEPTH_SIZE                                      = 0x8D54
const GL_DISPATCH_INDIRECT_BUFFER                                     = 0x90EE
const GL_MAX_SERVER_WAIT_TIMEOUT                                      = 0x9111
const GL_DEBUG_SOURCE_THIRD_PARTY                                     = 0x8249
const GL_FRAMEBUFFER_DEFAULT_HEIGHT                                   = 0x9311
const GL_TEXTURE_VIEW_MIN_LAYER                                       = 0x82DD
const GL_PATCH_VERTICES                                               = 0x8E72
const GL_DOUBLE_MAT3x4                                                = 0x8F4C
const GL_UNSIGNED_BYTE_2_3_3_REV                                      = 0x8362
const GL_VIEW_CLASS_S3TC_DXT5_RGBA                                    = 0x82CF
const GL_MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS                   = 0x92CE
const GL_RG8UI                                                        = 0x8238
const GL_SHADER_STORAGE_BUFFER                                        = 0x90D2
const GL_GREEN_BIAS                                                   = 0x0D19
const GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT                              = 0x00000001
const GL_RGB12                                                        = 0x8053
const GL_POINT_SIZE_GRANULARITY                                       = 0x0B13
const GL_FEEDBACK_BUFFER_SIZE                                         = 0x0DF1
const GL_TRUE                                                         = 1
const GL_PACK_SKIP_IMAGES                                             = 0x806B
const GL_DOUBLE_MAT4                                                  = 0x8F48
const GL_INTERPOLATE                                                  = 0x8575
const GL_RGB32I                                                       = 0x8D83
const GL_NUM_PROGRAM_BINARY_FORMATS                                   = 0x87FE
const GL_RGB8                                                         = 0x8051
const GL_COMPRESSED_LUMINANCE_ALPHA                                   = 0x84EB
const GL_FRAMEBUFFER_DEFAULT_LAYERS                                   = 0x9312
const GL_T2F_C3F_V3F                                                  = 0x2A2A
const GL_TEXTURE_CUBE_MAP_POSITIVE_Z                                  = 0x8519
const GL_FOG_COORD_ARRAY_POINTER                                      = 0x8456
const GL_MAX_PROGRAM_TEXTURE_GATHER_COMPONENTS                        = 0x8F9F
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
const GL_FRAGMENT_TEXTURE                                             = 0x829F
const GL_FRAMEBUFFER_BLEND                                            = 0x828B
const GL_MAX_TESS_GEN_LEVEL                                           = 0x8E7E
const GL_MAX_VERTEX_ATTRIBS                                           = 0x8869
const GL_LINE_STRIP                                                   = 0x0003
const GL_VERSION                                                      = 0x1F02
const GL_CLIENT_VERTEX_ARRAY_BIT                                      = 0x00000002
const GL_PROJECTION_STACK_DEPTH                                       = 0x0BA4
const GL_VERTEX_ATTRIB_BINDING                                        = 0x82D4
const GL_SIMULTANEOUS_TEXTURE_AND_DEPTH_WRITE                         = 0x82AE
const GL_TEXTURE25                                                    = 0x84D9
const GL_SAMPLE_COVERAGE_VALUE                                        = 0x80AA
const GL_VERTEX_ATTRIB_ARRAY_POINTER                                  = 0x8645
const GL_MAX_TESS_EVALUATION_ATOMIC_COUNTERS                          = 0x92D4
const GL_BUFFER_DATA_SIZE                                             = 0x9303
const GL_TEXTURE_RED_TYPE                                             = 0x8C10
const GL_TEXTURE_2D_ARRAY                                             = 0x8C1A
const GL_CURRENT_FOG_COORDINATE                                       = 0x8453
const GL_CURRENT_BIT                                                  = 0x00000001
const GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_CONTROL_SHADER      = 0x92C8
const GL_MAX_SHADER_STORAGE_BLOCK_SIZE                                = 0x90DE
const GL_FLOAT_MAT3x4                                                 = 0x8B68
const GL_SHORT                                                        = 0x1402
const GL_POINT_BIT                                                    = 0x00000002
const GL_POLYGON_BIT                                                  = 0x00000008
const GL_QUERY_WAIT                                                   = 0x8E13
const GL_BOOL                                                         = 0x8B56
const GL_FRAMEBUFFER_RENDERABLE                                       = 0x8289
const GL_TRANSFORM_FEEDBACK_BUFFER_START                              = 0x8C84
const GL_BLUE_BIAS                                                    = 0x0D1B
const GL_DYNAMIC_READ                                                 = 0x88E9
const GL_IMAGE_COMPATIBILITY_CLASS                                    = 0x82A8
const GL_TEXTURE20                                                    = 0x84D4
const GL_ACTIVE_SUBROUTINE_UNIFORMS                                   = 0x8DE6
const GL_SPECULAR                                                     = 0x1202
const GL_RENDER                                                       = 0x1C00
const GL_MAX_CUBE_MAP_TEXTURE_SIZE                                    = 0x851C
const GL_INT_IMAGE_BUFFER                                             = 0x905C
const GL_FIXED                                                        = 0x140C
const GL_FRAGMENT_SUBROUTINE_UNIFORM                                  = 0x92F2
const GL_VERTEX_ATTRIB_ARRAY_DIVISOR                                  = 0x88FE
const GL_X3D_COLOR_TEXTURE                                            = 0x0603
const GL_IMAGE_CLASS_1_X_32                                           = 0x82BB
const GL_VIEWPORT_BOUNDS_RANGE                                        = 0x825D
const GL_POINT_SMOOTH_HINT                                            = 0x0C51
const GL_DOT3_RGB                                                     = 0x86AE
const GL_MAX_PIXEL_MAP_TABLE                                          = 0x0D34
const GL_STENCIL_BACK_PASS_DEPTH_FAIL                                 = 0x8802
const GL_TEXTURE_BINDING_RECTANGLE                                    = 0x84F6
const GL_WAIT_FAILED                                                  = 0x911D
const GL_SHADER_STORAGE_BUFFER_BINDING                                = 0x90D3
const GL_IMAGE_TEXEL_SIZE                                             = 0x82A7
const GL_RG8I                                                         = 0x8237
const GL_CLIP_PLANE0                                                  = 0x3000
const GL_INDEX_ARRAY_BUFFER_BINDING                                   = 0x8899
const GL_CLIP_DISTANCE1                                               = 0x3001
const GL_CURRENT_RASTER_TEXTURE_COORDS                                = 0x0B06
const GL_COMPILE_AND_EXECUTE                                          = 0x1301
const GL_UNIFORM_BLOCK_DATA_SIZE                                      = 0x8A40
const GL_BLEND_SRC                                                    = 0x0BE1
const GL_NEAREST_MIPMAP_LINEAR                                        = 0x2702
const GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY                          = 0x900F
const GL_LUMINANCE16_ALPHA16                                          = 0x8048
const GL_SPOT_EXPONENT                                                = 0x1205
const GL_BLEND_DST                                                    = 0x0BE0
const GL_SHADE_MODEL                                                  = 0x0B54
const GL_TEXTURE_ALPHA_TYPE                                           = 0x8C13
const GL_TEXTURE_COMPRESSION_HINT                                     = 0x84EF
const GL_UNIFORM_BLOCK_NAME_LENGTH                                    = 0x8A41
const GL_RGBA8UI                                                      = 0x8D7C
const GL_TESS_EVALUATION_SUBROUTINE_UNIFORM                           = 0x92F0
const GL_ACTIVE_ATTRIBUTE_MAX_LENGTH                                  = 0x8B8A
const GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE                           = 0x8CD0
const GL_TRANSPOSE_TEXTURE_MATRIX                                     = 0x84E5
const GL_SAMPLER_2D_RECT                                              = 0x8B63
const GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL                         = 0x8CD2
const GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2                     = 0x9276
const GL_CLIP_PLANE1                                                  = 0x3001
const GL_VERTEX_ATTRIB_ARRAY_ENABLED                                  = 0x8622
const GL_FEEDBACK_BUFFER_POINTER                                      = 0x0DF0
const GL_UNIFORM_BLOCK_BINDING                                        = 0x8A3F
const GL_UNIFORM_NAME_LENGTH                                          = 0x8A39
const GL_TIME_ELAPSED                                                 = 0x88BF
const GL_VERTEX_ARRAY_STRIDE                                          = 0x807C
const GL_NUM_EXTENSIONS                                               = 0x821D
const GL_MAX_CLIP_PLANES                                              = 0x0D32
const GL_READ_PIXELS                                                  = 0x828C
const GL_DEPTH_WRITEMASK                                              = 0x0B72
const GL_LINEAR                                                       = 0x2601
const GL_RGB10_A2                                                     = 0x8059
const GL_INDEX_WRITEMASK                                              = 0x0C21
const GL_MIN_SAMPLE_SHADING_VALUE                                     = 0x8C37
const GL_FOG_COORD_ARRAY                                              = 0x8457
const GL_UNIFORM_OFFSET                                               = 0x8A3B
const GL_SOURCE2_RGB                                                  = 0x8582
const GL_TEXTURE_SWIZZLE_B                                            = 0x8E44
const GL_COMBINE                                                      = 0x8570
const GL_FLOAT_VEC3                                                   = 0x8B51
const GL_DRAW_BUFFER5                                                 = 0x882A
const GL_TEXTURE_ENV_COLOR                                            = 0x2201
const GL_MEDIUM_FLOAT                                                 = 0x8DF1
const GL_EXP                                                          = 0x0800
const GL_DST_COLOR                                                    = 0x0306
const GL_TEXTURE_WIDTH                                                = 0x1000
const GL_UNSIGNED_INT_2_10_10_10_REV                                  = 0x8368
const GL_MAX_FRAGMENT_UNIFORM_COMPONENTS                              = 0x8B49
const GL_UNIFORM_BUFFER_BINDING                                       = 0x8A28
const GL_TEXTURE_BUFFER_SIZE                                          = 0x919E
const GL_TRANSFORM_FEEDBACK_VARYING                                   = 0x92F4
const GL_SRGB_ALPHA                                                   = 0x8C42
const GL_ACTIVE_SUBROUTINE_UNIFORM_MAX_LENGTH                         = 0x8E49
const GL_V2F                                                          = 0x2A20
const GL_SECONDARY_COLOR_ARRAY_BUFFER_BINDING                         = 0x889C
const GL_NEVER                                                        = 0x0200
const GL_SLUMINANCE8                                                  = 0x8C47
const GL_RED_INTEGER                                                  = 0x8D94
const GL_SAMPLER_2D_MULTISAMPLE                                       = 0x9108
const GL_MAX_TESS_EVALUATION_UNIFORM_BLOCKS                           = 0x8E8A
const GL_RENDERBUFFER_INTERNAL_FORMAT                                 = 0x8D44
const GL_COLOR_ATTACHMENT13                                           = 0x8CED
const GL_UNPACK_IMAGE_HEIGHT                                          = 0x806E
const GL_SYNC_GPU_COMMANDS_COMPLETE                                   = 0x9117
const GL_PROXY_TEXTURE_2D                                             = 0x8064
const GL_MAP_WRITE_BIT                                                = 0x0002
const GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2                    = 0x9277
const GL_DEBUG_TYPE_OTHER                                             = 0x8251
const GL_VIEW_CLASS_RGTC2_RG                                          = 0x82D1
const GL_TEXTURE_COMPARE_MODE                                         = 0x884C
const GL_TEXTURE0                                                     = 0x84C0
const GL_ACTIVE_UNIFORMS                                              = 0x8B86
const GL_ALPHA4                                                       = 0x803B
const GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET                            = 0x8E5E
const GL_MAP2_COLOR_4                                                 = 0x0DB0
const GL_CURRENT_QUERY                                                = 0x8865
const GL_SAMPLER_1D                                                   = 0x8B5D
const GL_T2F_V3F                                                      = 0x2A27
const GL_FEEDBACK                                                     = 0x1C01
const GL_LINES_ADJACENCY                                              = 0x000A
const GL_INT_SAMPLER_CUBE                                             = 0x8DCC
const GL_STENCIL_RENDERABLE                                           = 0x8288
const GL_MAP2_NORMAL                                                  = 0x0DB2
const GL_BACK                                                         = 0x0405
const GL_SMOOTH                                                       = 0x1D01
const GL_BGR                                                          = 0x80E0
const GL_STENCIL                                                      = 0x1802
const GL_REFERENCED_BY_VERTEX_SHADER                                  = 0x9306
const GL_TEXTURE_3D                                                   = 0x806F
const GL_UNPACK_SWAP_BYTES                                            = 0x0CF0
const GL_PROGRAM_SEPARABLE                                            = 0x8258
const GL_ALWAYS                                                       = 0x0207
const GL_UNSIGNED_INT_IMAGE_BUFFER                                    = 0x9067
const GL_RENDERBUFFER_HEIGHT                                          = 0x8D43
const GL_COLOR_SUM                                                    = 0x8458
const GL_TESS_EVALUATION_TEXTURE                                      = 0x829D
const GL_LINEAR_ATTENUATION                                           = 0x1208
const GL_PIXEL_MAP_R_TO_R                                             = 0x0C76
const GL_DOUBLE_MAT4x2                                                = 0x8F4D
const GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS                             = 0x8B4D
const GL_AUX0                                                         = 0x0409
const GL_ZOOM_Y                                                       = 0x0D17
const GL_UNIFORM_BUFFER_START                                         = 0x8A29
const GL_CONTEXT_PROFILE_MASK                                         = 0x9126
const GL_TEXTURE_VIEW_MIN_LEVEL                                       = 0x82DB
const GL_SRC2_ALPHA                                                   = 0x858A
const GL_CURRENT_NORMAL                                               = 0x0B02
const GL_DEBUG_NEXT_LOGGED_MESSAGE_LENGTH                             = 0x8243
const GL_SELECT                                                       = 0x1C02
const GL_MAX_TEXTURE_UNITS                                            = 0x84E2
const GL_COLOR_ARRAY_BUFFER_BINDING                                   = 0x8898
const GL_MAX_VERTEX_SHADER_STORAGE_BLOCKS                             = 0x90D6
const GL_TRANSFORM_FEEDBACK_BARRIER_BIT                               = 0x00000800
const GL_SAMPLE_POSITION                                              = 0x8E50
const GL_UNSIGNED_INT_IMAGE_3D                                        = 0x9064
const GL_R8                                                           = 0x8229
const GL_LIST_INDEX                                                   = 0x0B33
const GL_SHININESS                                                    = 0x1601
const GL_CLAMP_FRAGMENT_COLOR                                         = 0x891B
const GL_TEXTURE_COMPARE_FUNC                                         = 0x884D
const GL_DECR                                                         = 0x1E03
const GL_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER                           = 0x8CDB
const GL_MAX_TESS_CONTROL_INPUT_COMPONENTS                            = 0x886C
const GL_INTERNALFORMAT_RED_SIZE                                      = 0x8271
const GL_MAX_SAMPLE_MASK_WORDS                                        = 0x8E59
const GL_DISPATCH_INDIRECT_BUFFER_BINDING                             = 0x90EF
const GL_AUX3                                                         = 0x040C
const GL_FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING                        = 0x8210
const GL_ALPHA_TEST_FUNC                                              = 0x0BC1
const GL_SAMPLER_1D_ARRAY                                             = 0x8DC0
const GL_PIXEL_MAP_I_TO_G_SIZE                                        = 0x0CB3
const GL_TEXTURE_BINDING_2D_ARRAY                                     = 0x8C1D
const GL_CLEAR_BUFFER                                                 = 0x82B4
const GL_STENCIL_VALUE_MASK                                           = 0x0B93
const GL_MAX_TESS_EVALUATION_INPUT_COMPONENTS                         = 0x886D
const GL_RGB32UI                                                      = 0x8D71
const GL_MAX_TEXTURE_IMAGE_UNITS                                      = 0x8872
const GL_COLOR_ATTACHMENT15                                           = 0x8CEF
const GL_PIXEL_UNPACK_BUFFER                                          = 0x88EC
const GL_UNIFORM_BARRIER_BIT                                          = 0x00000004
const GL_MAP2_TEXTURE_COORD_3                                         = 0x0DB5
const GL_BLEND                                                        = 0x0BE2
const GL_IMAGE_BINDING_ACCESS                                         = 0x8F3E
const GL_GREEN                                                        = 0x1904
const GL_IMAGE_BINDING_LAYERED                                        = 0x8F3C
const GL_PIXEL_PACK_BUFFER_BINDING                                    = 0x88ED
const GL_RGB                                                          = 0x1907
const GL_MAX_COMPUTE_WORK_GROUP_COUNT                                 = 0x91BE
const GL_ALPHA_INTEGER                                                = 0x8D97
const GL_DEBUG_SOURCE_WINDOW_SYSTEM                                   = 0x8247
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
const GL_REFERENCED_BY_FRAGMENT_SHADER                                = 0x930A
const GL_COMPRESSED_SRGB                                              = 0x8C48
const GL_DRAW_BUFFER1                                                 = 0x8826
const GL_ISOLINES                                                     = 0x8E7A
const GL_TEXTURE_LUMINANCE_SIZE                                       = 0x8060
const GL_COLOR_ARRAY_POINTER                                          = 0x8090
const GL_ACTIVE_SUBROUTINES                                           = 0x8DE5
const GL_TEXTURE_BINDING_2D                                           = 0x8069
const GL_ALPHA                                                        = 0x1906
const GL_ATOMIC_COUNTER_BUFFER_BINDING                                = 0x92C1
const GL_UNSIGNED_INT_IMAGE_2D_ARRAY                                  = 0x9069
const GL_MAX_COMPUTE_LOCAL_INVOCATIONS                                = 0x90EB
const GL_STREAM_READ                                                  = 0x88E1
const GL_TEXTURE_WRAP_T                                               = 0x2803
const GL_ALL_ATTRIB_BITS                                              = 0xFFFFFFFF
const GL_ATOMIC_COUNTER_BUFFER_DATA_SIZE                              = 0x92C4
const GL_UNSIGNED_INT_8_8_8_8                                         = 0x8035
const GL_TEXTURE29                                                    = 0x84DD
const GL_TEXTURE_UPDATE_BARRIER_BIT                                   = 0x00000100
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
const GL_UNDEFINED_VERTEX                                             = 0x8260
const GL_UNPACK_COMPRESSED_BLOCK_HEIGHT                               = 0x9128
const GL_TEXTURE9                                                     = 0x84C9
const GL_V3F                                                          = 0x2A21
const GL_FRAGMENT_DEPTH                                               = 0x8452
const GL_DEPTH_RENDERABLE                                             = 0x8287
const GL_FOG_COLOR                                                    = 0x0B66
const GL_PROGRAM_POINT_SIZE                                           = 0x8642
const GL_MAP_COLOR                                                    = 0x0D10
const GL_DEBUG_SEVERITY_MEDIUM                                        = 0x9147
const GL_NORMAL_ARRAY_STRIDE                                          = 0x807F
const GL_TEXTURE_COORD_ARRAY_SIZE                                     = 0x8088
const GL_BLOCK_INDEX                                                  = 0x92FD
const GL_IMAGE_BINDING_FORMAT                                         = 0x906E
const GL_STENCIL_REF                                                  = 0x0B97
const GL_CLIENT_ALL_ATTRIB_BITS                                       = 0xFFFFFFFF
const GL_DOUBLE_VEC4                                                  = 0x8FFE
const GL_DEPTH_SCALE                                                  = 0x0D1E
const GL_VIEWPORT_BIT                                                 = 0x00000800
const GL_COMPRESSED_SIGNED_R11_EAC                                    = 0x9271
const GL_CLAMP_VERTEX_COLOR                                           = 0x891A
const GL_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION                     = 0x8E4C
const GL_VERTEX_ATTRIB_RELATIVE_OFFSET                                = 0x82D5
const GL_UNSIGNED_INT_SAMPLER_1D_ARRAY                                = 0x8DD6
const GL_UNSIGNED_SHORT_1_5_5_5_REV                                   = 0x8366
const GL_EMISSION                                                     = 0x1600
const GL_CURRENT_RASTER_COLOR                                         = 0x0B04
const GL_TEXTURE_RESIDENT                                             = 0x8067
const GL_COMPRESSED_SRGB8_ETC2                                        = 0x9275
const GL_MAX_NUM_COMPATIBLE_SUBROUTINES                               = 0x92F8
const GL_TEXTURE17                                                    = 0x84D1
const GL_CONTEXT_FLAG_DEBUG_BIT                                       = 0x00000002
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
const GL_STENCIL_COMPONENTS                                           = 0x8285
const GL_FRAMEBUFFER_BINDING                                          = 0x8CA6
const GL_INTERLEAVED_ATTRIBS                                          = 0x8C8C
const GL_UNIFORM_MATRIX_STRIDE                                        = 0x8A3D
const GL_SIMULTANEOUS_TEXTURE_AND_STENCIL_WRITE                       = 0x82AF
const GL_T4F_C4F_N3F_V4F                                              = 0x2A2D
const GL_RED_BIAS                                                     = 0x0D15
const GL_OPERAND2_ALPHA                                               = 0x859A
const GL_SRC_COLOR                                                    = 0x0300
const GL_POLYGON_OFFSET_LINE                                          = 0x2A02
const GL_REFERENCED_BY_COMPUTE_SHADER                                 = 0x930B
const GL_TYPE                                                         = 0x92FA
const GL_ACTIVE_UNIFORM_MAX_LENGTH                                    = 0x8B87
const GL_TEXTURE_BINDING_1D_ARRAY                                     = 0x8C1C
const GL_MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS                         = 0x8E81
const GL_POLYGON_STIPPLE_BIT                                          = 0x00000010
const GL_MAX_FRAMEBUFFER_SAMPLES                                      = 0x9318
const GL_PROJECTION_MATRIX                                            = 0x0BA7
const GL_TRIANGLE_STRIP_ADJACENCY                                     = 0x000D
const GL_MULTISAMPLE                                                  = 0x809D
const GL_MAX_NAME_LENGTH                                              = 0x92F6
const GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS                             = 0x8C29
const GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY                           = 0x9103
const GL_STENCIL_BACK_VALUE_MASK                                      = 0x8CA4
const GL_RGBA16I                                                      = 0x8D88
const GL_COLOR_INDEXES                                                = 0x1603
const GL_INVALID_ENUM                                                 = 0x0500
const GL_UNSIGNED_INT_IMAGE_2D                                        = 0x9063
const GL_NOOP                                                         = 0x1505
const GL_INDEX_SHIFT                                                  = 0x0D12
const GL_INDEX_ARRAY_TYPE                                             = 0x8085
const GL_MAX_WIDTH                                                    = 0x827E
const GL_ANY_SAMPLES_PASSED_CONSERVATIVE                              = 0x8D6A
const GL_SAMPLES                                                      = 0x80A9
const GL_TEXTURE14                                                    = 0x84CE
const GL_BUFFER_MAPPED                                                = 0x88BC
const GL_TRANSPOSE_COLOR_MATRIX                                       = 0x84E6
const GL_LOWER_LEFT                                                   = 0x8CA1
const GL_COLOR_ATTACHMENT6                                            = 0x8CE6
const GL_FRAMEBUFFER                                                  = 0x8D40
const GL_MAX_COMPUTE_SHARED_MEMORY_SIZE                               = 0x8262
const GL_TEXTURE_COMPRESSED                                           = 0x86A1
const GL_RG                                                           = 0x8227
const GL_POINT                                                        = 0x1B00
const GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT                    = 0x8CD7
const GL_PROGRAM_PIPELINE_BINDING                                     = 0x825A
const GL_SHADER                                                       = 0x82E1
const GL_INT_IMAGE_1D_ARRAY                                           = 0x905D
const GL_PROXY_TEXTURE_RECTANGLE                                      = 0x84F7
const GL_ATOMIC_COUNTER_BUFFER_SIZE                                   = 0x92C3
const GL_SAMPLE_ALPHA_TO_COVERAGE                                     = 0x809E
const GL_FLOAT_MAT4x2                                                 = 0x8B69
const GL_MAX_LABEL_LENGTH                                             = 0x82E8
const GL_VIEW_CLASS_S3TC_DXT3_RGBA                                    = 0x82CE
const GL_UNSIGNED_INT_IMAGE_1D                                        = 0x9062
const GL_TEXTURE_COORD_ARRAY                                          = 0x8078
const GL_FOG                                                          = 0x0B60
const GL_FRAGMENT_SHADER                                              = 0x8B30
const GL_RGB_INTEGER                                                  = 0x8D98
const GL_SAMPLER_CUBE_MAP_ARRAY_SHADOW                                = 0x900D
const GL_CLIENT_PIXEL_STORE_BIT                                       = 0x00000001
const GL_ATOMIC_COUNTER_BUFFER_INDEX                                  = 0x9301
const GL_MAX_SUBROUTINE_UNIFORM_LOCATIONS                             = 0x8DE8
const GL_CAVEAT_SUPPORT                                               = 0x82B8
const GL_RGBA16_SNORM                                                 = 0x8F9B
const GL_CLIP_DISTANCE3                                               = 0x3003
const GL_SAMPLE_COVERAGE                                              = 0x80A0
const GL_INTERNALFORMAT_BLUE_TYPE                                     = 0x827A
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
const GL_VIEWPORT_INDEX_PROVOKING_VERTEX                              = 0x825F
const GL_INVERT                                                       = 0x150A
const GL_LIGHT5                                                       = 0x4005
const GL_FLOAT_VEC2                                                   = 0x8B50
const GL_MAX_TESS_CONTROL_UNIFORM_COMPONENTS                          = 0x8E7F
const GL_INTERNALFORMAT_DEPTH_SIZE                                    = 0x8275
const GL_SCISSOR_BIT                                                  = 0x00080000
const GL_CLIENT_ATTRIB_STACK_DEPTH                                    = 0x0BB1
const GL_BUFFER_USAGE                                                 = 0x8765
const GL_INT_IMAGE_1D                                                 = 0x9057
const GL_MAX_COMPUTE_SHADER_STORAGE_BLOCKS                            = 0x90DB
const GL_MAX_FRAGMENT_UNIFORM_BLOCKS                                  = 0x8A2D
const GL_MIPMAP                                                       = 0x8293
const GL_CURRENT_RASTER_POSITION                                      = 0x0B07
const GL_TEXTURE_SAMPLES                                              = 0x9106
const GL_MAX_RECTANGLE_TEXTURE_SIZE                                   = 0x84F8
const GL_VERTEX_BINDING_STRIDE                                        = 0x82D8
const GL_MAX_VARYING_COMPONENTS                                       = 0x8B4B
const GL_VIEW_COMPATIBILITY_CLASS                                     = 0x82B6
const GL_STENCIL_CLEAR_VALUE                                          = 0x0B91
const GL_SAMPLER_2D_MULTISAMPLE_ARRAY                                 = 0x910B
const GL_RG16                                                         = 0x822C
const GL_REPEAT                                                       = 0x2901
const GL_UNSIGNED_SHORT_5_6_5                                         = 0x8363
const GL_RENDERBUFFER_RED_SIZE                                        = 0x8D50
const GL_DEPTH_STENCIL_ATTACHMENT                                     = 0x821A
const GL_UNPACK_COMPRESSED_BLOCK_DEPTH                                = 0x9129
const GL_FILL                                                         = 0x1B02
const GL_ONE_MINUS_SRC_COLOR                                          = 0x0301
const GL_PACK_ALIGNMENT                                               = 0x0D05
const GL_DEBUG_TYPE_PORTABILITY                                       = 0x824F
const GL_UNSIGNED_INT_5_9_9_9_REV                                     = 0x8C3E
const GL_TEXTURE2                                                     = 0x84C2
const GL_PACK_COMPRESSED_BLOCK_WIDTH                                  = 0x912B
const GL_TEXTURE_ENV                                                  = 0x2300
const GL_PIXEL_MODE_BIT                                               = 0x00000020
const GL_DOUBLE_MAT2x4                                                = 0x8F4A
const GL_BUFFER_MAP_POINTER                                           = 0x88BD
const GL_GEQUAL                                                       = 0x0206
const GL_UNSIGNALED                                                   = 0x9118
const GL_UNPACK_COMPRESSED_BLOCK_SIZE                                 = 0x912A
const GL_RED                                                          = 0x1903
const GL_BUFFER_BINDING                                               = 0x9302
const GL_MAX_FRAGMENT_UNIFORM_VECTORS                                 = 0x8DFD
const GL_FRAMEBUFFER_ATTACHMENT_GREEN_SIZE                            = 0x8213
const GL_LUMINANCE8_ALPHA8                                            = 0x8045
const GL_COLOR_ATTACHMENT14                                           = 0x8CEE
const GL_RGBA32UI                                                     = 0x8D70
const GL_PRIMARY_COLOR                                                = 0x8577
const GL_MIRRORED_REPEAT                                              = 0x8370
const GL_CLAMP_TO_BORDER                                              = 0x812D
const GL_VALIDATE_STATUS                                              = 0x8B83
const GL_COMPUTE_SUBROUTINE                                           = 0x92ED
const GL_RG8_SNORM                                                    = 0x8F95
const GL_DRAW_FRAMEBUFFER_BINDING                                     = 0x8CA6
const GL_ALL_BARRIER_BITS                                             = 0xFFFFFFFF
const GL_COEFF                                                        = 0x0A00
const GL_TEXTURE7                                                     = 0x84C7
const GL_TEXTURE6                                                     = 0x84C6
const GL_SRGB_WRITE                                                   = 0x8298
const GL_COMPRESSED_SRGB_ALPHA                                        = 0x8C49
const GL_MAX_FRAGMENT_IMAGE_UNIFORMS                                  = 0x90CE
const GL_GEOMETRY_OUTPUT_TYPE                                         = 0x8918
const GL_CW                                                           = 0x0900
const GL_MAX_TESS_EVALUATION_UNIFORM_COMPONENTS                       = 0x8E80
const GL_UNSIGNED_INT_VEC4                                            = 0x8DC8
const GL_UNIFORM_IS_ROW_MAJOR                                         = 0x8A3E
const GL_TEXTURE_CUBE_MAP                                             = 0x8513
const GL_ALPHA_TEST_REF                                               = 0x0BC2
const GL_FOG_BIT                                                      = 0x00000080
const GL_X3_BYTES                                                     = 0x1408
const GL_TEXTURE_MAX_LEVEL                                            = 0x813D
const GL_REFERENCED_BY_GEOMETRY_SHADER                                = 0x9309
const GL_TEXTURE_ALPHA_SIZE                                           = 0x805F
const GL_FOG_COORDINATE_ARRAY_TYPE                                    = 0x8454
const GL_TEXTURE_STENCIL_SIZE                                         = 0x88F1
const GL_MAX_FRAGMENT_INPUT_COMPONENTS                                = 0x9125
const GL_ALPHA_BITS                                                   = 0x0D55
const GL_OR                                                           = 0x1507
const GL_T2F_C4F_N3F_V3F                                              = 0x2A2C
const GL_TEXTURE19                                                    = 0x84D3
const GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE                          = 0x910A
const GL_TESS_GEN_MODE                                                = 0x8E76
const GL_MAX_LIGHTS                                                   = 0x0D31
const GL_MAX_VERTEX_UNIFORM_COMPONENTS                                = 0x8B4A
const GL_MAX_VIEWPORT_DIMS                                            = 0x0D3A
const GL_POINT_SIZE_MIN                                               = 0x8126
const GL_MAX_VERTEX_IMAGE_UNIFORMS                                    = 0x90CA
const GL_CLIP_PLANE2                                                  = 0x3002
const GL_T4F_V4F                                                      = 0x2A28
const GL_UNIFORM_TYPE                                                 = 0x8A37
const GL_COMPUTE_SUBROUTINE_UNIFORM                                   = 0x92F3
const GL_LOCATION                                                     = 0x930E
const GL_MAX_VERTEX_ATTRIB_RELATIVE_OFFSET                            = 0x82D9
const GL_CONTEXT_COMPATIBILITY_PROFILE_BIT                            = 0x00000002
const GL_MAP1_INDEX                                                   = 0x0D91
const GL_FOG_COORDINATE_ARRAY                                         = 0x8457
const GL_TEXTURE_COORD_ARRAY_STRIDE                                   = 0x808A
const GL_MAX_UNIFORM_BUFFER_BINDINGS                                  = 0x8A2F
const GL_PATCHES                                                      = 0x000E
const GL_TESS_CONTROL_OUTPUT_VERTICES                                 = 0x8E75
const GL_LOW_FLOAT                                                    = 0x8DF0
const GL_LINEAR_MIPMAP_LINEAR                                         = 0x2703
const GL_IMAGE_2D_MULTISAMPLE                                         = 0x9055
const GL_COLOR_COMPONENTS                                             = 0x8283
const GL_PRIMITIVE_RESTART                                            = 0x8F9D
const GL_SYNC_STATUS                                                  = 0x9114
const GL_COMPRESSED_RGBA                                              = 0x84EE
const GL_MAX_ELEMENTS_INDICES                                         = 0x80E9
const GL_MAX_FRAGMENT_ATOMIC_COUNTERS                                 = 0x92D6
const GL_VIEW_CLASS_S3TC_DXT1_RGBA                                    = 0x82CD
const GL_COLOR_ATTACHMENT1                                            = 0x8CE1
const GL_VERTEX_ATTRIB_ARRAY_INTEGER                                  = 0x88FD
const GL_DRAW_BUFFER10                                                = 0x882F
const GL_TEXTURE21                                                    = 0x84D5
const GL_VIEW_CLASS_128_BITS                                          = 0x82C4
const GL_PACK_IMAGE_HEIGHT                                            = 0x806C
const GL_DEPTH32F_STENCIL8                                            = 0x8CAD
const GL_MAP1_VERTEX_4                                                = 0x0D98
const GL_SRC_ALPHA_SATURATE                                           = 0x0308
const GL_PROJECTION                                                   = 0x1701
const GL_GENERATE_MIPMAP_HINT                                         = 0x8192
const GL_PROXY_TEXTURE_3D                                             = 0x8070
const GL_SHADER_SOURCE_LENGTH                                         = 0x8B88
const GL_RGBA8_SNORM                                                  = 0x8F97
const GL_MAX_COMPUTE_IMAGE_UNIFORMS                                   = 0x91BD
const GL_C4F_N3F_V3F                                                  = 0x2A26
const GL_BLEND_EQUATION_RGB                                           = 0x8009
const GL_INDEX_MODE                                                   = 0x0C30
const GL_MAP_STENCIL                                                  = 0x0D11
const GL_VERTEX_ARRAY_SIZE                                            = 0x807A
const GL_STATIC_COPY                                                  = 0x88E6
const GL_UNSIGNED_INT_IMAGE_1D_ARRAY                                  = 0x9068
const GL_TEXTURE_BUFFER_OFFSET_ALIGNMENT                              = 0x919F
const GL_INTERNALFORMAT_SHARED_SIZE                                   = 0x8277
const GL_OPERAND1_ALPHA                                               = 0x8599
const GL_IMAGE_3D                                                     = 0x904E
const GL_RG16UI                                                       = 0x823A
const GL_TESS_EVALUATION_SHADER                                       = 0x8E87
const GL_PROGRAM_BINARY_FORMATS                                       = 0x87FF
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
const GL_DEBUG_TYPE_PUSH_GROUP                                        = 0x8269
const GL_UNSIGNED_BYTE                                                = 0x1401
const GL_TRANSPOSE_MODELVIEW_MATRIX                                   = 0x84E3
const GL_UPPER_LEFT                                                   = 0x8CA2
const GL_TEXTURE_COMPRESSED_BLOCK_SIZE                                = 0x82B3
const GL_MAX_PROGRAM_TEXEL_OFFSET                                     = 0x8905
const GL_TEXTURE_BIT                                                  = 0x00040000
const GL_STREAM_COPY                                                  = 0x88E2
const GL_UNIFORM_ATOMIC_COUNTER_BUFFER_INDEX                          = 0x92DA
const GL_MAP_FLUSH_EXPLICIT_BIT                                       = 0x0010
const GL_RGB9_E5                                                      = 0x8C3D
const GL_RGB5_A1                                                      = 0x8057
const GL_TEXTURE_VIEW_NUM_LEVELS                                      = 0x82DC
const GL_IMAGE_1D_ARRAY                                               = 0x9052
const GL_AUX1                                                         = 0x040A
const GL_DEPTH_COMPONENT32F                                           = 0x8CAC
const GL_FLOAT_32_UNSIGNED_INT_24_8_REV                               = 0x8DAD
const GL_TRANSFORM_FEEDBACK_BUFFER_MODE                               = 0x8C7F
const GL_FRAMEBUFFER_DEFAULT_SAMPLES                                  = 0x9313
const GL_BLUE_BITS                                                    = 0x0D54
const GL_LOAD                                                         = 0x0101
const GL_BUFFER_ACCESS_FLAGS                                          = 0x911F
const GL_COLOR_LOGIC_OP                                               = 0x0BF2
const GL_MAX_LAYERS                                                   = 0x8281
const GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS                           = 0x90DD
const GL_MINOR_VERSION                                                = 0x821C
const GL_UNIFORM                                                      = 0x92E1
const GL_COLOR_ATTACHMENT2                                            = 0x8CE2
const GL_HINT_BIT                                                     = 0x00008000
const GL_TRANSPOSE_PROJECTION_MATRIX                                  = 0x84E4
const GL_DRAW_BUFFER14                                                = 0x8833
const GL_FLOAT                                                        = 0x1406
const GL_SPHERE_MAP                                                   = 0x2402
const GL_COLOR_INDEX                                                  = 0x1900
const GL_MAJOR_VERSION                                                = 0x821B
const GL_DOUBLE_VEC2                                                  = 0x8FFC
const GL_INTENSITY16                                                  = 0x804D
const GL_INT_SAMPLER_1D                                               = 0x8DC9
const GL_SOURCE1_RGB                                                  = 0x8581
const GL_SCISSOR_BOX                                                  = 0x0C10
const GL_MAX_3D_TEXTURE_SIZE                                          = 0x8073
const GL_CONDITION_SATISFIED                                          = 0x911C
const GL_TEXTURE_BUFFER_DATA_STORE_BINDING                            = 0x8C2D
const GL_COPY_WRITE_BUFFER                                            = 0x8F37
const GL_SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT                       = 0x90DF
const GL_EDGE_FLAG_ARRAY_STRIDE                                       = 0x808C
const GL_UNSIGNED_INT_SAMPLER_1D                                      = 0x8DD1
const GL_PIXEL_MAP_I_TO_R_SIZE                                        = 0x0CB2
const GL_ATOMIC_COUNTER_BUFFER                                        = 0x92C0
const GL_SRGB_READ                                                    = 0x8297
const GL_R8_SNORM                                                     = 0x8F94
const GL_LEFT                                                         = 0x0406
const GL_DEBUG_OUTPUT_SYNCHRONOUS                                     = 0x8242
const GL_COLOR_ENCODING                                               = 0x8296
const GL_INT_SAMPLER_2D_MULTISAMPLE                                   = 0x9109
const GL_PIXEL_MAP_I_TO_A_SIZE                                        = 0x0CB5
const GL_CLIP_PLANE4                                                  = 0x3004
const GL_TEXTURE_MAG_FILTER                                           = 0x2800
const GL_UNPACK_SKIP_PIXELS                                           = 0x0CF4
const GL_DOUBLE_MAT3x2                                                = 0x8F4B
const GL_TEXTURE_LOD_BIAS                                             = 0x8501
const GL_COLOR_BUFFER_BIT                                             = 0x00004000
const GL_RGBA2                                                        = 0x8055
const GL_SAMPLE_MASK_VALUE                                            = 0x8E52
const GL_DEBUG_SOURCE_APPLICATION                                     = 0x824A
const GL_MAX_ATTRIB_STACK_DEPTH                                       = 0x0D35
const GL_SMOOTH_LINE_WIDTH_RANGE                                      = 0x0B22
const GL_SAMPLER_BINDING                                              = 0x8919
const GL_MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS                          = 0x92CF
const GL_DEBUG_SEVERITY_LOW                                           = 0x9148
const GL_TEXTURE_BINDING_CUBE_MAP_ARRAY                               = 0x900A
const GL_SOURCE2_ALPHA                                                = 0x858A
const GL_SRC_ALPHA                                                    = 0x0302
const GL_ACTIVE_SUBROUTINE_UNIFORM_LOCATIONS                          = 0x8E47
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
const GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_EVALUATION_SHADER   = 0x92C9
const GL_UNSIGNED_INT_24_8                                            = 0x84FA
const GL_MAX_GEOMETRY_UNIFORM_COMPONENTS                              = 0x8DDF
const GL_MAX_COMPUTE_UNIFORM_COMPONENTS                               = 0x8263
const GL_MAX_VERTEX_ATOMIC_COUNTERS                                   = 0x92D2
const GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT                              = 0x8A34
const GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY                         = 0x9105
const GL_PROGRAM_PIPELINE                                             = 0x82E4
const GL_GREEN_BITS                                                   = 0x0D53
const GL_IMAGE_2D                                                     = 0x904D
const GL_LIGHT_MODEL_COLOR_CONTROL                                    = 0x81F8
const GL_CURRENT_RASTER_DISTANCE                                      = 0x0B09
const GL_MIN_PROGRAM_TEXEL_OFFSET                                     = 0x8904
const GL_BGRA                                                         = 0x80E1
const GL_STENCIL_WRITEMASK                                            = 0x0B98
const GL_VERTEX_BINDING_OFFSET                                        = 0x82D7
const GL_EYE_PLANE                                                    = 0x2502
const GL_SAMPLER                                                      = 0x82E6
const GL_IMAGE_CLASS_2_X_32                                           = 0x82BA
const GL_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY                            = 0x906A
const GL_LINE_WIDTH_GRANULARITY                                       = 0x0B23
const GL_MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS              = 0x8E1F
const GL_MAX_IMAGE_UNITS                                              = 0x8F38
const GL_STENCIL_FUNC                                                 = 0x0B92
const GL_TEXTURE_INTENSITY_TYPE                                       = 0x8C15
const GL_MAX_RENDERBUFFER_SIZE                                        = 0x84E8
const GL_TESS_CONTROL_SUBROUTINE_UNIFORM                              = 0x92EF
const GL_ACTIVE_ATOMIC_COUNTER_BUFFERS                                = 0x92D9
const GL_DEPTH_CLEAR_VALUE                                            = 0x0B73
const GL_BLUE                                                         = 0x1905
const GL_VERTEX_ARRAY                                                 = 0x8074
const GL_POLYGON_OFFSET_FACTOR                                        = 0x8038
const GL_TEXTURE10                                                    = 0x84CA
const GL_VIEW_CLASS_32_BITS                                           = 0x82C8
const GL_RIGHT                                                        = 0x0407
const GL_FRAMEBUFFER_UNDEFINED                                        = 0x8219
const GL_FOG_COORDINATE_ARRAY_POINTER                                 = 0x8456
const GL_R8UI                                                         = 0x8232
const GL_MAP1_NORMAL                                                  = 0x0D92
const GL_TEXTURE28                                                    = 0x84DC
const GL_FRAMEBUFFER_ATTACHMENT_BLUE_SIZE                             = 0x8214
const GL_TEXTURE_CUBE_MAP_SEAMLESS                                    = 0x884F
const GL_BUFFER_UPDATE_BARRIER_BIT                                    = 0x00000200
const GL_FRONT_FACE                                                   = 0x0B46
const GL_IMAGE_2D_RECT                                                = 0x904F
const GL_PRIMITIVES_GENERATED                                         = 0x8C87
const GL_RGBA12                                                       = 0x805A
const GL_IMPLEMENTATION_COLOR_READ_FORMAT                             = 0x8B9B
const GL_MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS                     = 0x8E85
const GL_DEBUG_TYPE_UNDEFINED_BEHAVIOR                                = 0x824E
const GL_PATCH_DEFAULT_INNER_LEVEL                                    = 0x8E73
const GL_FILTER                                                       = 0x829A
const GL_R16                                                          = 0x822A
const GL_SAMPLER_2D_SHADOW                                            = 0x8B62
const GL_MAX_DEPTH_TEXTURE_SAMPLES                                    = 0x910F
const GL_PRIMITIVE_RESTART_INDEX                                      = 0x8F9E
const GL_INVALID_OPERATION                                            = 0x0502
const GL_MAX_TEXTURE_LOD_BIAS                                         = 0x84FD
const GL_TEXTURE_GEN_T                                                = 0x0C61
const GL_BUFFER                                                       = 0x82E0
const GL_MAX_VERTEX_UNIFORM_VECTORS                                   = 0x8DFB
const GL_VIEW_CLASS_S3TC_DXT1_RGB                                     = 0x82CC
const GL_RENDERBUFFER_STENCIL_SIZE                                    = 0x8D55
const GL_POLYGON_MODE                                                 = 0x0B40
const GL_SHADER_IMAGE_ATOMIC                                          = 0x82A6
const GL_MAP1_TEXTURE_COORD_4                                         = 0x0D96
const GL_LOGIC_OP_MODE                                                = 0x0BF0
const GL_DRAW_BUFFER9                                                 = 0x882E
const GL_SAMPLER_2D_RECT_SHADOW                                       = 0x8B64
const GL_LINE_WIDTH                                                   = 0x0B21
const GL_INTENSITY4                                                   = 0x804A
const GL_TRANSFORM_FEEDBACK_VARYINGS                                  = 0x8C83
const GL_COLOR_ATTACHMENT7                                            = 0x8CE7
const GL_VERTEX_SHADER_BIT                                            = 0x00000001
const GL_RENDERBUFFER_BINDING                                         = 0x8CA7
const GL_SOURCE1_ALPHA                                                = 0x8589
const GL_EDGE_FLAG_ARRAY_BUFFER_BINDING                               = 0x889B
const GL_STATIC_READ                                                  = 0x88E5
const GL_SHADER_STORAGE_BARRIER_BIT                                   = 0x2000
const GL_NAME_LENGTH                                                  = 0x92F9
const GL_POLYGON                                                      = 0x0009
const GL_PASS_THROUGH_TOKEN                                           = 0x0700
const GL_LIGHTING_BIT                                                 = 0x00000040
const GL_LINE_BIT                                                     = 0x00000004
const GL_POLYGON_STIPPLE                                              = 0x0B42
const GL_ALPHA8                                                       = 0x803C
const GL_FRONT                                                        = 0x0404
const GL_ACTIVE_VARIABLES                                             = 0x9305
const GL_COMPRESSED_RG_RGTC2                                          = 0x8DBD
const GL_TEXTURE24                                                    = 0x84D8
const GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING                           = 0x889A
const GL_FLOAT_MAT3                                                   = 0x8B5B
const GL_DEBUG_TYPE_ERROR                                             = 0x824C
const GL_VIEW_CLASS_48_BITS                                           = 0x82C7
const GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS                = 0x8C8A
const GL_PROGRAM_BINARY_LENGTH                                        = 0x8741
const GL_TEXTURE_IMMUTABLE_LEVELS                                     = 0x82DF
const GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY                      = 0x906C
const GL_POINT_FADE_THRESHOLD_SIZE                                    = 0x8128
const GL_LOW_INT                                                      = 0x8DF3
const GL_DEBUG_GROUP_STACK_DEPTH                                      = 0x826D
const GL_FRAMEBUFFER_DEFAULT                                          = 0x8218
const GL_MAX_NAME_STACK_DEPTH                                         = 0x0D37
const GL_COLOR_ARRAY                                                  = 0x8076
const GL_CURRENT_PROGRAM                                              = 0x8B8D
const GL_COMPRESSED_SIGNED_RG_RGTC2                                   = 0x8DBE
const GL_INT_IMAGE_CUBE                                               = 0x905B
const GL_DRAW_BUFFER4                                                 = 0x8829
const GL_FRONT_LEFT                                                   = 0x0400
const GL_TEXTURE_CUBE_MAP_POSITIVE_Y                                  = 0x8517
const GL_VERTEX_ATTRIB_ARRAY_TYPE                                     = 0x8625
const GL_GET_TEXTURE_IMAGE_FORMAT                                     = 0x8291
const GL_CLIENT_ACTIVE_TEXTURE                                        = 0x84E1
const GL_SAMPLER_2D_ARRAY_SHADOW                                      = 0x8DC4
const GL_RG32UI                                                       = 0x823C
const GL_INTERNALFORMAT_STENCIL_SIZE                                  = 0x8276
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
const GL_COLOR_RENDERABLE                                             = 0x8286
const GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING                           = 0x889F
const GL_TRIANGLES_ADJACENCY                                          = 0x000C
const GL_SAMPLER_CUBE                                                 = 0x8B60
const GL_COLOR_ATTACHMENT0                                            = 0x8CE0
const GL_FLAT                                                         = 0x1D00
const GL_VIEW_CLASS_8_BITS                                            = 0x82CB
const GL_FIRST_VERTEX_CONVENTION                                      = 0x8E4D
const GL_SLUMINANCE8_ALPHA8                                           = 0x8C45
const GL_SYNC_FLAGS                                                   = 0x9115
const GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_COMPUTE_SHADER           = 0x90ED
const GL_SAMPLER_1D_SHADOW                                            = 0x8B61
const GL_BGR_INTEGER                                                  = 0x8D9A
const GL_FLOAT_MAT2x4                                                 = 0x8B66
const GL_PATCH_DEFAULT_OUTER_LEVEL                                    = 0x8E74
const GL_READ_PIXELS_FORMAT                                           = 0x828D
const GL_INTERNALFORMAT_DEPTH_TYPE                                    = 0x827C
const GL_DRAW_INDIRECT_BUFFER_BINDING                                 = 0x8F43
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
const GL_ARRAY_STRIDE                                                 = 0x92FE
const GL_STENCIL_INDEX4                                               = 0x8D47
const GL_MAX_IMAGE_SAMPLES                                            = 0x906D
const GL_IMAGE_CLASS_4_X_16                                           = 0x82BC
const GL_COMPRESSED_SLUMINANCE_ALPHA                                  = 0x8C4B
const GL_RGB_SNORM                                                    = 0x8F92
const GL_INT_VEC3                                                     = 0x8B54
const GL_MAX_ELEMENT_INDEX                                            = 0x8D6B
const GL_IMAGE_CLASS_1_X_16                                           = 0x82BE
const GL_TEXTURE_RECTANGLE                                            = 0x84F5
const GL_TEXTURE_BINDING_2D_MULTISAMPLE                               = 0x9104
const GL_TEXTURE_CUBE_MAP_ARRAY                                       = 0x9009
const GL_NEAREST_MIPMAP_NEAREST                                       = 0x2700
const GL_DRAW_FRAMEBUFFER                                             = 0x8CA9
const GL_TEXTURE_BLUE_TYPE                                            = 0x8C12
const GL_NUM_ACTIVE_VARIABLES                                         = 0x9304
const GL_DOUBLEBUFFER                                                 = 0x0C32
const GL_FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE                          = 0x8217
const GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_VERTEX_SHADER            = 0x92C7
const GL_DEBUG_TYPE_POP_GROUP                                         = 0x826A
const GL_LINE_STRIP_ADJACENCY                                         = 0x000B
const GL_TRIANGLE_STRIP                                               = 0x0005
const GL_MODELVIEW_MATRIX                                             = 0x0BA6
const GL_CONTEXT_FLAG_FORWARD_COMPATIBLE_BIT                          = 0x0001
const GL_TEXTURE_IMAGE_FORMAT                                         = 0x828F
const GL_RGBA_SNORM                                                   = 0x8F93
const GL_ALIASED_POINT_SIZE_RANGE                                     = 0x846D
const GL_DOUBLE_MAT3                                                  = 0x8F47
const GL_TEXTURE13                                                    = 0x84CD
const GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY                    = 0x910D
const GL_TEXTURE_BASE_LEVEL                                           = 0x813C
const GL_RGB16I                                                       = 0x8D89
const GL_HIGH_INT                                                     = 0x8DF5
const GL_TEXTURE_MIN_LOD                                              = 0x813A
const GL_DEBUG_CALLBACK_USER_PARAM                                    = 0x8245
const GL_INDEX_OFFSET                                                 = 0x0D13
const GL_SAMPLE_COVERAGE_INVERT                                       = 0x80AB
const GL_PACK_COMPRESSED_BLOCK_DEPTH                                  = 0x912D
const GL_MAX_TESS_CONTROL_ATOMIC_COUNTERS                             = 0x92D3
const GL_FRAMEBUFFER_RENDERABLE_LAYERED                               = 0x828A
const GL_FOG_INDEX                                                    = 0x0B61
const GL_BOOL_VEC3                                                    = 0x8B58
const GL_GEOMETRY_TEXTURE                                             = 0x829E
const GL_TEXTURE_BINDING_CUBE_MAP                                     = 0x8514
const GL_TESS_CONTROL_TEXTURE                                         = 0x829C
const GL_VERTEX_ARRAY_POINTER                                         = 0x808E
const GL_MAX_TESS_CONTROL_UNIFORM_BLOCKS                              = 0x8E89
const GL_UNSIGNED_INT_SAMPLER_CUBE                                    = 0x8DD4
const GL_COMPRESSED_RED_RGTC1                                         = 0x8DBB
const GL_INDEX                                                        = 0x8222
const GL_DRAW_BUFFER11                                                = 0x8830
const GL_GREEN_INTEGER                                                = 0x8D95
const GL_MAX_FRAMEBUFFER_HEIGHT                                       = 0x9316
const GL_INT                                                          = 0x1404
const GL_TRIANGLES                                                    = 0x0004
const GL_ALIASED_LINE_WIDTH_RANGE                                     = 0x846E
const GL_DEBUG_SEVERITY_NOTIFICATION                                  = 0x826B
const GL_DEPTH_STENCIL                                                = 0x84F9
const GL_TEXTURE_SHADOW                                               = 0x82A1
const GL_MAP_INVALIDATE_RANGE_BIT                                     = 0x0004
const GL_DECR_WRAP                                                    = 0x8508
const GL_NAND                                                         = 0x150E
const GL_SEPARATE_SPECULAR_COLOR                                      = 0x81FA
const GL_SAMPLER_1D_ARRAY_SHADOW                                      = 0x8DC3
const GL_BLEND_DST_ALPHA                                              = 0x80CA
const GL_SELECTION_BUFFER_SIZE                                        = 0x0DF4
const GL_TEXTURE_IMAGE_TYPE                                           = 0x8290
const GL_RENDERBUFFER                                                 = 0x8D41
const GL_RGB10                                                        = 0x8052
const GL_INT_IMAGE_2D_MULTISAMPLE                                     = 0x9060
const GL_DOUBLE_MAT2                                                  = 0x8F46
const GL_ACCUM_BLUE_BITS                                              = 0x0D5A
const GL_TEXTURE30                                                    = 0x84DE
const GL_VERTEX_ATTRIB_ARRAY_NORMALIZED                               = 0x886A
const GL_INTERNALFORMAT_ALPHA_SIZE                                    = 0x8274
const GL_RENDERBUFFER_BLUE_SIZE                                       = 0x8D52
const GL_TEXTURE_BORDER_COLOR                                         = 0x1004
const GL_ALPHA16                                                      = 0x803E
const GL_ARRAY_BUFFER_BINDING                                         = 0x8894
const GL_VERTEX_ATTRIB_ARRAY_SIZE                                     = 0x8623
const GL_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH                        = 0x8C76
const GL_SHADER_IMAGE_STORE                                           = 0x82A5
const GL_SHADER_IMAGE_ACCESS_BARRIER_BIT                              = 0x00000020
const GL_LINE_STIPPLE_PATTERN                                         = 0x0B25
const GL_MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS                      = 0x92CD
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
const GL_ALL_SHADER_BITS                                              = 0xFFFFFFFF
const GL_POLYGON_TOKEN                                                = 0x0703
const GL_PACK_COMPRESSED_BLOCK_SIZE                                   = 0x912E
const GL_X4D_COLOR_TEXTURE                                            = 0x0604
const GL_COLOR_ATTACHMENT5                                            = 0x8CE5
const GL_DEPTH_BIAS                                                   = 0x0D1F
const GL_UNIFORM_ARRAY_STRIDE                                         = 0x8A3C
const GL_IMAGE_CLASS_10_10_10_2                                       = 0x82C3
const GL_FALSE                                                        = 0
const GL_TEXTURE_BUFFER_OFFSET                                        = 0x919D
const GL_MAX_COLOR_TEXTURE_SAMPLES                                    = 0x910E
const GL_IS_PER_PATCH                                                 = 0x92E7
const GL_INTERNALFORMAT_STENCIL_TYPE                                  = 0x827D
const GL_PROXY_TEXTURE_CUBE_MAP                                       = 0x851B
const GL_NUM_SHADER_BINARY_FORMATS                                    = 0x8DF9
const GL_TESS_CONTROL_SHADER                                          = 0x8E88
const GL_MAX_FRAGMENT_ATOMIC_COUNTER_BUFFERS                          = 0x92D0
const GL_CONTEXT_CORE_PROFILE_BIT                                     = 0x00000001
const GL_UNSIGNED_INT_8_8_8_8_REV                                     = 0x8367
const GL_STENCIL_TEST                                                 = 0x0B90
const GL_LINE_STIPPLE                                                 = 0x0B24
const GL_SECONDARY_COLOR_ARRAY_POINTER                                = 0x845D
const GL_OPERAND2_RGB                                                 = 0x8592
const GL_PERSPECTIVE_CORRECTION_HINT                                  = 0x0C50
const GL_MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS                           = 0x8264
const GL_QUERY_RESULT_AVAILABLE                                       = 0x8867
const GL_LIGHT0                                                       = 0x4000
const GL_STENCIL_BACK_WRITEMASK                                       = 0x8CA5
const GL_TESS_GEN_SPACING                                             = 0x8E77
const GL_MIN_FRAGMENT_INTERPOLATION_OFFSET                            = 0x8E5B
const GL_IMAGE_CLASS_2_X_8                                            = 0x82C0
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
const GL_FRAMEBUFFER_DEFAULT_WIDTH                                    = 0x9310
const GL_ALREADY_SIGNALED                                             = 0x911A
const GL_RED_SCALE                                                    = 0x0D14
const GL_STACK_OVERFLOW                                               = 0x0503
const GL_DEPTH_COMPONENT16                                            = 0x81A5
const GL_SHADING_LANGUAGE_VERSION                                     = 0x8B8C
const GL_IMAGE_1D                                                     = 0x904C
const GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS                      = 0x8C8B
const GL_COLOR_MATERIAL_FACE                                          = 0x0B55
const GL_TEXTURE_HEIGHT                                               = 0x1001
const GL_COMPATIBLE_SUBROUTINES                                       = 0x8E4B
const GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC                             = 0x9279
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
export glGetNamedFramebufferParameterivEXT, glDrawElementsInstancedBaseVertexBaseInstance, glReadBuffer, glBindBufferBase, glClientWaitSync, glGetIntegeri_v, glTexCoordP2ui, glTexParameterIiv, glVertexAttribI2iv, glProgramUniformMatrix4fv, glSamplerParameteri, glStencilFuncSeparate, glResumeTransformFeedback, glProgramUniform1fv, glProgramUniform3uiv, glUniform1d, glUniformMatrix2x4dv, glFinish, glProgramUniformMatrix2x3fv, glClear, glBindTransformFeedback, glShaderSource, glUniform2iv, glBindTexture, glDrawElementsIndirect, glUniformMatrix3dv, glGetSamplerParameterIiv, glGetPointerv, glReleaseShaderCompiler, glGetQueryObjectui64v, glVertexAttribDivisor, glVertexAttribP4ui, glDeleteProgram, glSamplerParameterIuiv, glGetProgramiv, glUniform3dv, glProgramUniform4fv, glDrawTransformFeedbackInstanced, glScissorArrayv, glGenerateMipmap, glProgramUniform2dv, glUniform4d, glDeleteRenderbuffers, glPopDebugGroup, glGetShaderSource, glIsBuffer, glGetAttachedShaders, glVertexAttribI1uiv, glMultiTexCoordP1ui, glTextureView, glProgramUniform4uiv, glSecondaryColorP3uiv, glQueryCounter, glTexStorage3DMultisample, glDrawArraysIndirect, glUniform4ui, glProgramUniform4f, glCompressedTexSubImage1D, glProgramUniformMatrix2dv, glTexParameterf, glShaderBinary, glPauseTransformFeedback, glMultiDrawElements, glGetBufferPointerv, glVertexAttribP4uiv, glVertexArrayVertexAttribIFormatEXT, glEndConditionalRender, glFlush, glBlendFuncSeparatei, glProgramUniform1dv, glProgramUniform2ui, glActiveTexture, glSecondaryColorP3ui, glProgramUniformMatrix3dv, glBlendEquationi, glPolygonOffset, glDetachShader, glUniform4uiv, glTexParameteriv, glGetIntegerv, glEnable, glClearBufferData, glMapBufferRange, glTexCoordP4uiv, glDepthRangeArrayv, glGetCompressedTexImage, glProgramUniformMatrix4x2fv, glIsTransformFeedback, glMultiTexCoordP1uiv, glSamplerParameterIiv, glProgramUniform2i, glUniform4dv, glGetDoublev, glTexCoordP1uiv, glProgramUniform1f, glTexParameterIuiv, glUniformMatrix2x3dv, glPixelStorei, glUniform3ui, glGetTexParameterIuiv, glGetShaderiv, glTexCoordP4ui, glPointParameteri, glTextureStorage1DEXT, glEnablei, glTexCoordP3uiv, glGetRenderbufferParameteriv, glVertexAttribI4sv, glGetActiveSubroutineName, glCompileShader, glLinkProgram, glReadPixels, glCreateShaderProgramv, glBufferData, glPointParameteriv, glUniform2fv, glDrawTransformFeedbackStream, glUniform2dv, glTexSubImage1D, glDispatchCompute, glGetBufferSubData, glVertexP2uiv, glUniform4fv, glGetProgramResourceLocation, glVertexArrayVertexAttribLFormatEXT, glGetUniformuiv, glBindImageTexture, glVertexAttribL4dv, glColorP4ui, glUniform2f, glColorP4uiv, glVertexAttribIPointer, glGetProgramPipelineiv, glMultiTexCoordP3uiv, glGetProgramResourceName, glVertexP4ui, glFrontFace, glProgramUniform4i, glPointParameterfv, glShaderStorageBlockBinding, glClearStencil, glBlendEquation, glIsProgramPipeline, glUniform3f, glVertexAttribI4usv, glFramebufferParameteri, glGenSamplers, glUniformMatrix4fv, glBlendColor, glInvalidateTexImage, glGetSubroutineIndex, glVertexAttribL3dv, glProgramUniformMatrix2fv, glDrawElementsInstancedBaseInstance, glIndexub, glGenRenderbuffers, glProgramUniform4dv, glProgramUniformMatrix2x3dv, glTexImage3D, glGetVertexAttribfv, glVertexAttribL4d, glBindFramebuffer, glFramebufferTexture3D, glVertexArrayVertexAttribFormatEXT, glGetVertexAttribLdv, glVertexAttribBinding, glUniformMatrix3fv, glUniformMatrix4dv, glProgramUniformMatrix4x3dv, glProgramUniformMatrix3x4fv, glGetDebugMessageLog, glGetVertexAttribiv, glDebugMessageInsert, glNormalP3ui, glDrawArraysInstanced, glCompressedTexImage2D, glPushDebugGroup, glGetUniformBlockIndex, glInvalidateFramebuffer, glVertexAttribP2uiv, glIsEnabledi, glVertexAttribP2ui, glDrawArrays, glGetActiveAttrib, glCopyTexImage1D, glProgramUniform2f, glCopyImageSubData, glGetError, glNormalP3uiv, glTexStorage2D, glProgramUniformMatrix4x3fv, glDrawRangeElementsBaseVertex, glGenProgramPipelines, glVertexAttribI4uiv, glActiveShaderProgram, glGetInteger64v, glPrimitiveRestartIndex, glDeleteShader, glGenBuffers, glTexParameterfv, glGetSamplerParameteriv, glProgramUniform3d, glVertexAttribI1iv, glUniform2uiv, glUniform1i, glUniform3uiv, glProgramUniform1uiv, glUniform1iv, glUniform1fv, glScissorIndexedv, glIsTexture, glDrawArraysInstancedBaseInstance, glVertexAttribI1i, glVertexAttribI3ui, glGetActiveUniformBlockiv, glVertexAttribI3i, glBlendFunci, glGetVertexAttribdv, glBlendEquationSeparate, glFenceSync, glSamplerParameterfv, glIsShader, glProgramUniform3f, glUniformMatrix4x3fv, glGetQueryObjectuiv, glPointParameterf, glIndexubv, glClearBufferiv, glBindVertexArray, glGetInternalformati64v, glVertexP4uiv, glVertexAttribI2uiv, glGetProgramResourceiv, glViewport, glTexImage1D, glUniform1uiv, glProgramUniform4ui, glUniform1f, glVertexAttribP3uiv, glBeginQuery, glMultiDrawArrays, glDrawBuffer, glLogicOp, glObjectLabel, glUniformMatrix3x2dv, glUniform3d, glDepthRangeIndexed, glGetProgramBinary, glPointSize, glGetUniformfv, glClearBufferfv, glCopyTexSubImage1D, glIsEnabled, glCreateShader, glTextureStorage2DEXT, glPixelStoref, glGetMultisamplefv, glGetFragDataIndex, glGetUniformIndices, glUniform1dv, glGetFragDataLocation, glMultiTexCoordP2ui, glDepthFunc, glVertexAttribI4iv, glUniformMatrix2x4fv, glBufferSubData, glUniformMatrix3x4fv, glBindBufferRange, glGenQueries, glDebugMessageCallback, glInvalidateTexSubImage, glColorP3uiv, glTexStorage1D, glBlendFunc, glGetBooleanv, glUniformMatrix3x4dv, glGetObjectLabel, glSampleCoverage, glProgramUniformMatrix3x2fv, glVertexAttribL2dv, glGetFloatv, glProvokingVertex, glVertexAttribL3d, glClearDepth, glInvalidateBufferData, glProgramParameteri, glUniformMatrix3x2fv, glDisable, glMultiDrawElementsIndirect, glMultiDrawElementsBaseVertex, glFlushMappedBufferRange, glGetUniformdv, glGetProgramInterfaceiv, glTransformFeedbackVaryings, glGetVertexAttribIuiv, glGetShaderInfoLog, glRenderbufferStorageMultisample, glUniformMatrix2x3fv, glUseProgramStages, glVertexAttribLFormat, glProgramUniform1i, glGetFramebufferParameteriv, glDeleteProgramPipelines, glProgramUniform2fv, glProgramUniform1iv, glBindBuffer, glGetAttribLocation, glProgramUniform3ui, glTexParameteri, glWaitSync, glTextureStorage3DMultisampleEXT, glIsVertexArray, glEnableVertexAttribArray, glObjectPtrLabel, glProgramBinary, glCompressedTexImage1D, glTexCoordP2uiv, glUseProgram, glProgramUniform3i, glVertexAttribI2ui, glGetActiveSubroutineUniformiv, glDepthMask, glPolygonMode, glVertexAttribI3uiv, glFramebufferTexture1D, glGetActiveSubroutineUniformName, glGenFramebuffers, glFramebufferTextureLayer, glViewportArrayv, glDrawRangeElements, glCopyTexSubImage3D, glStencilMaskSeparate, glGetProgramInfoLog, glGetProgramResourceIndex, glBlitFramebuffer, glBeginTransformFeedback, glVertexAttribI4bv, glIsSampler, glVertexAttribI4ui, glProgramUniformMatrix3x4dv, glCheckFramebufferStatus, glProgramUniformMatrix3fv, glTextureBufferRangeEXT, glInvalidateSubFramebuffer, glDeleteTransformFeedbacks, glGetActiveUniformName, glPatchParameterfv, glProgramUniform4d, glSamplerParameteriv, glTextureStorage2DMultisampleEXT, glStencilOpSeparate, glScissorIndexed, glVertexAttribI3iv, glBeginQueryIndexed, glValidateProgramPipeline, glUnmapBuffer, glEndQuery, glStencilOp, glCompressedTexImage3D, glSampleMaski, glDisableVertexAttribArray, glVertexAttribI2i, glCompressedTexSubImage2D, glGetVertexAttribPointerv, glDeleteFramebuffers, glUniformMatrix4x2dv, glInvalidateBufferSubData, glFramebufferTexture, glTexImage3DMultisample, glVertexAttribL1d, glTextureStorage3DEXT, glGetBufferParameteriv, glCopyBufferSubData, glSamplerParameterf, glColorMask, glBlendFuncSeparate, glUniform3fv, glVertexAttribL1dv, glUniform4i, glMultiTexCoordP3ui, glDrawBuffers, glColorP3ui, glProgramUniformMatrix2x4dv, glVertexP2ui, glDrawElementsInstanced, glGetUniformiv, glTexImage2D, glGetQueryObjecti64v, glGetTexImage, glGetTexLevelParameteriv, glTexSubImage2D, glDeleteVertexArrays, glIsRenderbuffer, glGetProgramResourceLocationIndex, glGetInteger64i_v, glProgramUniform1ui, glUniform4iv, glProgramUniform3fv, glVertexAttribL2d, glUniform2d, glGetBufferParameteri64v, glTexCoordP1ui, glDeleteBuffers, glProgramUniformMatrix2x4fv, glMultiTexCoordP4uiv, glVertexAttribPointer, glVertexP3uiv, glDispatchComputeIndirect, glProgramUniform1d, glGetFloati_v, glDebugMessageControl, glVertexAttribFormat, glClearColor, glIsFramebuffer, glVertexAttribP1uiv, glUniform3i, glGetString, glGenTextures, glFramebufferRenderbuffer, glGetQueryObjectiv, glBindProgramPipeline, glGetActiveUniformBlockName, glUniformMatrix2fv, glTexStorage3D, glTexCoordP3ui, glDeleteSync, glBindFragDataLocation, glGetShaderPrecisionFormat, glGenTransformFeedbacks, glProgramUniform4iv, glHint, glVertexArrayVertexAttribBindingEXT, glDrawTransformFeedback, glUniform1ui, glTexSubImage3D, glBeginConditionalRender, glGetActiveUniformsiv, glGetStringi, glMultiDrawArraysIndirect, glDepthRange, glUniform2ui, glBindFragDataLocationIndexed, glDrawElementsBaseVertex, glMultiTexCoordP4ui, glGetTexParameterfv, glVertexArrayBindVertexBufferEXT, glScissor, glClearDepthf, glProgramUniformMatrix4x2dv, glDrawElementsInstancedBaseVertex, glClearNamedBufferDataEXT, glProgramUniform2iv, glStencilMask, glCopyTexSubImage2D, glGetTexLevelParameterfv, glColorMaski, glVertexP3ui, glUniformMatrix2dv, glGetProgramPipelineInfoLog, glVertexAttribP1ui, glUniform3iv, glUniformSubroutinesuiv, glPatchParameteri, glGenVertexArrays, glStencilFunc, glGetInternalformativ, glMinSampleShading, glProgramUniform2uiv, glGetActiveUniform, glVertexAttribI4i, glClearNamedBufferSubDataEXT, glUniformMatrix4x2fv, glDeleteTextures, glProgramUniformMatrix4dv, glCullFace, glProgramUniformMatrix3x2dv, glTexBufferRange, glClearBufferSubData, glLineWidth, glCompressedTexSubImage3D, glVertexArrayVertexBindingDivisorEXT, glClearBufferfi, glIsProgram, glGetVertexAttribIiv, glGetTransformFeedbackVarying, glVertexAttribLPointer, glGetFramebufferAttachmentParameteriv, glGetActiveAtomicCounterBufferiv, glProgramUniform3dv, glUniformMatrix4x3dv, glVertexAttribI4ubv, glCreateProgram, glUniformBlockBinding, glEndQueryIndexed, glTexStorage2DMultisample, glGetSynciv, glClampColor, glVertexAttribP3ui, glBindAttribLocation, glBindVertexBuffer, glValidateProgram, glGetSamplerParameterfv, glGetBooleani_v, glMultiTexCoordP2uiv, glFramebufferTexture2D, glEndTransformFeedback, glGetSubroutineUniformLocation, glGetQueryiv, glProgramUniform2d, glProgramUniform3iv, glIsSync, glGetTexParameterIiv, glGetObjectPtrLabel, glGetUniformSubroutineuiv, glTexBuffer, glDeleteQueries, glDisablei, glNamedFramebufferParameteriEXT, glGetUniformLocation, glMemoryBarrier, glGetDoublei_v, glClearBufferuiv, glRenderbufferStorage, glViewportIndexedf, glDrawElements, glVertexAttribI1ui, glUniform2i, glGetQueryIndexediv, glAttachShader, glDrawTransformFeedbackStreamInstanced, glIsQuery, glViewportIndexedfv, glVertexBindingDivisor, glCopyTexImage2D, glDeleteSamplers, glGetProgramStageiv, glBindSampler, glBindRenderbuffer, glGetSamplerParameterIuiv, glGetTexParameteriv, glVertexAttribIFormat, glBlendEquationSeparatei, glTexImage2DMultisample, glDepthRangef, glUniform4f, glMapBuffer, GL_MAP1_GRID_SEGMENTS, GL_COMPILE, GL_SAMPLER_3D, GL_QUERY, GL_INTENSITY, GL_FOG_HINT, GL_FOG_COORDINATE_ARRAY_BUFFER_BINDING, GL_DOUBLE_MAT2x3, GL_FRAMEBUFFER_INCOMPLETE_READ_BUFFER, GL_BUFFER_ACCESS, GL_LUMINANCE12_ALPHA12, GL_IMAGE_CUBE_MAP_ARRAY, GL_COMPRESSED_RG11_EAC, GL_RGBA32I, GL_MAX_TESS_CONTROL_OUTPUT_COMPONENTS, GL_FRAMEBUFFER_UNSUPPORTED, GL_SAMPLER_2D_ARRAY, GL_MAX_COMBINED_ATOMIC_COUNTER_BUFFERS, GL_IMAGE_CLASS_4_X_8, GL_UNSIGNED_INT_ATOMIC_COUNTER, GL_UNPACK_LSB_FIRST, GL_ACCUM_RED_BITS, GL_ELEMENT_ARRAY_BARRIER_BIT, GL_LIGHT4, GL_POINT_SPRITE, GL_PIXEL_BUFFER_BARRIER_BIT, GL_MAX_GEOMETRY_OUTPUT_VERTICES, GL_READ_FRAMEBUFFER_BINDING, GL_LIGHT_MODEL_LOCAL_VIEWER, GL_OBJECT_LINEAR, GL_COLOR_ARRAY_SIZE, GL_TEXTURE12, GL_MAX_COMPUTE_WORK_GROUP_SIZE, GL_OPERAND1_RGB, GL_X3D, GL_TEXTURE_BINDING_3D, GL_SECONDARY_COLOR_ARRAY, GL_UNSIGNED_SHORT_5_6_5_REV, GL_BGRA_INTEGER, GL_PACK_ROW_LENGTH, GL_INT_IMAGE_2D_RECT, GL_SET, GL_LAYER_PROVOKING_VERTEX, GL_FRACTIONAL_EVEN, GL_LINES, GL_QUADS, GL_EYE_LINEAR, GL_POLYGON_OFFSET_POINT, GL_TEXTURE, GL_BLEND_EQUATION_ALPHA, GL_INFO_LOG_LENGTH, GL_CLIP_DISTANCE0, GL_MATRIX_STRIDE, GL_COMPILE_STATUS, GL_QUERY_RESULT, GL_MAX_FRAMEBUFFER_WIDTH, GL_RGB5, GL_VERTEX_SHADER, GL_LIST_BIT, GL_PROXY_TEXTURE_2D_MULTISAMPLE, GL_INT_SAMPLER_CUBE_MAP_ARRAY, GL_TEXTURE_PRIORITY, GL_EVAL_BIT, GL_POINT_SPRITE_COORD_ORIGIN, GL_CCW, GL_TEXTURE26, GL_SMOOTH_LINE_WIDTH_GRANULARITY, GL_MEDIUM_INT, GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME, GL_SHADER_COMPILER, GL_BUFFER_MAP_LENGTH, GL_ATTACHED_SHADERS, GL_CLIP_DISTANCE5, GL_MAP_UNSYNCHRONIZED_BIT, GL_BLEND_SRC_ALPHA, GL_MAX_UNIFORM_LOCATIONS, GL_COMPRESSED_RGB8_ETC2, GL_R32F, GL_INT_SAMPLER_2D, GL_DOUBLE_MAT4x3, GL_C3F_V3F, GL_TEXTURE_CUBE_MAP_NEGATIVE_X, GL_MAP2_INDEX, GL_TEXTURE_FETCH_BARRIER_BIT, GL_DEPTH_BUFFER_BIT, GL_STENCIL_BITS, GL_INTENSITY12, GL_DEPTH_COMPONENT32, GL_MAX_TESS_EVALUATION_OUTPUT_COMPONENTS, GL_SYNC_FLUSH_COMMANDS_BIT, GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_FRAGMENT_SHADER, GL_UNSIGNED_INT_IMAGE_CUBE, GL_UNIFORM_BLOCK_ACTIVE_UNIFORMS, GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN, GL_LIST_BASE, GL_DRAW_BUFFER7, GL_INTERNALFORMAT_BLUE_SIZE, GL_POINT_SMOOTH, GL_INT_SAMPLER_3D, GL_BUFFER_MAP_OFFSET, GL_MAX_GEOMETRY_SHADER_INVOCATIONS, GL_DEPTH_COMPONENTS, GL_REFERENCED_BY_TESS_CONTROL_SHADER, GL_HIGH_FLOAT, GL_PIXEL_MAP_S_TO_S, GL_INT_SAMPLER_1D_ARRAY, GL_DOUBLE, GL_ACTIVE_SUBROUTINE_MAX_LENGTH, GL_FOG_COORDINATE_ARRAY_STRIDE, GL_RG32F, GL_COMMAND_BARRIER_BIT, GL_GENERATE_MIPMAP, GL_RGB10_A2UI, GL_T2F_C4UB_V3F, GL_RGB16, GL_TEXTURE_MATRIX, GL_IMAGE_2D_MULTISAMPLE_ARRAY, GL_SRGB8_ALPHA8, GL_LAST_VERTEX_CONVENTION, GL_COLOR_ARRAY_STRIDE, GL_MAX_DEBUG_LOGGED_MESSAGES, GL_VERTEX_SUBROUTINE, GL_STENCIL_INDEX16, GL_TEXTURE_CUBE_MAP_POSITIVE_X, GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTERS, GL_BITMAP, GL_CURRENT_INDEX, GL_IMAGE_PIXEL_FORMAT, GL_MAX_GEOMETRY_SHADER_STORAGE_BLOCKS, GL_FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE, GL_MAP1_GRID_DOMAIN, GL_VERTEX_PROGRAM_POINT_SIZE, GL_STENCIL_PASS_DEPTH_FAIL, GL_TEXTURE_CUBE_MAP_NEGATIVE_Y, GL_BLUE_INTEGER, GL_STENCIL_BACK_FAIL, GL_MAX_ATOMIC_COUNTER_BUFFER_SIZE, GL_XOR, GL_GET_TEXTURE_IMAGE_TYPE, GL_VERTEX_PROGRAM_TWO_SIDE, GL_LIGHT_MODEL_AMBIENT, GL_OPERAND0_ALPHA, GL_FOG_COORD_ARRAY_BUFFER_BINDING, GL_RGBA16UI, GL_AMBIENT, GL_DEPTH_CLAMP, GL_DEBUG_SOURCE_SHADER_COMPILER, GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET, GL_DYNAMIC_COPY, GL_TEXTURE_1D_ARRAY, GL_TEXTURE_GATHER, GL_EQUIV, GL_CURRENT_RASTER_INDEX, GL_POLYGON_OFFSET_FILL, GL_MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS, GL_COLOR_WRITEMASK, GL_POINT_TOKEN, GL_TEXTURE8, GL_EQUAL, GL_R32I, GL_MAX_ARRAY_TEXTURE_LAYERS, GL_TEXTURE1, GL_MAX_NUM_ACTIVE_VARIABLES, GL_SECONDARY_COLOR_ARRAY_STRIDE, GL_UNSIGNED_INT_10F_11F_11F_REV, GL_SRC1_RGB, GL_PROGRAM, GL_RETURN, GL_RGBA16, GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE, GL_TEXTURE_2D, GL_TEXTURE_BINDING_1D, GL_MAX_GEOMETRY_ATOMIC_COUNTERS, GL_MAX_GEOMETRY_OUTPUT_COMPONENTS, GL_SHADER_STORAGE_BUFFER_START, GL_LINE_WIDTH_RANGE, GL_PIXEL_MAP_I_TO_B, GL_TESS_CONTROL_SHADER_BIT, GL_VIEW_CLASS_BPTC_UNORM, GL_ACCUM_BUFFER_BIT, GL_SAMPLES_PASSED, GL_MAP2_GRID_SEGMENTS, GL_IMAGE_FORMAT_COMPATIBILITY_BY_CLASS, GL_READ_FRAMEBUFFER, GL_INDEX_CLEAR_VALUE, GL_ENABLE_BIT, GL_OBJECT_TYPE, GL_MAP2_VERTEX_3, GL_MAX_DEPTH, GL_OUT_OF_MEMORY, GL_MAX_COMPUTE_UNIFORM_BLOCKS, GL_MAX_COMPUTE_ATOMIC_COUNTERS, GL_COLOR_ATTACHMENT12, GL_UNSIGNED_SHORT_4_4_4_4, GL_GEOMETRY_SHADER_INVOCATIONS, GL_STENCIL_INDEX8, GL_MAX_COMBINED_SHADER_STORAGE_BLOCKS, GL_RGB8I, GL_AUTO_GENERATE_MIPMAP, GL_MAP1_VERTEX_3, GL_CLIP_DISTANCE2, GL_TEXTURE18, GL_INT_2_10_10_10_REV, GL_UNSIGNED_INT_SAMPLER_3D, GL_DEPTH_ATTACHMENT, GL_IMAGE_CLASS_11_11_10, GL_COMPRESSED_RGBA8_ETC2_EAC, GL_UNPACK_ALIGNMENT, GL_PROVOKING_VERTEX, GL_ONE_MINUS_SRC_ALPHA, GL_PIXEL_MAP_I_TO_I, GL_CURRENT_TEXTURE_COORDS, GL_COORD_REPLACE, GL_DIFFUSE, GL_TEXTURE_INTENSITY_SIZE, GL_DRAW_BUFFER6, GL_TEXTURE_2D_MULTISAMPLE_ARRAY, GL_DEBUG_TYPE_PERFORMANCE, GL_LOCATION_INDEX, GL_TEXTURE_GEN_R, GL_FLOAT_MAT2, GL_UNSIGNED_NORMALIZED, GL_VIEW_CLASS_16_BITS, GL_QUAD_STRIP, GL_DYNAMIC_DRAW, GL_SYNC_FENCE, GL_ONE_MINUS_SRC1_ALPHA, GL_MANUAL_GENERATE_MIPMAP, GL_DEPTH_FUNC, GL_VERTEX_SUBROUTINE_UNIFORM, GL_COMPUTE_TEXTURE, GL_MAP2_VERTEX_4, GL_ARRAY_SIZE, GL_FLOAT_MAT3x2, GL_RGBA8I, GL_RENDERBUFFER_SAMPLES, GL_TEXTURE_VIEW, GL_VIEW_CLASS_RGTC1_RED, GL_PIXEL_MAP_G_TO_G, GL_INTENSITY8, GL_PIXEL_MAP_A_TO_A_SIZE, GL_MAP2_GRID_DOMAIN, GL_N3F_V3F, GL_MAX_VIEWPORTS, GL_COMPRESSED_R11_EAC, GL_SRC0_ALPHA, GL_INTERNALFORMAT_RED_TYPE, GL_DOMAIN, GL_IMAGE_CUBE, GL_TEXTURE_1D, GL_RENDERBUFFER_WIDTH, GL_POINT_SIZE, GL_SIMULTANEOUS_TEXTURE_AND_DEPTH_TEST, GL_VIEWPORT, GL_R16_SNORM, GL_RGBA, GL_DRAW_PIXEL_TOKEN, GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE, GL_TEXTURE_SWIZZLE_G, GL_TEXTURE_IMMUTABLE_FORMAT, GL_CLAMP, GL_TEXTURE31, GL_TEXTURE_GEN_MODE, GL_FOG_COORD_ARRAY_STRIDE, GL_MAX_SUBROUTINES, GL_MAX_VERTEX_ATOMIC_COUNTER_BUFFERS, GL_TEXTURE3, GL_PIXEL_MAP_I_TO_R, GL_COMBINE_ALPHA, GL_SUBTRACT, GL_DRAW_BUFFER2, GL_RGB4, GL_UNSIGNED_INT_SAMPLER_2D, GL_COLOR_ARRAY_TYPE, GL_COMBINE_RGB, GL_MAP1_TEXTURE_COORD_3, GL_ELEMENT_ARRAY_BUFFER, GL_COMPRESSED_SLUMINANCE, GL_DEBUG_TYPE_DEPRECATED_BEHAVIOR, GL_FULL_SUPPORT, GL_SUBPIXEL_BITS, GL_UNPACK_SKIP_ROWS, GL_VIEW_CLASS_64_BITS, GL_SOURCE0_RGB, GL_TEXTURE_SWIZZLE_RGBA, GL_IMAGE_FORMAT_COMPATIBILITY_TYPE, GL_UNIFORM_BLOCK_INDEX, GL_MAX_DUAL_SOURCE_DRAW_BUFFERS, GL_RGBA_INTEGER, GL_MAX_COMBINED_IMAGE_UNIFORMS, GL_MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS, GL_RGB16F, GL_MAX_COMBINED_UNIFORM_BLOCKS, GL_TESS_GEN_POINT_MODE, GL_INT_IMAGE_2D_MULTISAMPLE_ARRAY, GL_FRAMEBUFFER_BARRIER_BIT, GL_POINTS, GL_INCR_WRAP, GL_ACTIVE_ATTRIBUTES, GL_FIXED_ONLY, GL_MAX_UNIFORM_BLOCK_SIZE, GL_TEXTURE5, GL_ALPHA12, GL_GREEN_SCALE, GL_INT_IMAGE_2D, GL_INTERNALFORMAT_GREEN_SIZE, GL_CURRENT_FOG_COORD, GL_SRC1_ALPHA, GL_PROXY_TEXTURE_1D, GL_PROXY_TEXTURE_CUBE_MAP_ARRAY, GL_TEXTURE_WRAP_S, GL_COMPRESSED_SIGNED_RG11_EAC, GL_X2D, GL_SAMPLER_BUFFER, GL_SRGB, GL_STATIC_DRAW, GL_TEXTURE_COORD_ARRAY_POINTER, GL_TEXTURE_2D_MULTISAMPLE, GL_INDEX_ARRAY, GL_T, GL_R11F_G11F_B10F, GL_RENDERBUFFER_ALPHA_SIZE, GL_LESS, GL_TEXTURE_SHARED_SIZE, GL_INCR, GL_DISPLAY_LIST, GL_MAX_TEXTURE_SIZE, GL_MAX_DRAW_BUFFERS, GL_TEXTURE_COMPRESSED_BLOCK_WIDTH, GL_TEXTURE_ENV_MODE, GL_LIGHT3, GL_TEXTURE_BLUE_SIZE, GL_UNSIGNED_INT_SAMPLER_2D_RECT, GL_MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS, GL_EDGE_FLAG_ARRAY, GL_IMAGE_BUFFER, GL_TEXTURE_WRAP_R, GL_QUERY_COUNTER_BITS, GL_DECAL, GL_RG32I, GL_NUM_COMPATIBLE_SUBROUTINES, GL_ATOMIC_COUNTER_BARRIER_BIT, GL_INTERNALFORMAT_PREFERRED, GL_ONE_MINUS_DST_ALPHA, GL_COLOR_ATTACHMENT8, GL_VIEW_CLASS_24_BITS, GL_RGB565, GL_MAX_TESS_CONTROL_IMAGE_UNIFORMS, GL_DEBUG_OUTPUT, GL_COMPRESSED_SIGNED_RED_RGTC1, GL_PACK_SKIP_PIXELS, GL_SECONDARY_COLOR_ARRAY_TYPE, GL_TEXTURE_GREEN_SIZE, GL_EXP2, GL_LIGHT1, GL_INT_IMAGE_3D, GL_MAX_COMBINED_DIMENSIONS, GL_DRAW_BUFFER13, GL_DEPTH, GL_MAX_PATCH_VERTICES, GL_CULL_FACE_MODE, GL_CLIP_PLANE5, GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT, GL_COMPRESSED_RGB, GL_ALPHA_BIAS, GL_TEXTURE_GEN_S, GL_FRAGMENT_SHADER_BIT, GL_SIGNALED, GL_INT_IMAGE_2D_ARRAY, GL_MAP2_TEXTURE_COORD_1, GL_FLOAT_MAT4x3, GL_ACTIVE_RESOURCES, GL_SAMPLER_2D, GL_VERTEX_BINDING_DIVISOR, GL_TEXTURE_DEPTH_SIZE, GL_SRC0_RGB, GL_AND_REVERSE, GL_UNPACK_COMPRESSED_BLOCK_WIDTH, GL_CLEAR, GL_DEPTH_TEXTURE_MODE, GL_TEXTURE_MAX_LOD, GL_MAX_CLIENT_ATTRIB_STACK_DEPTH, GL_SAMPLE_ALPHA_TO_ONE, GL_FLOAT_VEC4, GL_FOG_DENSITY, GL_LINE_TOKEN, GL_TIMEOUT_IGNORED, GL_SLUMINANCE, GL_TEXTURE_FIXED_SAMPLE_LOCATIONS, GL_C4UB_V3F, GL_SAMPLE_BUFFERS, GL_NEAREST, GL_TEXTURE_VIEW_NUM_LAYERS, GL_RG8, GL_LINE_LOOP, GL_RGB8UI, GL_PIXEL_PACK_BUFFER, GL_GEOMETRY_VERTICES_OUT, GL_DEBUG_CALLBACK_FUNCTION, GL_COMPRESSED_ALPHA, GL_FLOAT_MAT2x3, GL_ALPHA_TEST, GL_R16UI, GL_MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS, GL_SYNC_CONDITION, GL_COLOR_ATTACHMENT11, GL_BOOL_VEC2, GL_READ_ONLY, GL_PROGRAM_BINARY_RETRIEVABLE_HINT, GL_COMPUTE_SHADER, GL_VIEW_CLASS_BPTC_FLOAT, GL_R16F, GL_LIGHT6, GL_SECONDARY_COLOR_ARRAY_SIZE, GL_SAMPLER_CUBE_SHADOW, GL_VIEWPORT_SUBPIXEL_BITS, GL_RED_BITS, GL_COMPARE_REF_TO_TEXTURE, GL_STENCIL_BACK_REF, GL_PREVIOUS, GL_STENCIL_BACK_FUNC, GL_COMPRESSED_LUMINANCE, GL_BITMAP_TOKEN, GL_CLIP_DISTANCE7, GL_TEXTURE_COMPRESSED_BLOCK_HEIGHT, GL_UNSIGNED_SHORT_4_4_4_4_REV, GL_VIEW_CLASS_96_BITS, GL_TEXTURE4, GL_ACCUM_GREEN_BITS, GL_POINT_SIZE_RANGE, GL_UNSIGNED_BYTE_3_3_2, GL_TEXTURE_SWIZZLE_A, GL_FRACTIONAL_ODD, GL_MAX_VERTEX_OUTPUT_COMPONENTS, GL_MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS, GL_WRITE_ONLY, GL_IMPLEMENTATION_COLOR_READ_TYPE, GL_SHADER_BINARY_FORMATS, GL_COMPRESSED_RED, GL_PIXEL_MAP_A_TO_A, GL_TEXTURE_COMPONENTS, GL_INVALID_VALUE, GL_GEOMETRY_SUBROUTINE_UNIFORM, GL_CLAMP_READ_COLOR, GL_ACCUM, GL_RGB_SCALE, GL_PIXEL_MAP_S_TO_S_SIZE, GL_CURRENT_RASTER_SECONDARY_COLOR, GL_NUM_SAMPLE_COUNTS, GL_SIMULTANEOUS_TEXTURE_AND_STENCIL_TEST, GL_RASTERIZER_DISCARD, GL_VERTEX_ARRAY_TYPE, GL_SRGB8, GL_SINGLE_COLOR, GL_RG_SNORM, GL_UNSIGNED_INT_IMAGE_2D_RECT, GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS, GL_LUMINANCE, GL_RGB32F, GL_REPLACE, GL_MATRIX_MODE, GL_DEPTH_COMPONENT, GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS, GL_OBJECT_PLANE, GL_WEIGHT_ARRAY_BUFFER_BINDING, GL_RGBA8, GL_SAMPLE_SHADING, GL_FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS, GL_TEXTURE_GEN_Q, GL_TEXTURE_DEPTH_TYPE, GL_MAX_TESS_PATCH_COMPONENTS, GL_SAMPLER_CUBE_MAP_ARRAY, GL_TEXTURE_STACK_DEPTH, GL_SCISSOR_TEST, GL_LIGHT2, GL_STEREO, GL_TEXTURE_COMPRESSED_IMAGE_SIZE, GL_AUTO_NORMAL, GL_TEXTURE_LUMINANCE_TYPE, GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS, GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_GEOMETRY_SHADER, GL_TEXTURE22, GL_IMAGE_CLASS_1_X_8, GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTER_INDICES, GL_CLAMP_TO_EDGE, GL_CLIP_DISTANCE6, GL_ZOOM_X, GL_DRAW_BUFFER0, GL_FRAGMENT_INTERPOLATION_OFFSET_BITS, GL_ACTIVE_TEXTURE, GL_UNSIGNED_INT_VEC2, GL_MAX_EVAL_ORDER, GL_TEXTURE_DEPTH, GL_FRONT_RIGHT, GL_MAX_COMBINED_ATOMIC_COUNTERS, GL_DEBUG_LOGGED_MESSAGES, GL_DEPTH_RANGE, GL_ACTIVE_PROGRAM, GL_DEBUG_SOURCE_API, GL_X4_BYTES, GL_NORMAL_ARRAY, GL_BLEND_SRC_RGB, GL_LINE_RESET_TOKEN, GL_MAP_INVALIDATE_BUFFER_BIT, GL_ONE, GL_DEBUG_TYPE_MARKER, GL_STENCIL_PASS_DEPTH_PASS, GL_NO_ERROR, GL_SMOOTH_POINT_SIZE_RANGE, GL_PROXY_TEXTURE_2D_ARRAY, GL_AUX_BUFFERS, GL_MAX_TEXTURE_STACK_DEPTH, GL_CLIP_DISTANCE4, GL_DOUBLE_VEC3, GL_LEQUAL, GL_TIMESTAMP, GL_POINT_SIZE_MAX, GL_TESS_EVALUATION_SHADER_BIT, GL_MAX_TEXTURE_COORDS, GL_IMAGE_BINDING_LAYER, GL_NONE, GL_BUFFER_SIZE, GL_PIXEL_MAP_B_TO_B, GL_INT_VEC4, GL_MAX_FRAGMENT_INTERPOLATION_OFFSET, GL_RGB16_SNORM, GL_OR_INVERTED, GL_SAMPLE_MASK, GL_INTERNALFORMAT_GREEN_TYPE, GL_TESS_GEN_VERTEX_ORDER, GL_PACK_SKIP_ROWS, GL_NUM_COMPRESSED_TEXTURE_FORMATS, GL_MAX_COMBINED_SHADER_OUTPUT_RESOURCES, GL_RESCALE_NORMAL, GL_DEPTH_COMPONENT24, GL_BACK_LEFT, GL_MAP2_TEXTURE_COORD_4, GL_COLOR, GL_INVALID_INDEX, GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_CONTROL_SHADER, GL_CONSTANT, GL_INT_VEC2, GL_PROGRAM_OUTPUT, GL_UNSIGNED_SHORT, GL_VERTEX_ARRAY_BINDING, GL_RED_SNORM, GL_MODULATE, GL_UNSIGNED_INT, GL_LUMINANCE4_ALPHA4, GL_X3D_COLOR, GL_COMPUTE_LOCAL_WORK_SIZE, GL_SHADER_STORAGE_BUFFER_SIZE, GL_TEXTURE_BUFFER, GL_POSITION, GL_COMPRESSED_INTENSITY, GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS, GL_COLOR_CLEAR_VALUE, GL_R3_G3_B2, GL_MAX_VARYING_VECTORS, GL_IMAGE_CLASS_4_X_32, GL_NUM_SHADING_LANGUAGE_VERSIONS, GL_MIN_MAP_BUFFER_ALIGNMENT, GL_DELETE_STATUS, GL_UNSIGNED_INT_VEC3, GL_TESS_EVALUATION_SUBROUTINE, GL_PIXEL_MAP_G_TO_G_SIZE, GL_FLOAT_MAT4, GL_BACK_RIGHT, GL_LUMINANCE12_ALPHA4, GL_GEOMETRY_SHADER_BIT, GL_MAX_TESS_EVALUATION_IMAGE_UNIFORMS, GL_VERTEX_TEXTURE, GL_FRONT_AND_BACK, GL_ACTIVE_UNIFORM_BLOCKS, GL_RENDERER, GL_COLOR_ATTACHMENT10, GL_FOG_COORDINATE_SOURCE, GL_IMAGE_BINDING_LEVEL, GL_MAX_DEBUG_GROUP_STACK_DEPTH, GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE, GL_ATTRIB_STACK_DEPTH, GL_LINE_STIPPLE_REPEAT, GL_POLYGON_SMOOTH_HINT, GL_LUMINANCE4, GL_SMOOTH_POINT_SIZE_GRANULARITY, GL_OR_REVERSE, GL_MAP2_TEXTURE_COORD_2, GL_FOG_MODE, GL_TOP_LEVEL_ARRAY_SIZE, GL_LUMINANCE16, GL_OPERAND0_RGB, GL_STENCIL_BUFFER_BIT, GL_MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS, GL_MAX_PROJECTION_STACK_DEPTH, GL_ARRAY_BUFFER, GL_POLYGON_SMOOTH, GL_FRAMEBUFFER_ATTACHMENT_LAYERED, GL_EDGE_FLAG_ARRAY_POINTER, GL_FOG_COORD, GL_TEXTURE23, GL_INDEX_LOGIC_OP, GL_REFERENCED_BY_TESS_EVALUATION_SHADER, GL_SHADER_IMAGE_LOAD, GL_DOT3_RGBA, GL_VERTEX_ATTRIB_ARRAY_LONG, GL_MAX_COMPUTE_TEXTURE_IMAGE_UNITS, GL_IMAGE_2D_ARRAY, GL_NORMAL_ARRAY_POINTER, GL_STENCIL_INDEX1, GL_TEXTURE11, GL_DRAW_INDIRECT_BUFFER, GL_COLOR_ATTACHMENT3, GL_INT_IMAGE_CUBE_MAP_ARRAY, GL_BLUE_SCALE, GL_DEPTH_BITS, GL_STENCIL_BACK_PASS_DEPTH_PASS, GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS, GL_FRAMEBUFFER_ATTACHMENT_RED_SIZE, GL_UNIFORM_SIZE, GL_TESS_CONTROL_SUBROUTINE, GL_PROGRAM_INPUT, GL_TIMEOUT_EXPIRED, GL_IMAGE_FORMAT_COMPATIBILITY_BY_SIZE, GL_LIGHT_MODEL_TWO_SIDE, GL_INT_SAMPLER_2D_ARRAY, GL_IMAGE_CLASS_2_X_16, GL_READ_BUFFER, GL_SLUMINANCE_ALPHA, GL_RGB16UI, GL_MAX_DEBUG_MESSAGE_LENGTH, GL_NORMALIZE, GL_CURRENT_COLOR, GL_FRAMEBUFFER_COMPLETE, GL_FASTEST, GL_INDEX_ARRAY_POINTER, GL_UNIFORM_BUFFER, GL_MULTISAMPLE_BIT, GL_CURRENT_SECONDARY_COLOR, GL_UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER, GL_DEBUG_SOURCE_OTHER, GL_MAP1_TEXTURE_COORD_1, GL_SHADER_STORAGE_BLOCK, GL_QUERY_NO_WAIT, GL_C4UB_V2F, GL_AUX2, GL_CURRENT_RASTER_POSITION_VALID, GL_MAX_COLOR_ATTACHMENTS, GL_COLOR_MATERIAL, GL_OFFSET, GL_R16I, GL_UNIFORM_BLOCK_REFERENCED_BY_COMPUTE_SHADER, GL_NAME_STACK_DEPTH, GL_PACK_COMPRESSED_BLOCK_HEIGHT, GL_AND_INVERTED, GL_LIGHT7, GL_DRAW_BUFFER3, GL_NICEST, GL_MAX_GEOMETRY_IMAGE_UNIFORMS, GL_TRANSFORM_FEEDBACK_BUFFER_BINDING, GL_MAP_READ_BIT, GL_PIXEL_MAP_I_TO_G, GL_MAX_VERTEX_UNIFORM_BLOCKS, GL_IMAGE_PIXEL_TYPE, GL_KEEP, GL_GEOMETRY_SUBROUTINE, GL_SOURCE0_ALPHA, GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS, GL_MAX_CLIP_DISTANCES, GL_INVALID_FRAMEBUFFER_OPERATION, GL_BUFFER_VARIABLE, GL_ZERO, GL_ACCUM_CLEAR_VALUE, GL_FRAGMENT_SUBROUTINE, GL_MAX_SAMPLES, GL_INDEX_ARRAY_STRIDE, GL_MAX_HEIGHT, GL_PRIMITIVE_RESTART_FIXED_INDEX, GL_COLOR_ATTACHMENT4, GL_AMBIENT_AND_DIFFUSE, GL_COLOR_ATTACHMENT9, GL_DRAW_BUFFER, GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_EVALUATION_SHADER, GL_BYTE, GL_COMPARE_R_TO_TEXTURE, GL_GREATER, GL_TEXTURE_GATHER_SHADOW, GL_COPY, GL_NORMAL_ARRAY_BUFFER_BINDING, GL_MAX_FRAGMENT_SHADER_STORAGE_BLOCKS, GL_FRAMEBUFFER_SRGB, GL_ADD_SIGNED, GL_READ_PIXELS_TYPE, GL_DONT_CARE, GL_IMAGE_BINDING_NAME, GL_FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE, GL_MAX_ELEMENTS_VERTICES, GL_UNSIGNED_INT_SAMPLER_2D_ARRAY, GL_DEBUG_SEVERITY_HIGH, GL_DST_ALPHA, GL_INTERNALFORMAT_ALPHA_TYPE, GL_DEPTH_STENCIL_TEXTURE_MODE, GL_IS_ROW_MAJOR, GL_RGBA32F, GL_ANY_SAMPLES_PASSED, GL_MAX_LIST_NESTING, GL_UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES, GL_POINT_DISTANCE_ATTENUATION, GL_COLOR_MATERIAL_PARAMETER, GL_LIGHTING, GL_UNIFORM_BLOCK, GL_INTERNALFORMAT_SUPPORTED, GL_MAX_VERTEX_ATTRIB_BINDINGS, GL_ELEMENT_ARRAY_BUFFER_BINDING, GL_INT_SAMPLER_2D_MULTISAMPLE_ARRAY, GL_TOP_LEVEL_ARRAY_STRIDE, GL_AND, GL_SPOT_DIRECTION, GL_MAX_FRAMEBUFFER_LAYERS, GL_PIXEL_MAP_I_TO_B_SIZE, GL_ATOMIC_COUNTER_BUFFER_START, GL_MAX_ATOMIC_COUNTER_BUFFER_BINDINGS, GL_UNSIGNED_INT_SAMPLER_BUFFER, GL_COPY_PIXEL_TOKEN, GL_TRIANGLE_FAN, GL_RENDERBUFFER_DEPTH_SIZE, GL_DISPATCH_INDIRECT_BUFFER, GL_MAX_SERVER_WAIT_TIMEOUT, GL_DEBUG_SOURCE_THIRD_PARTY, GL_FRAMEBUFFER_DEFAULT_HEIGHT, GL_TEXTURE_VIEW_MIN_LAYER, GL_PATCH_VERTICES, GL_DOUBLE_MAT3x4, GL_UNSIGNED_BYTE_2_3_3_REV, GL_VIEW_CLASS_S3TC_DXT5_RGBA, GL_MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS, GL_RG8UI, GL_SHADER_STORAGE_BUFFER, GL_GREEN_BIAS, GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT, GL_RGB12, GL_POINT_SIZE_GRANULARITY, GL_FEEDBACK_BUFFER_SIZE, GL_TRUE, GL_PACK_SKIP_IMAGES, GL_DOUBLE_MAT4, GL_INTERPOLATE, GL_RGB32I, GL_NUM_PROGRAM_BINARY_FORMATS, GL_RGB8, GL_COMPRESSED_LUMINANCE_ALPHA, GL_FRAMEBUFFER_DEFAULT_LAYERS, GL_T2F_C3F_V3F, GL_TEXTURE_CUBE_MAP_POSITIVE_Z, GL_FOG_COORD_ARRAY_POINTER, GL_MAX_PROGRAM_TEXTURE_GATHER_COMPONENTS, GL_RENDER_MODE, GL_QUADRATIC_ATTENUATION, GL_T2F_N3F_V3F, GL_UNPACK_ROW_LENGTH, GL_LINE, GL_LINE_SMOOTH_HINT, GL_STREAM_DRAW, GL_MAP1_COLOR_4, GL_ALPHA_SCALE, GL_COMPRESSED_TEXTURE_FORMATS, GL_FRAGMENT_TEXTURE, GL_FRAMEBUFFER_BLEND, GL_MAX_TESS_GEN_LEVEL, GL_MAX_VERTEX_ATTRIBS, GL_LINE_STRIP, GL_VERSION, GL_CLIENT_VERTEX_ARRAY_BIT, GL_PROJECTION_STACK_DEPTH, GL_VERTEX_ATTRIB_BINDING, GL_SIMULTANEOUS_TEXTURE_AND_DEPTH_WRITE, GL_TEXTURE25, GL_SAMPLE_COVERAGE_VALUE, GL_VERTEX_ATTRIB_ARRAY_POINTER, GL_MAX_TESS_EVALUATION_ATOMIC_COUNTERS, GL_BUFFER_DATA_SIZE, GL_TEXTURE_RED_TYPE, GL_TEXTURE_2D_ARRAY, GL_CURRENT_FOG_COORDINATE, GL_CURRENT_BIT, GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_CONTROL_SHADER, GL_MAX_SHADER_STORAGE_BLOCK_SIZE, GL_FLOAT_MAT3x4, GL_SHORT, GL_POINT_BIT, GL_POLYGON_BIT, GL_QUERY_WAIT, GL_BOOL, GL_FRAMEBUFFER_RENDERABLE, GL_TRANSFORM_FEEDBACK_BUFFER_START, GL_BLUE_BIAS, GL_DYNAMIC_READ, GL_IMAGE_COMPATIBILITY_CLASS, GL_TEXTURE20, GL_ACTIVE_SUBROUTINE_UNIFORMS, GL_SPECULAR, GL_RENDER, GL_MAX_CUBE_MAP_TEXTURE_SIZE, GL_INT_IMAGE_BUFFER, GL_FIXED, GL_FRAGMENT_SUBROUTINE_UNIFORM, GL_VERTEX_ATTRIB_ARRAY_DIVISOR, GL_X3D_COLOR_TEXTURE, GL_IMAGE_CLASS_1_X_32, GL_VIEWPORT_BOUNDS_RANGE, GL_POINT_SMOOTH_HINT, GL_DOT3_RGB, GL_MAX_PIXEL_MAP_TABLE, GL_STENCIL_BACK_PASS_DEPTH_FAIL, GL_TEXTURE_BINDING_RECTANGLE, GL_WAIT_FAILED, GL_SHADER_STORAGE_BUFFER_BINDING, GL_IMAGE_TEXEL_SIZE, GL_RG8I, GL_CLIP_PLANE0, GL_INDEX_ARRAY_BUFFER_BINDING, GL_CLIP_DISTANCE1, GL_CURRENT_RASTER_TEXTURE_COORDS, GL_COMPILE_AND_EXECUTE, GL_UNIFORM_BLOCK_DATA_SIZE, GL_BLEND_SRC, GL_NEAREST_MIPMAP_LINEAR, GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY, GL_LUMINANCE16_ALPHA16, GL_SPOT_EXPONENT, GL_BLEND_DST, GL_SHADE_MODEL, GL_TEXTURE_ALPHA_TYPE, GL_TEXTURE_COMPRESSION_HINT, GL_UNIFORM_BLOCK_NAME_LENGTH, GL_RGBA8UI, GL_TESS_EVALUATION_SUBROUTINE_UNIFORM, GL_ACTIVE_ATTRIBUTE_MAX_LENGTH, GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE, GL_TRANSPOSE_TEXTURE_MATRIX, GL_SAMPLER_2D_RECT, GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL, GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2, GL_CLIP_PLANE1, GL_VERTEX_ATTRIB_ARRAY_ENABLED, GL_FEEDBACK_BUFFER_POINTER, GL_UNIFORM_BLOCK_BINDING, GL_UNIFORM_NAME_LENGTH, GL_TIME_ELAPSED, GL_VERTEX_ARRAY_STRIDE, GL_NUM_EXTENSIONS, GL_MAX_CLIP_PLANES, GL_READ_PIXELS, GL_DEPTH_WRITEMASK, GL_LINEAR, GL_RGB10_A2, GL_INDEX_WRITEMASK, GL_MIN_SAMPLE_SHADING_VALUE, GL_FOG_COORD_ARRAY, GL_UNIFORM_OFFSET, GL_SOURCE2_RGB, GL_TEXTURE_SWIZZLE_B, GL_COMBINE, GL_FLOAT_VEC3, GL_DRAW_BUFFER5, GL_TEXTURE_ENV_COLOR, GL_MEDIUM_FLOAT, GL_EXP, GL_DST_COLOR, GL_TEXTURE_WIDTH, GL_UNSIGNED_INT_2_10_10_10_REV, GL_MAX_FRAGMENT_UNIFORM_COMPONENTS, GL_UNIFORM_BUFFER_BINDING, GL_TEXTURE_BUFFER_SIZE, GL_TRANSFORM_FEEDBACK_VARYING, GL_SRGB_ALPHA, GL_ACTIVE_SUBROUTINE_UNIFORM_MAX_LENGTH, GL_V2F, GL_SECONDARY_COLOR_ARRAY_BUFFER_BINDING, GL_NEVER, GL_SLUMINANCE8, GL_RED_INTEGER, GL_SAMPLER_2D_MULTISAMPLE, GL_MAX_TESS_EVALUATION_UNIFORM_BLOCKS, GL_RENDERBUFFER_INTERNAL_FORMAT, GL_COLOR_ATTACHMENT13, GL_UNPACK_IMAGE_HEIGHT, GL_SYNC_GPU_COMMANDS_COMPLETE, GL_PROXY_TEXTURE_2D, GL_MAP_WRITE_BIT, GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2, GL_DEBUG_TYPE_OTHER, GL_VIEW_CLASS_RGTC2_RG, GL_TEXTURE_COMPARE_MODE, GL_TEXTURE0, GL_ACTIVE_UNIFORMS, GL_ALPHA4, GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET, GL_MAP2_COLOR_4, GL_CURRENT_QUERY, GL_SAMPLER_1D, GL_T2F_V3F, GL_FEEDBACK, GL_LINES_ADJACENCY, GL_INT_SAMPLER_CUBE, GL_STENCIL_RENDERABLE, GL_MAP2_NORMAL, GL_BACK, GL_SMOOTH, GL_BGR, GL_STENCIL, GL_REFERENCED_BY_VERTEX_SHADER, GL_TEXTURE_3D, GL_UNPACK_SWAP_BYTES, GL_PROGRAM_SEPARABLE, GL_ALWAYS, GL_UNSIGNED_INT_IMAGE_BUFFER, GL_RENDERBUFFER_HEIGHT, GL_COLOR_SUM, GL_TESS_EVALUATION_TEXTURE, GL_LINEAR_ATTENUATION, GL_PIXEL_MAP_R_TO_R, GL_DOUBLE_MAT4x2, GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS, GL_AUX0, GL_ZOOM_Y, GL_UNIFORM_BUFFER_START, GL_CONTEXT_PROFILE_MASK, GL_TEXTURE_VIEW_MIN_LEVEL, GL_SRC2_ALPHA, GL_CURRENT_NORMAL, GL_DEBUG_NEXT_LOGGED_MESSAGE_LENGTH, GL_SELECT, GL_MAX_TEXTURE_UNITS, GL_COLOR_ARRAY_BUFFER_BINDING, GL_MAX_VERTEX_SHADER_STORAGE_BLOCKS, GL_TRANSFORM_FEEDBACK_BARRIER_BIT, GL_SAMPLE_POSITION, GL_UNSIGNED_INT_IMAGE_3D, GL_R8, GL_LIST_INDEX, GL_SHININESS, GL_CLAMP_FRAGMENT_COLOR, GL_TEXTURE_COMPARE_FUNC, GL_DECR, GL_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER, GL_MAX_TESS_CONTROL_INPUT_COMPONENTS, GL_INTERNALFORMAT_RED_SIZE, GL_MAX_SAMPLE_MASK_WORDS, GL_DISPATCH_INDIRECT_BUFFER_BINDING, GL_AUX3, GL_FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING, GL_ALPHA_TEST_FUNC, GL_SAMPLER_1D_ARRAY, GL_PIXEL_MAP_I_TO_G_SIZE, GL_TEXTURE_BINDING_2D_ARRAY, GL_CLEAR_BUFFER, GL_STENCIL_VALUE_MASK, GL_MAX_TESS_EVALUATION_INPUT_COMPONENTS, GL_RGB32UI, GL_MAX_TEXTURE_IMAGE_UNITS, GL_COLOR_ATTACHMENT15, GL_PIXEL_UNPACK_BUFFER, GL_UNIFORM_BARRIER_BIT, GL_MAP2_TEXTURE_COORD_3, GL_BLEND, GL_IMAGE_BINDING_ACCESS, GL_GREEN, GL_IMAGE_BINDING_LAYERED, GL_PIXEL_PACK_BUFFER_BINDING, GL_RGB, GL_MAX_COMPUTE_WORK_GROUP_COUNT, GL_ALPHA_INTEGER, GL_DEBUG_SOURCE_WINDOW_SYSTEM, GL_MAX_GEOMETRY_INPUT_COMPONENTS, GL_NORMAL_MAP, GL_ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH, GL_TEXTURE_MIN_FILTER, GL_UNSIGNED_INT_10_10_10_2, GL_FRAGMENT_SHADER_DERIVATIVE_HINT, GL_RENDERBUFFER_GREEN_SIZE, GL_SRC1_COLOR, GL_CULL_FACE, GL_STENCIL_FAIL, GL_REFERENCED_BY_FRAGMENT_SHADER, GL_COMPRESSED_SRGB, GL_DRAW_BUFFER1, GL_ISOLINES, GL_TEXTURE_LUMINANCE_SIZE, GL_COLOR_ARRAY_POINTER, GL_ACTIVE_SUBROUTINES, GL_TEXTURE_BINDING_2D, GL_ALPHA, GL_ATOMIC_COUNTER_BUFFER_BINDING, GL_UNSIGNED_INT_IMAGE_2D_ARRAY, GL_MAX_COMPUTE_LOCAL_INVOCATIONS, GL_STREAM_READ, GL_TEXTURE_WRAP_T, GL_ALL_ATTRIB_BITS, GL_ATOMIC_COUNTER_BUFFER_DATA_SIZE, GL_UNSIGNED_INT_8_8_8_8, GL_TEXTURE29, GL_TEXTURE_UPDATE_BARRIER_BIT, GL_INT_SAMPLER_BUFFER, GL_Q, GL_INDEX_BITS, GL_SPOT_CUTOFF, GL_PACK_LSB_FIRST, GL_BOOL_VEC4, GL_STENCIL_INDEX, GL_TRANSFORM_FEEDBACK_BUFFER_SIZE, GL_SRC2_RGB, GL_MODELVIEW, GL_POLYGON_OFFSET_UNITS, GL_PROXY_TEXTURE_1D_ARRAY, GL_UNDEFINED_VERTEX, GL_UNPACK_COMPRESSED_BLOCK_HEIGHT, GL_TEXTURE9, GL_V3F, GL_FRAGMENT_DEPTH, GL_DEPTH_RENDERABLE, GL_FOG_COLOR, GL_PROGRAM_POINT_SIZE, GL_MAP_COLOR, GL_DEBUG_SEVERITY_MEDIUM, GL_NORMAL_ARRAY_STRIDE, GL_TEXTURE_COORD_ARRAY_SIZE, GL_BLOCK_INDEX, GL_IMAGE_BINDING_FORMAT, GL_STENCIL_REF, GL_CLIENT_ALL_ATTRIB_BITS, GL_DOUBLE_VEC4, GL_DEPTH_SCALE, GL_VIEWPORT_BIT, GL_COMPRESSED_SIGNED_R11_EAC, GL_CLAMP_VERTEX_COLOR, GL_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION, GL_VERTEX_ATTRIB_RELATIVE_OFFSET, GL_UNSIGNED_INT_SAMPLER_1D_ARRAY, GL_UNSIGNED_SHORT_1_5_5_5_REV, GL_EMISSION, GL_CURRENT_RASTER_COLOR, GL_TEXTURE_RESIDENT, GL_COMPRESSED_SRGB8_ETC2, GL_MAX_NUM_COMPATIBLE_SUBROUTINES, GL_TEXTURE17, GL_CONTEXT_FLAG_DEBUG_BIT, GL_TEXTURE16, GL_DITHER, GL_MAP1_TEXTURE_COORD_2, GL_BLEND_DST_RGB, GL_FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE, GL_S, GL_COMPRESSED_RG, GL_NOTEQUAL, GL_TEXTURE_CUBE_MAP_NEGATIVE_Z, GL_NOR, GL_ONE_MINUS_SRC1_COLOR, GL_LINEAR_MIPMAP_NEAREST, GL_SEPARATE_ATTRIBS, GL_MAX_INTEGER_SAMPLES, GL_STENCIL_COMPONENTS, GL_FRAMEBUFFER_BINDING, GL_INTERLEAVED_ATTRIBS, GL_UNIFORM_MATRIX_STRIDE, GL_SIMULTANEOUS_TEXTURE_AND_STENCIL_WRITE, GL_T4F_C4F_N3F_V4F, GL_RED_BIAS, GL_OPERAND2_ALPHA, GL_SRC_COLOR, GL_POLYGON_OFFSET_LINE, GL_REFERENCED_BY_COMPUTE_SHADER, GL_TYPE, GL_ACTIVE_UNIFORM_MAX_LENGTH, GL_TEXTURE_BINDING_1D_ARRAY, GL_MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS, GL_POLYGON_STIPPLE_BIT, GL_MAX_FRAMEBUFFER_SAMPLES, GL_PROJECTION_MATRIX, GL_TRIANGLE_STRIP_ADJACENCY, GL_MULTISAMPLE, GL_MAX_NAME_LENGTH, GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS, GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY, GL_STENCIL_BACK_VALUE_MASK, GL_RGBA16I, GL_COLOR_INDEXES, GL_INVALID_ENUM, GL_UNSIGNED_INT_IMAGE_2D, GL_NOOP, GL_INDEX_SHIFT, GL_INDEX_ARRAY_TYPE, GL_MAX_WIDTH, GL_ANY_SAMPLES_PASSED_CONSERVATIVE, GL_SAMPLES, GL_TEXTURE14, GL_BUFFER_MAPPED, GL_TRANSPOSE_COLOR_MATRIX, GL_LOWER_LEFT, GL_COLOR_ATTACHMENT6, GL_FRAMEBUFFER, GL_MAX_COMPUTE_SHARED_MEMORY_SIZE, GL_TEXTURE_COMPRESSED, GL_RG, GL_POINT, GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT, GL_PROGRAM_PIPELINE_BINDING, GL_SHADER, GL_INT_IMAGE_1D_ARRAY, GL_PROXY_TEXTURE_RECTANGLE, GL_ATOMIC_COUNTER_BUFFER_SIZE, GL_SAMPLE_ALPHA_TO_COVERAGE, GL_FLOAT_MAT4x2, GL_MAX_LABEL_LENGTH, GL_VIEW_CLASS_S3TC_DXT3_RGBA, GL_UNSIGNED_INT_IMAGE_1D, GL_TEXTURE_COORD_ARRAY, GL_FOG, GL_FRAGMENT_SHADER, GL_RGB_INTEGER, GL_SAMPLER_CUBE_MAP_ARRAY_SHADOW, GL_CLIENT_PIXEL_STORE_BIT, GL_ATOMIC_COUNTER_BUFFER_INDEX, GL_MAX_SUBROUTINE_UNIFORM_LOCATIONS, GL_CAVEAT_SUPPORT, GL_RGBA16_SNORM, GL_CLIP_DISTANCE3, GL_SAMPLE_COVERAGE, GL_INTERNALFORMAT_BLUE_TYPE, GL_SHADER_TYPE, GL_ONE_MINUS_DST_COLOR, GL_RG_INTEGER, GL_HALF_FLOAT, GL_SELECTION_BUFFER_POINTER, GL_CONTEXT_FLAGS, GL_UNPACK_SKIP_IMAGES, GL_MAX_MODELVIEW_STACK_DEPTH, GL_STACK_UNDERFLOW, GL_READ_WRITE, GL_LUMINANCE8, GL_QUERY_BY_REGION_NO_WAIT, GL_VIEWPORT_INDEX_PROVOKING_VERTEX, GL_INVERT, GL_LIGHT5, GL_FLOAT_VEC2, GL_MAX_TESS_CONTROL_UNIFORM_COMPONENTS, GL_INTERNALFORMAT_DEPTH_SIZE, GL_SCISSOR_BIT, GL_CLIENT_ATTRIB_STACK_DEPTH, GL_BUFFER_USAGE, GL_INT_IMAGE_1D, GL_MAX_COMPUTE_SHADER_STORAGE_BLOCKS, GL_MAX_FRAGMENT_UNIFORM_BLOCKS, GL_MIPMAP, GL_CURRENT_RASTER_POSITION, GL_TEXTURE_SAMPLES, GL_MAX_RECTANGLE_TEXTURE_SIZE, GL_VERTEX_BINDING_STRIDE, GL_MAX_VARYING_COMPONENTS, GL_VIEW_COMPATIBILITY_CLASS, GL_STENCIL_CLEAR_VALUE, GL_SAMPLER_2D_MULTISAMPLE_ARRAY, GL_RG16, GL_REPEAT, GL_UNSIGNED_SHORT_5_6_5, GL_RENDERBUFFER_RED_SIZE, GL_DEPTH_STENCIL_ATTACHMENT, GL_UNPACK_COMPRESSED_BLOCK_DEPTH, GL_FILL, GL_ONE_MINUS_SRC_COLOR, GL_PACK_ALIGNMENT, GL_DEBUG_TYPE_PORTABILITY, GL_UNSIGNED_INT_5_9_9_9_REV, GL_TEXTURE2, GL_PACK_COMPRESSED_BLOCK_WIDTH, GL_TEXTURE_ENV, GL_PIXEL_MODE_BIT, GL_DOUBLE_MAT2x4, GL_BUFFER_MAP_POINTER, GL_GEQUAL, GL_UNSIGNALED, GL_UNPACK_COMPRESSED_BLOCK_SIZE, GL_RED, GL_BUFFER_BINDING, GL_MAX_FRAGMENT_UNIFORM_VECTORS, GL_FRAMEBUFFER_ATTACHMENT_GREEN_SIZE, GL_LUMINANCE8_ALPHA8, GL_COLOR_ATTACHMENT14, GL_RGBA32UI, GL_PRIMARY_COLOR, GL_MIRRORED_REPEAT, GL_CLAMP_TO_BORDER, GL_VALIDATE_STATUS, GL_COMPUTE_SUBROUTINE, GL_RG8_SNORM, GL_DRAW_FRAMEBUFFER_BINDING, GL_ALL_BARRIER_BITS, GL_COEFF, GL_TEXTURE7, GL_TEXTURE6, GL_SRGB_WRITE, GL_COMPRESSED_SRGB_ALPHA, GL_MAX_FRAGMENT_IMAGE_UNIFORMS, GL_GEOMETRY_OUTPUT_TYPE, GL_CW, GL_MAX_TESS_EVALUATION_UNIFORM_COMPONENTS, GL_UNSIGNED_INT_VEC4, GL_UNIFORM_IS_ROW_MAJOR, GL_TEXTURE_CUBE_MAP, GL_ALPHA_TEST_REF, GL_FOG_BIT, GL_X3_BYTES, GL_TEXTURE_MAX_LEVEL, GL_REFERENCED_BY_GEOMETRY_SHADER, GL_TEXTURE_ALPHA_SIZE, GL_FOG_COORDINATE_ARRAY_TYPE, GL_TEXTURE_STENCIL_SIZE, GL_MAX_FRAGMENT_INPUT_COMPONENTS, GL_ALPHA_BITS, GL_OR, GL_T2F_C4F_N3F_V3F, GL_TEXTURE19, GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE, GL_TESS_GEN_MODE, GL_MAX_LIGHTS, GL_MAX_VERTEX_UNIFORM_COMPONENTS, GL_MAX_VIEWPORT_DIMS, GL_POINT_SIZE_MIN, GL_MAX_VERTEX_IMAGE_UNIFORMS, GL_CLIP_PLANE2, GL_T4F_V4F, GL_UNIFORM_TYPE, GL_COMPUTE_SUBROUTINE_UNIFORM, GL_LOCATION, GL_MAX_VERTEX_ATTRIB_RELATIVE_OFFSET, GL_CONTEXT_COMPATIBILITY_PROFILE_BIT, GL_MAP1_INDEX, GL_FOG_COORDINATE_ARRAY, GL_TEXTURE_COORD_ARRAY_STRIDE, GL_MAX_UNIFORM_BUFFER_BINDINGS, GL_PATCHES, GL_TESS_CONTROL_OUTPUT_VERTICES, GL_LOW_FLOAT, GL_LINEAR_MIPMAP_LINEAR, GL_IMAGE_2D_MULTISAMPLE, GL_COLOR_COMPONENTS, GL_PRIMITIVE_RESTART, GL_SYNC_STATUS, GL_COMPRESSED_RGBA, GL_MAX_ELEMENTS_INDICES, GL_MAX_FRAGMENT_ATOMIC_COUNTERS, GL_VIEW_CLASS_S3TC_DXT1_RGBA, GL_COLOR_ATTACHMENT1, GL_VERTEX_ATTRIB_ARRAY_INTEGER, GL_DRAW_BUFFER10, GL_TEXTURE21, GL_VIEW_CLASS_128_BITS, GL_PACK_IMAGE_HEIGHT, GL_DEPTH32F_STENCIL8, GL_MAP1_VERTEX_4, GL_SRC_ALPHA_SATURATE, GL_PROJECTION, GL_GENERATE_MIPMAP_HINT, GL_PROXY_TEXTURE_3D, GL_SHADER_SOURCE_LENGTH, GL_RGBA8_SNORM, GL_MAX_COMPUTE_IMAGE_UNIFORMS, GL_C4F_N3F_V3F, GL_BLEND_EQUATION_RGB, GL_INDEX_MODE, GL_MAP_STENCIL, GL_VERTEX_ARRAY_SIZE, GL_STATIC_COPY, GL_UNSIGNED_INT_IMAGE_1D_ARRAY, GL_TEXTURE_BUFFER_OFFSET_ALIGNMENT, GL_INTERNALFORMAT_SHARED_SIZE, GL_OPERAND1_ALPHA, GL_IMAGE_3D, GL_RG16UI, GL_TESS_EVALUATION_SHADER, GL_PROGRAM_BINARY_FORMATS, GL_PIXEL_MAP_B_TO_B_SIZE, GL_R32UI, GL_TEXTURE27, GL_RG16I, GL_MAX_TEXTURE_BUFFER_SIZE, GL_SIGNED_NORMALIZED, GL_VENDOR, GL_DEPTH_TEST, GL_TEXTURE_RED_SIZE, GL_TEXTURE_FILTER_CONTROL, GL_TEXTURE_BORDER, GL_TEXTURE_COORD_ARRAY_TYPE, GL_DEBUG_TYPE_PUSH_GROUP, GL_UNSIGNED_BYTE, GL_TRANSPOSE_MODELVIEW_MATRIX, GL_UPPER_LEFT, GL_TEXTURE_COMPRESSED_BLOCK_SIZE, GL_MAX_PROGRAM_TEXEL_OFFSET, GL_TEXTURE_BIT, GL_STREAM_COPY, GL_UNIFORM_ATOMIC_COUNTER_BUFFER_INDEX, GL_MAP_FLUSH_EXPLICIT_BIT, GL_RGB9_E5, GL_RGB5_A1, GL_TEXTURE_VIEW_NUM_LEVELS, GL_IMAGE_1D_ARRAY, GL_AUX1, GL_DEPTH_COMPONENT32F, GL_FLOAT_32_UNSIGNED_INT_24_8_REV, GL_TRANSFORM_FEEDBACK_BUFFER_MODE, GL_FRAMEBUFFER_DEFAULT_SAMPLES, GL_BLUE_BITS, GL_LOAD, GL_BUFFER_ACCESS_FLAGS, GL_COLOR_LOGIC_OP, GL_MAX_LAYERS, GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS, GL_MINOR_VERSION, GL_UNIFORM, GL_COLOR_ATTACHMENT2, GL_HINT_BIT, GL_TRANSPOSE_PROJECTION_MATRIX, GL_DRAW_BUFFER14, GL_FLOAT, GL_SPHERE_MAP, GL_COLOR_INDEX, GL_MAJOR_VERSION, GL_DOUBLE_VEC2, GL_INTENSITY16, GL_INT_SAMPLER_1D, GL_SOURCE1_RGB, GL_SCISSOR_BOX, GL_MAX_3D_TEXTURE_SIZE, GL_CONDITION_SATISFIED, GL_TEXTURE_BUFFER_DATA_STORE_BINDING, GL_COPY_WRITE_BUFFER, GL_SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT, GL_EDGE_FLAG_ARRAY_STRIDE, GL_UNSIGNED_INT_SAMPLER_1D, GL_PIXEL_MAP_I_TO_R_SIZE, GL_ATOMIC_COUNTER_BUFFER, GL_SRGB_READ, GL_R8_SNORM, GL_LEFT, GL_DEBUG_OUTPUT_SYNCHRONOUS, GL_COLOR_ENCODING, GL_INT_SAMPLER_2D_MULTISAMPLE, GL_PIXEL_MAP_I_TO_A_SIZE, GL_CLIP_PLANE4, GL_TEXTURE_MAG_FILTER, GL_UNPACK_SKIP_PIXELS, GL_DOUBLE_MAT3x2, GL_TEXTURE_LOD_BIAS, GL_COLOR_BUFFER_BIT, GL_RGBA2, GL_SAMPLE_MASK_VALUE, GL_DEBUG_SOURCE_APPLICATION, GL_MAX_ATTRIB_STACK_DEPTH, GL_SMOOTH_LINE_WIDTH_RANGE, GL_SAMPLER_BINDING, GL_MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS, GL_DEBUG_SEVERITY_LOW, GL_TEXTURE_BINDING_CUBE_MAP_ARRAY, GL_SOURCE2_ALPHA, GL_SRC_ALPHA, GL_ACTIVE_SUBROUTINE_UNIFORM_LOCATIONS, GL_REFLECTION_MAP, GL_CURRENT_VERTEX_ATTRIB, GL_FOG_COORDINATE, GL_UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER, GL_FOG_START, GL_LUMINANCE12, GL_DRAW_BUFFER12, GL_UNSIGNED_SHORT_5_5_5_1, GL_FOG_COORD_ARRAY_TYPE, GL_MULT, GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_EVALUATION_SHADER, GL_UNSIGNED_INT_24_8, GL_MAX_GEOMETRY_UNIFORM_COMPONENTS, GL_MAX_COMPUTE_UNIFORM_COMPONENTS, GL_MAX_VERTEX_ATOMIC_COUNTERS, GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT, GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY, GL_PROGRAM_PIPELINE, GL_GREEN_BITS, GL_IMAGE_2D, GL_LIGHT_MODEL_COLOR_CONTROL, GL_CURRENT_RASTER_DISTANCE, GL_MIN_PROGRAM_TEXEL_OFFSET, GL_BGRA, GL_STENCIL_WRITEMASK, GL_VERTEX_BINDING_OFFSET, GL_EYE_PLANE, GL_SAMPLER, GL_IMAGE_CLASS_2_X_32, GL_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY, GL_LINE_WIDTH_GRANULARITY, GL_MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS, GL_MAX_IMAGE_UNITS, GL_STENCIL_FUNC, GL_TEXTURE_INTENSITY_TYPE, GL_MAX_RENDERBUFFER_SIZE, GL_TESS_CONTROL_SUBROUTINE_UNIFORM, GL_ACTIVE_ATOMIC_COUNTER_BUFFERS, GL_DEPTH_CLEAR_VALUE, GL_BLUE, GL_VERTEX_ARRAY, GL_POLYGON_OFFSET_FACTOR, GL_TEXTURE10, GL_VIEW_CLASS_32_BITS, GL_RIGHT, GL_FRAMEBUFFER_UNDEFINED, GL_FOG_COORDINATE_ARRAY_POINTER, GL_R8UI, GL_MAP1_NORMAL, GL_TEXTURE28, GL_FRAMEBUFFER_ATTACHMENT_BLUE_SIZE, GL_TEXTURE_CUBE_MAP_SEAMLESS, GL_BUFFER_UPDATE_BARRIER_BIT, GL_FRONT_FACE, GL_IMAGE_2D_RECT, GL_PRIMITIVES_GENERATED, GL_RGBA12, GL_IMPLEMENTATION_COLOR_READ_FORMAT, GL_MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS, GL_DEBUG_TYPE_UNDEFINED_BEHAVIOR, GL_PATCH_DEFAULT_INNER_LEVEL, GL_FILTER, GL_R16, GL_SAMPLER_2D_SHADOW, GL_MAX_DEPTH_TEXTURE_SAMPLES, GL_PRIMITIVE_RESTART_INDEX, GL_INVALID_OPERATION, GL_MAX_TEXTURE_LOD_BIAS, GL_TEXTURE_GEN_T, GL_BUFFER, GL_MAX_VERTEX_UNIFORM_VECTORS, GL_VIEW_CLASS_S3TC_DXT1_RGB, GL_RENDERBUFFER_STENCIL_SIZE, GL_POLYGON_MODE, GL_SHADER_IMAGE_ATOMIC, GL_MAP1_TEXTURE_COORD_4, GL_LOGIC_OP_MODE, GL_DRAW_BUFFER9, GL_SAMPLER_2D_RECT_SHADOW, GL_LINE_WIDTH, GL_INTENSITY4, GL_TRANSFORM_FEEDBACK_VARYINGS, GL_COLOR_ATTACHMENT7, GL_VERTEX_SHADER_BIT, GL_RENDERBUFFER_BINDING, GL_SOURCE1_ALPHA, GL_EDGE_FLAG_ARRAY_BUFFER_BINDING, GL_STATIC_READ, GL_SHADER_STORAGE_BARRIER_BIT, GL_NAME_LENGTH, GL_POLYGON, GL_PASS_THROUGH_TOKEN, GL_LIGHTING_BIT, GL_LINE_BIT, GL_POLYGON_STIPPLE, GL_ALPHA8, GL_FRONT, GL_ACTIVE_VARIABLES, GL_COMPRESSED_RG_RGTC2, GL_TEXTURE24, GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING, GL_FLOAT_MAT3, GL_DEBUG_TYPE_ERROR, GL_VIEW_CLASS_48_BITS, GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS, GL_PROGRAM_BINARY_LENGTH, GL_TEXTURE_IMMUTABLE_LEVELS, GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY, GL_POINT_FADE_THRESHOLD_SIZE, GL_LOW_INT, GL_DEBUG_GROUP_STACK_DEPTH, GL_FRAMEBUFFER_DEFAULT, GL_MAX_NAME_STACK_DEPTH, GL_COLOR_ARRAY, GL_CURRENT_PROGRAM, GL_COMPRESSED_SIGNED_RG_RGTC2, GL_INT_IMAGE_CUBE, GL_DRAW_BUFFER4, GL_FRONT_LEFT, GL_TEXTURE_CUBE_MAP_POSITIVE_Y, GL_VERTEX_ATTRIB_ARRAY_TYPE, GL_GET_TEXTURE_IMAGE_FORMAT, GL_CLIENT_ACTIVE_TEXTURE, GL_SAMPLER_2D_ARRAY_SHADOW, GL_RG32UI, GL_INTERNALFORMAT_STENCIL_SIZE, GL_X2_BYTES, GL_FEEDBACK_BUFFER_TYPE, GL_RGBA16F, GL_COPY_READ_BUFFER, GL_CONSTANT_ATTENUATION, GL_DRAW_BUFFER15, GL_RG16_SNORM, GL_RGB8_SNORM, GL_GEOMETRY_SHADER, GL_LUMINANCE_ALPHA, GL_COLOR_RENDERABLE, GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING, GL_TRIANGLES_ADJACENCY, GL_SAMPLER_CUBE, GL_COLOR_ATTACHMENT0, GL_FLAT, GL_VIEW_CLASS_8_BITS, GL_FIRST_VERTEX_CONVENTION, GL_SLUMINANCE8_ALPHA8, GL_SYNC_FLAGS, GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_COMPUTE_SHADER, GL_SAMPLER_1D_SHADOW, GL_BGR_INTEGER, GL_FLOAT_MAT2x4, GL_PATCH_DEFAULT_OUTER_LEVEL, GL_READ_PIXELS_FORMAT, GL_INTERNALFORMAT_DEPTH_TYPE, GL_DRAW_INDIRECT_BUFFER_BINDING, GL_GEOMETRY_INPUT_TYPE, GL_R8I, GL_TRANSFORM_FEEDBACK_BUFFER, GL_COPY_INVERTED, GL_LIST_MODE, GL_FOG_END, GL_MODELVIEW_STACK_DEPTH, GL_NORMAL_ARRAY_TYPE, GL_UNIFORM_BUFFER_SIZE, GL_LINK_STATUS, GL_ARRAY_STRIDE, GL_STENCIL_INDEX4, GL_MAX_IMAGE_SAMPLES, GL_IMAGE_CLASS_4_X_16, GL_COMPRESSED_SLUMINANCE_ALPHA, GL_RGB_SNORM, GL_INT_VEC3, GL_MAX_ELEMENT_INDEX, GL_IMAGE_CLASS_1_X_16, GL_TEXTURE_RECTANGLE, GL_TEXTURE_BINDING_2D_MULTISAMPLE, GL_TEXTURE_CUBE_MAP_ARRAY, GL_NEAREST_MIPMAP_NEAREST, GL_DRAW_FRAMEBUFFER, GL_TEXTURE_BLUE_TYPE, GL_NUM_ACTIVE_VARIABLES, GL_DOUBLEBUFFER, GL_FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE, GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_VERTEX_SHADER, GL_DEBUG_TYPE_POP_GROUP, GL_LINE_STRIP_ADJACENCY, GL_TRIANGLE_STRIP, GL_MODELVIEW_MATRIX, GL_CONTEXT_FLAG_FORWARD_COMPATIBLE_BIT, GL_TEXTURE_IMAGE_FORMAT, GL_RGBA_SNORM, GL_ALIASED_POINT_SIZE_RANGE, GL_DOUBLE_MAT3, GL_TEXTURE13, GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY, GL_TEXTURE_BASE_LEVEL, GL_RGB16I, GL_HIGH_INT, GL_TEXTURE_MIN_LOD, GL_DEBUG_CALLBACK_USER_PARAM, GL_INDEX_OFFSET, GL_SAMPLE_COVERAGE_INVERT, GL_PACK_COMPRESSED_BLOCK_DEPTH, GL_MAX_TESS_CONTROL_ATOMIC_COUNTERS, GL_FRAMEBUFFER_RENDERABLE_LAYERED, GL_FOG_INDEX, GL_BOOL_VEC3, GL_GEOMETRY_TEXTURE, GL_TEXTURE_BINDING_CUBE_MAP, GL_TESS_CONTROL_TEXTURE, GL_VERTEX_ARRAY_POINTER, GL_MAX_TESS_CONTROL_UNIFORM_BLOCKS, GL_UNSIGNED_INT_SAMPLER_CUBE, GL_COMPRESSED_RED_RGTC1, GL_INDEX, GL_DRAW_BUFFER11, GL_GREEN_INTEGER, GL_MAX_FRAMEBUFFER_HEIGHT, GL_INT, GL_TRIANGLES, GL_ALIASED_LINE_WIDTH_RANGE, GL_DEBUG_SEVERITY_NOTIFICATION, GL_DEPTH_STENCIL, GL_TEXTURE_SHADOW, GL_MAP_INVALIDATE_RANGE_BIT, GL_DECR_WRAP, GL_NAND, GL_SEPARATE_SPECULAR_COLOR, GL_SAMPLER_1D_ARRAY_SHADOW, GL_BLEND_DST_ALPHA, GL_SELECTION_BUFFER_SIZE, GL_TEXTURE_IMAGE_TYPE, GL_RENDERBUFFER, GL_RGB10, GL_INT_IMAGE_2D_MULTISAMPLE, GL_DOUBLE_MAT2, GL_ACCUM_BLUE_BITS, GL_TEXTURE30, GL_VERTEX_ATTRIB_ARRAY_NORMALIZED, GL_INTERNALFORMAT_ALPHA_SIZE, GL_RENDERBUFFER_BLUE_SIZE, GL_TEXTURE_BORDER_COLOR, GL_ALPHA16, GL_ARRAY_BUFFER_BINDING, GL_VERTEX_ATTRIB_ARRAY_SIZE, GL_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH, GL_SHADER_IMAGE_STORE, GL_SHADER_IMAGE_ACCESS_BARRIER_BIT, GL_LINE_STIPPLE_PATTERN, GL_MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS, GL_STENCIL_ATTACHMENT, GL_ACCUM_ALPHA_BITS, GL_CLIP_PLANE3, GL_DEPTH24_STENCIL8, GL_PIXEL_UNPACK_BUFFER_BINDING, GL_RG16F, GL_TEXTURE_INTERNAL_FORMAT, GL_QUERY_BY_REGION_WAIT, GL_EDGE_FLAG, GL_INT_SAMPLER_2D_RECT, GL_FOG_COORD_SRC, GL_VERTEX_ARRAY_BUFFER_BINDING, GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER, GL_ALL_SHADER_BITS, GL_POLYGON_TOKEN, GL_PACK_COMPRESSED_BLOCK_SIZE, GL_X4D_COLOR_TEXTURE, GL_COLOR_ATTACHMENT5, GL_DEPTH_BIAS, GL_UNIFORM_ARRAY_STRIDE, GL_IMAGE_CLASS_10_10_10_2, GL_FALSE, GL_TEXTURE_BUFFER_OFFSET, GL_MAX_COLOR_TEXTURE_SAMPLES, GL_IS_PER_PATCH, GL_INTERNALFORMAT_STENCIL_TYPE, GL_PROXY_TEXTURE_CUBE_MAP, GL_NUM_SHADER_BINARY_FORMATS, GL_TESS_CONTROL_SHADER, GL_MAX_FRAGMENT_ATOMIC_COUNTER_BUFFERS, GL_CONTEXT_CORE_PROFILE_BIT, GL_UNSIGNED_INT_8_8_8_8_REV, GL_STENCIL_TEST, GL_LINE_STIPPLE, GL_SECONDARY_COLOR_ARRAY_POINTER, GL_OPERAND2_RGB, GL_PERSPECTIVE_CORRECTION_HINT, GL_MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS, GL_QUERY_RESULT_AVAILABLE, GL_LIGHT0, GL_STENCIL_BACK_WRITEMASK, GL_TESS_GEN_SPACING, GL_MIN_FRAGMENT_INTERPOLATION_OFFSET, GL_IMAGE_CLASS_2_X_8, GL_R, GL_MAX_VARYING_FLOATS, GL_RGBA4, GL_TEXTURE_BINDING_BUFFER, GL_RGBA_MODE, GL_TEXTURE_GREEN_TYPE, GL_TRANSFORM_BIT, GL_LOGIC_OP, GL_ADD, GL_PACK_SWAP_BYTES, GL_LINE_SMOOTH, GL_FRAMEBUFFER_DEFAULT_WIDTH, GL_ALREADY_SIGNALED, GL_RED_SCALE, GL_STACK_OVERFLOW, GL_DEPTH_COMPONENT16, GL_SHADING_LANGUAGE_VERSION, GL_IMAGE_1D, GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS, GL_COLOR_MATERIAL_FACE, GL_TEXTURE_HEIGHT, GL_COMPATIBLE_SUBROUTINES, GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC, GL_PIXEL_MAP_R_TO_R_SIZE, GL_EXTENSIONS, GL_LUMINANCE6_ALPHA2, GL_VERTEX_ATTRIB_ARRAY_STRIDE, GL_TEXTURE_SWIZZLE_R, GL_TEXTURE15, GL_ORDER, GL_PIXEL_MAP_I_TO_I_SIZE, GL_DRAW_BUFFER8, GL_PIXEL_MAP_I_TO_A
