#function bodies
@createOpenGLFun glMultiDrawElementsEXT(mode::GLenum, count::Ptr{GLsizei}, type_::GLenum, indices::Ptr{Ptr{Void}}, primcount::GLsizei)::Void
@createOpenGLFun glTexBufferEXT(target::GLenum, internalformat::GLenum, buffer::GLuint)::Void
@createOpenGLFun glPrioritizeTexturesEXT(n::GLsizei, textures::Ptr{GLuint}, priorities::Ptr{GLclampf})::Void
@createOpenGLFun glGetSeparableFilterEXT(target::GLenum, format::GLenum, type_::GLenum, row::Ptr{Void}, column::Ptr{Void}, span::Ptr{Void})::Void
@createOpenGLFun glGetBooleanIndexedvEXT(target::GLenum, index::GLuint, data::Ptr{GLboolean})::Void
@createOpenGLFun glBindFragDataLocationEXT(program::GLuint, color::GLuint, name::Ptr{GLchar})::Void
@createOpenGLFun glCopyMultiTexImage1DEXT(texunit::GLenum, target::GLenum, level::GLint, internalformat::GLenum, x::GLint, y::GLint, width::GLsizei, border::GLint)::Void
@createOpenGLFun glTextureRenderbufferEXT(texture::GLuint, target::GLenum, renderbuffer::GLuint)::Void
@createOpenGLFun glBinormal3ivEXT(v::Ptr{GLint})::Void
@createOpenGLFun glGetMultiTexParameterIivEXT(texunit::GLenum, target::GLenum, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glGetVertexAttribLdvEXT(index::GLuint, pname::GLenum, params::Ptr{GLdouble})::Void
@createOpenGLFun glProgramUniformMatrix4x3fvEXT(program::GLuint, location::GLint, count::GLsizei, transpose::GLboolean, value::Ptr{GLfloat})::Void
@createOpenGLFun glGetNamedProgramivEXT(program::GLuint, target::GLenum, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glTexSubImage2DEXT(target::GLenum, level::GLint, xoffset::GLint, yoffset::GLint, width::GLsizei, height::GLsizei, format::GLenum, type_::GLenum, pixels::Ptr{Void})::Void
@createOpenGLFun glGetConvolutionParameterivEXT(target::GLenum, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glMultiTexEnvfvEXT(texunit::GLenum, target::GLenum, pname::GLenum, params::Ptr{GLfloat})::Void
@createOpenGLFun glGetRenderbufferParameterivEXT(target::GLenum, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glTangent3ivEXT(v::Ptr{GLint})::Void
@createOpenGLFun glMatrixRotatedEXT(mode::GLenum, angle::GLdouble, x::GLdouble, y::GLdouble, z::GLdouble)::Void
@createOpenGLFun glDrawElementsInstancedEXT(mode::GLenum, count::GLsizei, type_::GLenum, indices::Ptr{Void}, primcount::GLsizei)::Void
@createOpenGLFun glGetMultiTexParameterIuivEXT(texunit::GLenum, target::GLenum, pname::GLenum, params::Ptr{GLuint})::Void
@createOpenGLFun glVertexArrayMultiTexCoordOffsetEXT(vaobj::GLuint, buffer::GLuint, texunit::GLenum, size::GLint, type_::GLenum, stride::GLsizei, offset::GLintptr)::Void
@createOpenGLFun glProgramUniform3uiEXT(program::GLuint, location::GLint, v0::GLuint, v1::GLuint, v2::GLuint)::Void
@createOpenGLFun glBinormal3fvEXT(v::Ptr{GLfloat})::Void
@createOpenGLFun glProgramUniform1uivEXT(program::GLuint, location::GLint, count::GLsizei, value::Ptr{GLuint})::Void
@createOpenGLFun glRenderbufferStorageMultisampleEXT(target::GLenum, samples::GLsizei, internalformat::GLenum, width::GLsizei, height::GLsizei)::Void
@createOpenGLFun glVariantuivEXT(id::GLuint, addr::Ptr{GLuint})::Void
@createOpenGLFun glEdgeFlagPointerEXT(stride::GLsizei, count::GLsizei, pointer::Ptr{GLboolean})::Void
@createOpenGLFun glGenSymbolsEXT(datatype::GLenum, storagetype::GLenum, range_::GLenum, components::GLuint)::Cuint
@createOpenGLFun glTextureSubImage2DEXT(texture::GLuint, target::GLenum, level::GLint, xoffset::GLint, yoffset::GLint, width::GLsizei, height::GLsizei, format::GLenum, type_::GLenum, pixels::Ptr{Void})::Void
@createOpenGLFun glApplyTextureEXT(mode::GLenum)::Void
@createOpenGLFun glLockArraysEXT(first::GLint, count::GLsizei)::Void
@createOpenGLFun glNamedFramebufferTexture2DEXT(framebuffer::GLuint, attachment::GLenum, textarget::GLenum, texture::GLuint, level::GLint)::Void
@createOpenGLFun glGetVertexArrayPointeri_vEXT(vaobj::GLuint, index::GLuint, pname::GLenum, param::Ptr{Ptr{Void}})::Void
@createOpenGLFun glCullParameterdvEXT(pname::GLenum, params::Ptr{GLdouble})::Void
@createOpenGLFun glVertexAttribL2dvEXT(index::GLuint, v::Ptr{GLdouble})::Void
@createOpenGLFun glProgramUniform2iEXT(program::GLuint, location::GLint, v0::GLint, v1::GLint)::Void
@createOpenGLFun glFramebufferDrawBuffersEXT(framebuffer::GLuint, n::GLsizei, bufs::Ptr{GLenum})::Void
@createOpenGLFun glMultiTexSubImage1DEXT(texunit::GLenum, target::GLenum, level::GLint, xoffset::GLint, width::GLsizei, format::GLenum, type_::GLenum, pixels::Ptr{Void})::Void
@createOpenGLFun glDrawArraysEXT(mode::GLenum, first::GLint, count::GLsizei)::Void
@createOpenGLFun glProgramUniform3ivEXT(program::GLuint, location::GLint, count::GLsizei, value::Ptr{GLint})::Void
@createOpenGLFun glGetUniformuivEXT(program::GLuint, location::GLint, params::Ptr{GLuint})::Void
@createOpenGLFun glProgramUniform2uiEXT(program::GLuint, location::GLint, v0::GLuint, v1::GLuint)::Void
@createOpenGLFun glGetVariantIntegervEXT(id::GLuint, value::GLenum, data::Ptr{GLint})::Void
@createOpenGLFun glNamedBufferDataEXT(buffer::GLuint, size::GLsizeiptr, data::Ptr{Void}, usage::GLenum)::Void
@createOpenGLFun glSecondaryColor3uiEXT(red::GLuint, green::GLuint, blue::GLuint)::Void
@createOpenGLFun glUnlockArraysEXT()::Void
@createOpenGLFun glResetHistogramEXT(target::GLenum)::Void
@createOpenGLFun glIsEnabledIndexedEXT(target::GLenum, index::GLuint)::Bool
@createOpenGLFun glMultiTexParameterIuivEXT(texunit::GLenum, target::GLenum, pname::GLenum, params::Ptr{GLuint})::Void
@createOpenGLFun glBlendFuncSeparateEXT(sfactorRGB::GLenum, dfactorRGB::GLenum, sfactorAlpha::GLenum, dfactorAlpha::GLenum)::Void
@createOpenGLFun glMatrixMultTransposedEXT(mode::GLenum, m::Ptr{GLdouble})::Void
@createOpenGLFun glEnableClientStateiEXT(array::GLenum, index::GLuint)::Void
@createOpenGLFun glEnableVertexArrayAttribEXT(vaobj::GLuint, index::GLuint)::Void
@createOpenGLFun glDrawArraysInstancedEXT(mode::GLenum, start::GLint, count::GLsizei, primcount::GLsizei)::Void
@createOpenGLFun glIndexPointerEXT(type_::GLenum, stride::GLsizei, count::GLsizei, pointer::Ptr{Void})::Void
@createOpenGLFun glVariantubvEXT(id::GLuint, addr::Ptr{GLubyte})::Void
@createOpenGLFun glBindTextureUnitParameterEXT(unit::GLenum, value::GLenum)::Cuint
@createOpenGLFun glCopyTextureImage2DEXT(texture::GLuint, target::GLenum, level::GLint, internalformat::GLenum, x::GLint, y::GLint, width::GLsizei, height::GLsizei, border::GLint)::Void
@createOpenGLFun glEndVertexShaderEXT()::Void
@createOpenGLFun glNamedFramebufferTexture3DEXT(framebuffer::GLuint, attachment::GLenum, textarget::GLenum, texture::GLuint, level::GLint, zoffset::GLint)::Void
@createOpenGLFun glSecondaryColor3sEXT(red::GLshort, green::GLshort, blue::GLshort)::Void
@createOpenGLFun glVertexWeightPointerEXT(size::GLint, type_::GLenum, stride::GLsizei, pointer::Ptr{Void})::Void
@createOpenGLFun glVertexArrayIndexOffsetEXT(vaobj::GLuint, buffer::GLuint, type_::GLenum, stride::GLsizei, offset::GLintptr)::Void
@createOpenGLFun glBindBufferBaseEXT(target::GLenum, index::GLuint, buffer::GLuint)::Void
@createOpenGLFun glMultiTexParameterivEXT(texunit::GLenum, target::GLenum, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glNamedProgramLocalParametersI4ivEXT(program::GLuint, target::GLenum, index::GLuint, count::GLsizei, params::Ptr{GLint})::Void
@createOpenGLFun glProgramUniform1dEXT(program::GLuint, location::GLint, x::GLdouble)::Void
@createOpenGLFun glCopyTexImage2DEXT(target::GLenum, level::GLint, internalformat::GLenum, x::GLint, y::GLint, width::GLsizei, height::GLsizei, border::GLint)::Void
@createOpenGLFun glDrawRangeElementsEXT(mode::GLenum, start::GLuint, END::GLuint, count::GLsizei, type_::GLenum, indices::Ptr{Void})::Void
@createOpenGLFun glEnableClientStateIndexedEXT(array::GLenum, index::GLuint)::Void
@createOpenGLFun glVariantusvEXT(id::GLuint, addr::Ptr{GLushort})::Void
@createOpenGLFun glTangent3dEXT(tx::GLdouble, ty::GLdouble, tz::GLdouble)::Void
@createOpenGLFun glMultiTexRenderbufferEXT(texunit::GLenum, target::GLenum, renderbuffer::GLuint)::Void
@createOpenGLFun glSecondaryColor3ivEXT(v::Ptr{GLint})::Void
@createOpenGLFun glCompressedTextureImage2DEXT(texture::GLuint, target::GLenum, level::GLint, internalformat::GLenum, width::GLsizei, height::GLsizei, border::GLint, imageSize::GLsizei, bits::Ptr{Void})::Void
@createOpenGLFun glCompressedTextureSubImage2DEXT(texture::GLuint, target::GLenum, level::GLint, xoffset::GLint, yoffset::GLint, width::GLsizei, height::GLsizei, format::GLenum, imageSize::GLsizei, bits::Ptr{Void})::Void
@createOpenGLFun glMultiTexSubImage2DEXT(texunit::GLenum, target::GLenum, level::GLint, xoffset::GLint, yoffset::GLint, width::GLsizei, height::GLsizei, format::GLenum, type_::GLenum, pixels::Ptr{Void})::Void
@createOpenGLFun glMatrixFrustumEXT(mode::GLenum, left::GLdouble, right::GLdouble, bottom::GLdouble, top::GLdouble, zNear::GLdouble, zFar::GLdouble)::Void
@createOpenGLFun glVariantdvEXT(id::GLuint, addr::Ptr{GLdouble})::Void
@createOpenGLFun glSecondaryColor3uivEXT(v::Ptr{GLuint})::Void
@createOpenGLFun glGetMultiTexGenivEXT(texunit::GLenum, coord::GLenum, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glMultiDrawArraysEXT(mode::GLenum, first::Ptr{GLint}, count::Ptr{GLsizei}, primcount::GLsizei)::Void
@createOpenGLFun glCompressedMultiTexImage1DEXT(texunit::GLenum, target::GLenum, level::GLint, internalformat::GLenum, width::GLsizei, border::GLint, imageSize::GLsizei, bits::Ptr{Void})::Void
@createOpenGLFun glConvolutionFilter1DEXT(target::GLenum, internalformat::GLenum, width::GLsizei, format::GLenum, type_::GLenum, image::Ptr{Void})::Void
@createOpenGLFun glGenerateMultiTexMipmapEXT(texunit::GLenum, target::GLenum)::Void
@createOpenGLFun glSecondaryColor3dvEXT(v::Ptr{GLdouble})::Void
@createOpenGLFun glGenVertexShadersEXT(range_::GLuint)::Cuint
@createOpenGLFun glGetTransformFeedbackVaryingEXT(program::GLuint, index::GLuint, bufSize::GLsizei, length::Ptr{GLsizei}, size::Ptr{GLsizei}, type_::Ptr{GLenum}, name::Ptr{GLchar})::Void
@createOpenGLFun glGetNamedProgramLocalParameterfvEXT(program::GLuint, target::GLenum, index::GLuint, params::Ptr{GLfloat})::Void
@createOpenGLFun glProgramUniformMatrix4x3dvEXT(program::GLuint, location::GLint, count::GLsizei, transpose::GLboolean, value::Ptr{GLdouble})::Void
@createOpenGLFun glMultiTexEnvivEXT(texunit::GLenum, target::GLenum, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glProgramUniform1ivEXT(program::GLuint, location::GLint, count::GLsizei, value::Ptr{GLint})::Void
@createOpenGLFun glTexSubImage1DEXT(target::GLenum, level::GLint, xoffset::GLint, width::GLsizei, format::GLenum, type_::GLenum, pixels::Ptr{Void})::Void
@createOpenGLFun glTexImage3DEXT(target::GLenum, level::GLint, internalformat::GLenum, width::GLsizei, height::GLsizei, depth::GLsizei, border::GLint, format::GLenum, type_::GLenum, pixels::Ptr{Void})::Void
@createOpenGLFun glBindImageTextureEXT(index::GLuint, texture::GLuint, level::GLint, layered::GLboolean, layer::GLint, access::GLenum, format::GLint)::Void
@createOpenGLFun glMultiTexSubImage3DEXT(texunit::GLenum, target::GLenum, level::GLint, xoffset::GLint, yoffset::GLint, zoffset::GLint, width::GLsizei, height::GLsizei, depth::GLsizei, format::GLenum, type_::GLenum, pixels::Ptr{Void})::Void
@createOpenGLFun glTangent3dvEXT(v::Ptr{GLdouble})::Void
@createOpenGLFun glProgramUniform4dEXT(program::GLuint, location::GLint, x::GLdouble, y::GLdouble, z::GLdouble, w::GLdouble)::Void
@createOpenGLFun glUniform4uiEXT(location::GLint, v0::GLuint, v1::GLuint, v2::GLuint, v3::GLuint)::Void
@createOpenGLFun glTextureParameterfEXT(texture::GLuint, target::GLenum, pname::GLenum, param::GLfloat)::Void
@createOpenGLFun glMultiTexParameterIivEXT(texunit::GLenum, target::GLenum, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glProgramUniformMatrix3dvEXT(program::GLuint, location::GLint, count::GLsizei, transpose::GLboolean, value::Ptr{GLdouble})::Void
@createOpenGLFun glGetQueryObjectui64vEXT(id::GLuint, pname::GLenum, params::Ptr{GLuint64EXT})::Void
@createOpenGLFun glProgramUniform3dEXT(program::GLuint, location::GLint, x::GLdouble, y::GLdouble, z::GLdouble)::Void
@createOpenGLFun glBinormal3dEXT(bx::GLdouble, by::GLdouble, bz::GLdouble)::Void
@createOpenGLFun glCopyMultiTexImage2DEXT(texunit::GLenum, target::GLenum, level::GLint, internalformat::GLenum, x::GLint, y::GLint, width::GLsizei, height::GLsizei, border::GLint)::Void
@createOpenGLFun glSecondaryColor3iEXT(red::GLint, green::GLint, blue::GLint)::Void
@createOpenGLFun glProgramUniform4uivEXT(program::GLuint, location::GLint, count::GLsizei, value::Ptr{GLuint})::Void
@createOpenGLFun glNamedFramebufferTexture1DEXT(framebuffer::GLuint, attachment::GLenum, textarget::GLenum, texture::GLuint, level::GLint)::Void
@createOpenGLFun glProgramUniform3dvEXT(program::GLuint, location::GLint, count::GLsizei, value::Ptr{GLdouble})::Void
@createOpenGLFun glMultiTexGenfEXT(texunit::GLenum, coord::GLenum, pname::GLenum, param::GLfloat)::Void
@createOpenGLFun glGetMultiTexImageEXT(texunit::GLenum, target::GLenum, level::GLint, format::GLenum, type_::GLenum, pixels::Ptr{Void})::Void
@createOpenGLFun glDisableClientStateiEXT(array::GLenum, index::GLuint)::Void
@createOpenGLFun glGenerateMipmapEXT(target::GLenum)::Void
@createOpenGLFun glCopyTexSubImage3DEXT(target::GLenum, level::GLint, xoffset::GLint, yoffset::GLint, zoffset::GLint, x::GLint, y::GLint, width::GLsizei, height::GLsizei)::Void
@createOpenGLFun glGetColorTableEXT(target::GLenum, format::GLenum, type_::GLenum, data::Ptr{Void})::Void
@createOpenGLFun glGetTexParameterIuivEXT(target::GLenum, pname::GLenum, params::Ptr{GLuint})::Void
@createOpenGLFun glVertexAttribLPointerEXT(index::GLuint, size::GLint, type_::GLenum, stride::GLsizei, pointer::Ptr{Void})::Void
@createOpenGLFun glGetTextureParameterivEXT(texture::GLuint, target::GLenum, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glFogCoordfvEXT(coord::Ptr{GLfloat})::Void
@createOpenGLFun glTextureSubImage1DEXT(texture::GLuint, target::GLenum, level::GLint, xoffset::GLint, width::GLsizei, format::GLenum, type_::GLenum, pixels::Ptr{Void})::Void
@createOpenGLFun glProgramUniformMatrix2x3fvEXT(program::GLuint, location::GLint, count::GLsizei, transpose::GLboolean, value::Ptr{GLfloat})::Void
@createOpenGLFun glGetMultiTexParameterfvEXT(texunit::GLenum, target::GLenum, pname::GLenum, params::Ptr{GLfloat})::Void
@createOpenGLFun glMatrixScalefEXT(mode::GLenum, x::GLfloat, y::GLfloat, z::GLfloat)::Void
@createOpenGLFun glMultiTexBufferEXT(texunit::GLenum, target::GLenum, internalformat::GLenum, buffer::GLuint)::Void
@createOpenGLFun glMultiTexImage1DEXT(texunit::GLenum, target::GLenum, level::GLint, internalformat::GLenum, width::GLsizei, border::GLint, format::GLenum, type_::GLenum, pixels::Ptr{Void})::Void
@createOpenGLFun glSeparableFilter2DEXT(target::GLenum, internalformat::GLenum, width::GLsizei, height::GLsizei, format::GLenum, type_::GLenum, row::Ptr{Void}, column::Ptr{Void})::Void
@createOpenGLFun glGetNamedProgramLocalParameterdvEXT(program::GLuint, target::GLenum, index::GLuint, params::Ptr{GLdouble})::Void
@createOpenGLFun glUniform3uivEXT(location::GLint, count::GLsizei, value::Ptr{GLuint})::Void
@createOpenGLFun glVertexAttribL1dvEXT(index::GLuint, v::Ptr{GLdouble})::Void
@createOpenGLFun glGetQueryObjecti64vEXT(id::GLuint, pname::GLenum, params::Ptr{GLint64EXT})::Void
@createOpenGLFun glDisableVertexArrayEXT(vaobj::GLuint, array::GLenum)::Void
@createOpenGLFun glActiveStencilFaceEXT(face::GLenum)::Void
@createOpenGLFun glGetVariantFloatvEXT(id::GLuint, value::GLenum, data::Ptr{GLfloat})::Void
@createOpenGLFun glGetTexParameterIivEXT(target::GLenum, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glGetInvariantBooleanvEXT(id::GLuint, value::GLenum, data::Ptr{GLboolean})::Void
@createOpenGLFun glGetNamedBufferSubDataEXT(buffer::GLuint, offset::GLintptr, size::GLsizeiptr, data::Ptr{Void})::Void
@createOpenGLFun glTexParameterIuivEXT(target::GLenum, pname::GLenum, params::Ptr{GLuint})::Void
@createOpenGLFun glUniform2uivEXT(location::GLint, count::GLsizei, value::Ptr{GLuint})::Void
@createOpenGLFun glProgramUniformMatrix4x2fvEXT(program::GLuint, location::GLint, count::GLsizei, transpose::GLboolean, value::Ptr{GLfloat})::Void
@createOpenGLFun glFlushMappedNamedBufferRangeEXT(buffer::GLuint, offset::GLintptr, length::GLsizeiptr)::Void
@createOpenGLFun glGetNamedRenderbufferParameterivEXT(renderbuffer::GLuint, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glShaderOp2EXT(op::GLenum, res::GLuint, arg1::GLuint, arg2::GLuint)::Void
@createOpenGLFun glGenFramebuffersEXT(n::GLsizei, framebuffers::Ptr{GLuint})::Void
@createOpenGLFun glPolygonOffsetEXT(factor::GLfloat, bias::GLfloat)::Void
@createOpenGLFun glStencilClearTagEXT(stencilTagBits::GLsizei, stencilClearTag::GLuint)::Void
@createOpenGLFun glGetPointerIndexedvEXT(target::GLenum, index::GLuint, data::Ptr{Ptr{Void}})::Void
@createOpenGLFun glCopyTexImage1DEXT(target::GLenum, level::GLint, internalformat::GLenum, x::GLint, y::GLint, width::GLsizei, border::GLint)::Void
@createOpenGLFun glColorPointerEXT(size::GLint, type_::GLenum, stride::GLsizei, count::GLsizei, pointer::Ptr{Void})::Void
@createOpenGLFun glGetCompressedTextureImageEXT(texture::GLuint, target::GLenum, lod::GLint, img::Ptr{Void})::Void
@createOpenGLFun glNamedProgramLocalParameter4fvEXT(program::GLuint, target::GLenum, index::GLuint, params::Ptr{GLfloat})::Void
@createOpenGLFun glMultiTexCoordPointerEXT(texunit::GLenum, size::GLint, type_::GLenum, stride::GLsizei, pointer::Ptr{Void})::Void
@createOpenGLFun glGetHistogramParameterfvEXT(target::GLenum, pname::GLenum, params::Ptr{GLfloat})::Void
@createOpenGLFun glClientAttribDefaultEXT(mask::GLbitfield)::Void
@createOpenGLFun glUniform1uivEXT(location::GLint, count::GLsizei, value::Ptr{GLuint})::Void
@createOpenGLFun glBindVertexShaderEXT(id::GLuint)::Void
@createOpenGLFun glMatrixTranslatefEXT(mode::GLenum, x::GLfloat, y::GLfloat, z::GLfloat)::Void
@createOpenGLFun glTexSubImage3DEXT(target::GLenum, level::GLint, xoffset::GLint, yoffset::GLint, zoffset::GLint, width::GLsizei, height::GLsizei, depth::GLsizei, format::GLenum, type_::GLenum, pixels::Ptr{Void})::Void
@createOpenGLFun glBinormal3bEXT(bx::GLbyte, by::GLbyte, bz::GLbyte)::Void
@createOpenGLFun glPixelTransformParameterfvEXT(target::GLenum, pname::GLenum, params::Ptr{GLfloat})::Void
@createOpenGLFun glProgramUniform4fEXT(program::GLuint, location::GLint, v0::GLfloat, v1::GLfloat, v2::GLfloat, v3::GLfloat)::Void
@createOpenGLFun glProgramUniform4iEXT(program::GLuint, location::GLint, v0::GLint, v1::GLint, v2::GLint, v3::GLint)::Void
@createOpenGLFun glGetPixelTransformParameterivEXT(target::GLenum, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glProgramUniformMatrix3x2dvEXT(program::GLuint, location::GLint, count::GLsizei, transpose::GLboolean, value::Ptr{GLdouble})::Void
@createOpenGLFun glColorSubTableEXT(target::GLenum, start::GLsizei, count::GLsizei, format::GLenum, type_::GLenum, data::Ptr{Void})::Void
@createOpenGLFun glTextureSubImage3DEXT(texture::GLuint, target::GLenum, level::GLint, xoffset::GLint, yoffset::GLint, zoffset::GLint, width::GLsizei, height::GLsizei, depth::GLsizei, format::GLenum, type_::GLenum, pixels::Ptr{Void})::Void
@createOpenGLFun glGetNamedBufferParameterivEXT(buffer::GLuint, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glGetPixelTransformParameterfvEXT(target::GLenum, pname::GLenum, params::Ptr{GLfloat})::Void
@createOpenGLFun glPixelTransformParameterfEXT(target::GLenum, pname::GLenum, param::GLfloat)::Void
@createOpenGLFun glBindRenderbufferEXT(target::GLenum, renderbuffer::GLuint)::Void
@createOpenGLFun glSecondaryColor3fvEXT(v::Ptr{GLfloat})::Void
@createOpenGLFun glArrayElementEXT(i::GLint)::Void
@createOpenGLFun glVertexAttribL3dvEXT(index::GLuint, v::Ptr{GLdouble})::Void
@createOpenGLFun glProgramUniform2ivEXT(program::GLuint, location::GLint, count::GLsizei, value::Ptr{GLint})::Void
@createOpenGLFun glProgramUniform1dvEXT(program::GLuint, location::GLint, count::GLsizei, value::Ptr{GLdouble})::Void
@createOpenGLFun glCompressedTextureImage1DEXT(texture::GLuint, target::GLenum, level::GLint, internalformat::GLenum, width::GLsizei, border::GLint, imageSize::GLsizei, bits::Ptr{Void})::Void
@createOpenGLFun glTangent3sEXT(tx::GLshort, ty::GLshort, tz::GLshort)::Void
@createOpenGLFun glNamedProgramLocalParametersI4uivEXT(program::GLuint, target::GLenum, index::GLuint, count::GLsizei, params::Ptr{GLuint})::Void
@createOpenGLFun glCopyConvolutionFilter1DEXT(target::GLenum, internalformat::GLenum, x::GLint, y::GLint, width::GLsizei)::Void
@createOpenGLFun glDisableClientStateIndexedEXT(array::GLenum, index::GLuint)::Void
@createOpenGLFun glProgramUniform3fvEXT(program::GLuint, location::GLint, count::GLsizei, value::Ptr{GLfloat})::Void
@createOpenGLFun glNamedRenderbufferStorageEXT(renderbuffer::GLuint, internalformat::GLenum, width::GLsizei, height::GLsizei)::Void
@createOpenGLFun glNamedProgramLocalParameterI4iEXT(program::GLuint, target::GLenum, index::GLuint, x::GLint, y::GLint, z::GLint, w::GLint)::Void
@createOpenGLFun glGetConvolutionParameterfvEXT(target::GLenum, pname::GLenum, params::Ptr{GLfloat})::Void
@createOpenGLFun glTangent3fvEXT(v::Ptr{GLfloat})::Void
@createOpenGLFun glMapNamedBufferEXT(buffer::GLuint, access::GLenum)::Ptr{Void}
@createOpenGLFun glConvolutionParameteriEXT(target::GLenum, pname::GLenum, params::GLint)::Void
@createOpenGLFun glSecondaryColor3bEXT(red::GLbyte, green::GLbyte, blue::GLbyte)::Void
@createOpenGLFun glBindFramebufferEXT(target::GLenum, framebuffer::GLuint)::Void
@createOpenGLFun glShaderOp1EXT(op::GLenum, res::GLuint, arg1::GLuint)::Void
@createOpenGLFun glMatrixPushEXT(mode::GLenum)::Void
@createOpenGLFun glMatrixLoadTransposefEXT(mode::GLenum, m::Ptr{GLfloat})::Void
@createOpenGLFun glBindBufferOffsetEXT(target::GLenum, index::GLuint, buffer::GLuint, offset::GLintptr)::Void
@createOpenGLFun glCheckFramebufferStatusEXT(target::GLenum)::Cint
@createOpenGLFun glVertexArrayVertexAttribLOffsetEXT(vaobj::GLuint, buffer::GLuint, index::GLuint, size::GLint, type_::GLenum, stride::GLsizei, offset::GLintptr)::Void
@createOpenGLFun glGetNamedProgramStringEXT(program::GLuint, target::GLenum, pname::GLenum, string_::Ptr{Void})::Void
@createOpenGLFun glProgramUniform2dEXT(program::GLuint, location::GLint, x::GLdouble, y::GLdouble)::Void
@createOpenGLFun glConvolutionParameterfvEXT(target::GLenum, pname::GLenum, params::Ptr{GLfloat})::Void
@createOpenGLFun glDepthBoundsEXT(zmin::GLclampd, zmax::GLclampd)::Void
@createOpenGLFun glMatrixPopEXT(mode::GLenum)::Void
@createOpenGLFun glSecondaryColor3fEXT(red::GLfloat, green::GLfloat, blue::GLfloat)::Void
@createOpenGLFun glCopyMultiTexSubImage3DEXT(texunit::GLenum, target::GLenum, level::GLint, xoffset::GLint, yoffset::GLint, zoffset::GLint, x::GLint, y::GLint, width::GLsizei, height::GLsizei)::Void
@createOpenGLFun glTransformFeedbackVaryingsEXT(program::GLuint, count::GLsizei, varyings::Ptr{Uint8}, bufferMode::GLenum)::Void
@createOpenGLFun glCopyConvolutionFilter2DEXT(target::GLenum, internalformat::GLenum, x::GLint, y::GLint, width::GLsizei, height::GLsizei)::Void
@createOpenGLFun glIsRenderbufferEXT(renderbuffer::GLuint)::Bool
@createOpenGLFun glProgramUniformMatrix4fvEXT(program::GLuint, location::GLint, count::GLsizei, transpose::GLboolean, value::Ptr{GLfloat})::Void
@createOpenGLFun glNamedProgramLocalParameter4fEXT(program::GLuint, target::GLenum, index::GLuint, x::GLfloat, y::GLfloat, z::GLfloat, w::GLfloat)::Void
@createOpenGLFun glFogCoorddEXT(coord::GLdouble)::Void
@createOpenGLFun glVariantPointerEXT(id::GLuint, type_::GLenum, stride::GLuint, addr::Ptr{Void})::Void
@createOpenGLFun glProgramUniformMatrix2x4dvEXT(program::GLuint, location::GLint, count::GLsizei, transpose::GLboolean, value::Ptr{GLdouble})::Void
@createOpenGLFun glGetTextureParameterIivEXT(texture::GLuint, target::GLenum, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glProgramEnvParameters4fvEXT(target::GLenum, index::GLuint, count::GLsizei, params::Ptr{GLfloat})::Void
@createOpenGLFun glSamplePatternEXT(pattern::GLenum)::Void
@createOpenGLFun glBlendColorEXT(red::GLfloat, green::GLfloat, blue::GLfloat, alpha::GLfloat)::Void
@createOpenGLFun glGetHistogramEXT(target::GLenum, reset::GLboolean, format::GLenum, type_::GLenum, values::Ptr{Void})::Void
@createOpenGLFun glSecondaryColor3usEXT(red::GLushort, green::GLushort, blue::GLushort)::Void
@createOpenGLFun glDisableVertexArrayAttribEXT(vaobj::GLuint, index::GLuint)::Void
@createOpenGLFun glGetTextureParameterIuivEXT(texture::GLuint, target::GLenum, pname::GLenum, params::Ptr{GLuint})::Void
@createOpenGLFun glCreateShaderProgramEXT(type_::GLenum, string_::Ptr{GLchar})::Cuint
@createOpenGLFun glCompressedTextureImage3DEXT(texture::GLuint, target::GLenum, level::GLint, internalformat::GLenum, width::GLsizei, height::GLsizei, depth::GLsizei, border::GLint, imageSize::GLsizei, bits::Ptr{Void})::Void
@createOpenGLFun glGetMultiTexParameterivEXT(texunit::GLenum, target::GLenum, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glBindMaterialParameterEXT(face::GLenum, value::GLenum)::Cuint
@createOpenGLFun glTangentPointerEXT(type_::GLenum, stride::GLsizei, pointer::Ptr{Void})::Void
@createOpenGLFun glGetFloati_vEXT(target::GLenum, index::GLuint, data::Ptr{GLfloat})::Void
@createOpenGLFun glGetPointeri_vEXT(target::GLenum, index::GLuint, data::Ptr{Ptr{Void}})::Void
@createOpenGLFun glVertexArrayEdgeFlagOffsetEXT(vaobj::GLuint, buffer::GLuint, stride::GLsizei, offset::GLintptr)::Void
@createOpenGLFun glGetMultiTexLevelParameterfvEXT(texunit::GLenum, target::GLenum, level::GLint, pname::GLenum, params::Ptr{GLfloat})::Void
@createOpenGLFun glTextureParameteriEXT(texture::GLuint, target::GLenum, pname::GLenum, param::GLint)::Void
@createOpenGLFun glFramebufferReadBufferEXT(framebuffer::GLuint, mode::GLenum)::Void
@createOpenGLFun glCompressedMultiTexSubImage2DEXT(texunit::GLenum, target::GLenum, level::GLint, xoffset::GLint, yoffset::GLint, width::GLsizei, height::GLsizei, format::GLenum, imageSize::GLsizei, bits::Ptr{Void})::Void
@createOpenGLFun glMatrixScaledEXT(mode::GLenum, x::GLdouble, y::GLdouble, z::GLdouble)::Void
@createOpenGLFun glNamedProgramStringEXT(program::GLuint, target::GLenum, format::GLenum, len::GLsizei, string_::Ptr{Void})::Void
@createOpenGLFun glUseShaderProgramEXT(type_::GLenum, program::GLuint)::Void
@createOpenGLFun glCheckNamedFramebufferStatusEXT(framebuffer::GLuint, target::GLenum)::Cint
@createOpenGLFun glCopyTexSubImage1DEXT(target::GLenum, level::GLint, xoffset::GLint, x::GLint, y::GLint, width::GLsizei)::Void
@createOpenGLFun glGenRenderbuffersEXT(n::GLsizei, renderbuffers::Ptr{GLuint})::Void
@createOpenGLFun glBindTextureEXT(target::GLenum, texture::GLuint)::Void
@createOpenGLFun glNamedFramebufferTextureFaceEXT(framebuffer::GLuint, attachment::GLenum, texture::GLuint, level::GLint, face::GLenum)::Void
@createOpenGLFun glGetConvolutionFilterEXT(target::GLenum, format::GLenum, type_::GLenum, image::Ptr{Void})::Void
@createOpenGLFun glTangent3svEXT(v::Ptr{GLshort})::Void
@createOpenGLFun glGetNamedProgramLocalParameterIivEXT(program::GLuint, target::GLenum, index::GLuint, params::Ptr{GLint})::Void
@createOpenGLFun glMatrixRotatefEXT(mode::GLenum, angle::GLfloat, x::GLfloat, y::GLfloat, z::GLfloat)::Void
@createOpenGLFun glMatrixMultTransposefEXT(mode::GLenum, m::Ptr{GLfloat})::Void
@createOpenGLFun glVertexWeightfEXT(weight::GLfloat)::Void
@createOpenGLFun glGetVariantPointervEXT(id::GLuint, value::GLenum, data::Ptr{Ptr{Void}})::Void
@createOpenGLFun glMultiTexGendvEXT(texunit::GLenum, coord::GLenum, pname::GLenum, params::Ptr{GLdouble})::Void
@createOpenGLFun glGetInvariantFloatvEXT(id::GLuint, value::GLenum, data::Ptr{GLfloat})::Void
@createOpenGLFun glTextureParameterivEXT(texture::GLuint, target::GLenum, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glNamedCopyBufferSubDataEXT(readBuffer::GLuint, writeBuffer::GLuint, readOffset::GLintptr, writeOffset::GLintptr, size::GLsizeiptr)::Void
@createOpenGLFun glProgramUniformMatrix4x2dvEXT(program::GLuint, location::GLint, count::GLsizei, transpose::GLboolean, value::Ptr{GLdouble})::Void
@createOpenGLFun glUniform4uivEXT(location::GLint, count::GLsizei, value::Ptr{GLuint})::Void
@createOpenGLFun glMatrixLoadfEXT(mode::GLenum, m::Ptr{GLfloat})::Void
@createOpenGLFun glVertexArrayVertexOffsetEXT(vaobj::GLuint, buffer::GLuint, size::GLint, type_::GLenum, stride::GLsizei, offset::GLintptr)::Void
@createOpenGLFun glCopyMultiTexSubImage2DEXT(texunit::GLenum, target::GLenum, level::GLint, xoffset::GLint, yoffset::GLint, x::GLint, y::GLint, width::GLsizei, height::GLsizei)::Void
@createOpenGLFun glCompressedTextureSubImage3DEXT(texture::GLuint, target::GLenum, level::GLint, xoffset::GLint, yoffset::GLint, zoffset::GLint, width::GLsizei, height::GLsizei, depth::GLsizei, format::GLenum, imageSize::GLsizei, bits::Ptr{Void})::Void
@createOpenGLFun glVertexArrayColorOffsetEXT(vaobj::GLuint, buffer::GLuint, size::GLint, type_::GLenum, stride::GLsizei, offset::GLintptr)::Void
@createOpenGLFun glMultiTexGeniEXT(texunit::GLenum, coord::GLenum, pname::GLenum, param::GLint)::Void
@createOpenGLFun glBindMultiTextureEXT(texunit::GLenum, target::GLenum, texture::GLuint)::Void
@createOpenGLFun glGetTextureLevelParameterivEXT(texture::GLuint, target::GLenum, level::GLint, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glVertexAttribL3dEXT(index::GLuint, x::GLdouble, y::GLdouble, z::GLdouble)::Void
@createOpenGLFun glMultiTexEnviEXT(texunit::GLenum, target::GLenum, pname::GLenum, param::GLint)::Void
@createOpenGLFun glMultiTexGendEXT(texunit::GLenum, coord::GLenum, pname::GLenum, param::GLdouble)::Void
@createOpenGLFun glProgramUniform4dvEXT(program::GLuint, location::GLint, count::GLsizei, value::Ptr{GLdouble})::Void
@createOpenGLFun glFramebufferTexture3DEXT(target::GLenum, attachment::GLenum, textarget::GLenum, texture::GLuint, level::GLint, zoffset::GLint)::Void
@createOpenGLFun glCompressedMultiTexSubImage1DEXT(texunit::GLenum, target::GLenum, level::GLint, xoffset::GLint, width::GLsizei, format::GLenum, imageSize::GLsizei, bits::Ptr{Void})::Void
@createOpenGLFun glGetVariantBooleanvEXT(id::GLuint, value::GLenum, data::Ptr{GLboolean})::Void
@createOpenGLFun glCopyTexSubImage2DEXT(target::GLenum, level::GLint, xoffset::GLint, yoffset::GLint, x::GLint, y::GLint, width::GLsizei, height::GLsizei)::Void
@createOpenGLFun glSecondaryColor3svEXT(v::Ptr{GLshort})::Void
@createOpenGLFun glMatrixMultfEXT(mode::GLenum, m::Ptr{GLfloat})::Void
@createOpenGLFun glFogCoorddvEXT(coord::Ptr{GLdouble})::Void
@createOpenGLFun glMinmaxEXT(target::GLenum, internalformat::GLenum, sink::GLboolean)::Void
@createOpenGLFun glTextureMaterialEXT(face::GLenum, mode::GLenum)::Void
@createOpenGLFun glActiveProgramEXT(program::GLuint)::Void
@createOpenGLFun glSecondaryColor3usvEXT(v::Ptr{GLushort})::Void
@createOpenGLFun glGetUniformBufferSizeEXT(program::GLuint, location::GLint)::Cint
@createOpenGLFun glRenderbufferStorageEXT(target::GLenum, internalformat::GLenum, width::GLsizei, height::GLsizei)::Void
@createOpenGLFun glBeginVertexShaderEXT()::Void
@createOpenGLFun glProgramUniform2dvEXT(program::GLuint, location::GLint, count::GLsizei, value::Ptr{GLdouble})::Void
@createOpenGLFun glProvokingVertexEXT(mode::GLenum)::Void
@createOpenGLFun glDisableVariantClientStateEXT(id::GLuint)::Void
@createOpenGLFun glBinormal3svEXT(v::Ptr{GLshort})::Void
@createOpenGLFun glGetTextureParameterfvEXT(texture::GLuint, target::GLenum, pname::GLenum, params::Ptr{GLfloat})::Void
@createOpenGLFun glGetDoubleIndexedvEXT(target::GLenum, index::GLuint, data::Ptr{GLdouble})::Void
@createOpenGLFun glMultiTexParameterfvEXT(texunit::GLenum, target::GLenum, pname::GLenum, params::Ptr{GLfloat})::Void
@createOpenGLFun glNamedProgramLocalParameter4dEXT(program::GLuint, target::GLenum, index::GLuint, x::GLdouble, y::GLdouble, z::GLdouble, w::GLdouble)::Void
@createOpenGLFun glProgramUniform3fEXT(program::GLuint, location::GLint, v0::GLfloat, v1::GLfloat, v2::GLfloat)::Void
@createOpenGLFun glDeleteFramebuffersEXT(n::GLsizei, framebuffers::Ptr{GLuint})::Void
@createOpenGLFun glSampleMaskEXT(value::GLclampf, invert::GLboolean)::Void
@createOpenGLFun glSecondaryColor3ubvEXT(v::Ptr{GLubyte})::Void
@createOpenGLFun glMultiTexEnvfEXT(texunit::GLenum, target::GLenum, pname::GLenum, param::GLfloat)::Void
@createOpenGLFun glCompressedMultiTexImage2DEXT(texunit::GLenum, target::GLenum, level::GLint, internalformat::GLenum, width::GLsizei, height::GLsizei, border::GLint, imageSize::GLsizei, bits::Ptr{Void})::Void
@createOpenGLFun glMapNamedBufferRangeEXT(buffer::GLuint, offset::GLintptr, length::GLsizeiptr, access::GLbitfield)::Ptr{Void}
@createOpenGLFun glProgramUniformMatrix3x4fvEXT(program::GLuint, location::GLint, count::GLsizei, transpose::GLboolean, value::Ptr{GLfloat})::Void
@createOpenGLFun glBindLightParameterEXT(light::GLenum, value::GLenum)::Cuint
@createOpenGLFun glVertexArraySecondaryColorOffsetEXT(vaobj::GLuint, buffer::GLuint, size::GLint, type_::GLenum, stride::GLsizei, offset::GLintptr)::Void
@createOpenGLFun glGetLocalConstantBooleanvEXT(id::GLuint, value::GLenum, data::Ptr{GLboolean})::Void
@createOpenGLFun glTangent3bvEXT(v::Ptr{GLbyte})::Void
@createOpenGLFun glNamedFramebufferTextureLayerEXT(framebuffer::GLuint, attachment::GLenum, texture::GLuint, level::GLint, layer::GLint)::Void
@createOpenGLFun glProgramUniform1uiEXT(program::GLuint, location::GLint, v0::GLuint)::Void
@createOpenGLFun glExtractComponentEXT(res::GLuint, src::GLuint, num::GLuint)::Void
@createOpenGLFun glEnableIndexedEXT(target::GLenum, index::GLuint)::Void
@createOpenGLFun glNormalPointerEXT(type_::GLenum, stride::GLsizei, count::GLsizei, pointer::Ptr{Void})::Void
@createOpenGLFun glNamedRenderbufferStorageMultisampleCoverageEXT(renderbuffer::GLuint, coverageSamples::GLsizei, colorSamples::GLsizei, internalformat::GLenum, width::GLsizei, height::GLsizei)::Void
@createOpenGLFun glTextureImage2DEXT(texture::GLuint, target::GLenum, level::GLint, internalformat::GLenum, width::GLsizei, height::GLsizei, border::GLint, format::GLenum, type_::GLenum, pixels::Ptr{Void})::Void
@createOpenGLFun glProgramUniformMatrix2fvEXT(program::GLuint, location::GLint, count::GLsizei, transpose::GLboolean, value::Ptr{GLfloat})::Void
@createOpenGLFun glTangent3fEXT(tx::GLfloat, ty::GLfloat, tz::GLfloat)::Void
@createOpenGLFun glIndexMaterialEXT(face::GLenum, mode::GLenum)::Void
@createOpenGLFun glGetTextureImageEXT(texture::GLuint, target::GLenum, level::GLint, format::GLenum, type_::GLenum, pixels::Ptr{Void})::Void
@createOpenGLFun glProgramUniform4ivEXT(program::GLuint, location::GLint, count::GLsizei, value::Ptr{GLint})::Void
@createOpenGLFun glGetVertexArrayIntegeri_vEXT(vaobj::GLuint, index::GLuint, pname::GLenum, param::Ptr{GLint})::Void
@createOpenGLFun glVariantfvEXT(id::GLuint, addr::Ptr{GLfloat})::Void
@createOpenGLFun glSecondaryColorPointerEXT(size::GLint, type_::GLenum, stride::GLsizei, pointer::Ptr{Void})::Void
@createOpenGLFun glNamedFramebufferRenderbufferEXT(framebuffer::GLuint, attachment::GLenum, renderbuffertarget::GLenum, renderbuffer::GLuint)::Void
@createOpenGLFun glGetMinmaxParameterfvEXT(target::GLenum, pname::GLenum, params::Ptr{GLfloat})::Void
@createOpenGLFun glFogCoordPointerEXT(type_::GLenum, stride::GLsizei, pointer::Ptr{Void})::Void
@createOpenGLFun glGenerateTextureMipmapEXT(texture::GLuint, target::GLenum)::Void
@createOpenGLFun glGetIntegerIndexedvEXT(target::GLenum, index::GLuint, data::Ptr{GLint})::Void
@createOpenGLFun glGetTextureLevelParameterfvEXT(texture::GLuint, target::GLenum, level::GLint, pname::GLenum, params::Ptr{GLfloat})::Void
@createOpenGLFun glSwizzleEXT(res::GLuint, in::GLuint, outX::GLenum, outY::GLenum, outZ::GLenum, outW::GLenum)::Void
@createOpenGLFun glVariantivEXT(id::GLuint, addr::Ptr{GLint})::Void
@createOpenGLFun glProgramUniform3uivEXT(program::GLuint, location::GLint, count::GLsizei, value::Ptr{GLuint})::Void
@createOpenGLFun glClearColorIuiEXT(red::GLuint, green::GLuint, blue::GLuint, alpha::GLuint)::Void
@createOpenGLFun glColorTableEXT(target::GLenum, internalFormat::GLenum, width::GLsizei, format::GLenum, type_::GLenum, table::Ptr{Void})::Void
@createOpenGLFun glVertexAttribL4dEXT(index::GLuint, x::GLdouble, y::GLdouble, z::GLdouble, w::GLdouble)::Void
@createOpenGLFun glBlendEquationSeparateEXT(modeRGB::GLenum, modeAlpha::GLenum)::Void
@createOpenGLFun glGetNamedFramebufferAttachmentParameterivEXT(framebuffer::GLuint, attachment::GLenum, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glVertexArrayTexCoordOffsetEXT(vaobj::GLuint, buffer::GLuint, size::GLint, type_::GLenum, stride::GLsizei, offset::GLintptr)::Void
@createOpenGLFun glProgramLocalParameters4fvEXT(target::GLenum, index::GLuint, count::GLsizei, params::Ptr{GLfloat})::Void
@createOpenGLFun glImportSyncEXT(external_sync_type::GLenum, external_sync::GLintptr, flags::GLbitfield)::Sync
@createOpenGLFun glProgramUniform1fvEXT(program::GLuint, location::GLint, count::GLsizei, value::Ptr{GLfloat})::Void
@createOpenGLFun glNamedFramebufferTextureEXT(framebuffer::GLuint, attachment::GLenum, texture::GLuint, level::GLint)::Void
@createOpenGLFun glBinormal3dvEXT(v::Ptr{GLdouble})::Void
@createOpenGLFun glCopyTextureSubImage3DEXT(texture::GLuint, target::GLenum, level::GLint, xoffset::GLint, yoffset::GLint, zoffset::GLint, x::GLint, y::GLint, width::GLsizei, height::GLsizei)::Void
@createOpenGLFun glGetMultiTexLevelParameterivEXT(texunit::GLenum, target::GLenum, level::GLint, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glGetMultiTexGendvEXT(texunit::GLenum, coord::GLenum, pname::GLenum, params::Ptr{GLdouble})::Void
@createOpenGLFun glVertexArrayVertexAttribIOffsetEXT(vaobj::GLuint, buffer::GLuint, index::GLuint, size::GLint, type_::GLenum, stride::GLsizei, offset::GLintptr)::Void
@createOpenGLFun glWriteMaskEXT(res::GLuint, in::GLuint, outX::GLenum, outY::GLenum, outZ::GLenum, outW::GLenum)::Void
@createOpenGLFun glGetLocalConstantIntegervEXT(id::GLuint, value::GLenum, data::Ptr{GLint})::Void
@createOpenGLFun glTextureImage1DEXT(texture::GLuint, target::GLenum, level::GLint, internalformat::GLenum, width::GLsizei, border::GLint, format::GLenum, type_::GLenum, pixels::Ptr{Void})::Void
@createOpenGLFun glProgramUniformMatrix3fvEXT(program::GLuint, location::GLint, count::GLsizei, transpose::GLboolean, value::Ptr{GLfloat})::Void
@createOpenGLFun glDeleteTexturesEXT(n::GLsizei, textures::Ptr{GLuint})::Void
@createOpenGLFun glGetDoublei_vEXT(target::GLenum, index::GLuint, data::Ptr{GLdouble})::Void
@createOpenGLFun glTextureParameterIivEXT(texture::GLuint, target::GLenum, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glAreTexturesResidentEXT(n::GLsizei, textures::Ptr{GLuint}, residences::Ptr{GLboolean})::Bool
@createOpenGLFun glBlitFramebufferEXT(srcX0::GLint, srcY0::GLint, srcX1::GLint, srcY1::GLint, dstX0::GLint, dstY0::GLint, dstX1::GLint, dstY1::GLint, mask::GLbitfield, filter::GLenum)::Void
@createOpenGLFun glVertexAttribL4dvEXT(index::GLuint, v::Ptr{GLdouble})::Void
@createOpenGLFun glTextureParameterfvEXT(texture::GLuint, target::GLenum, pname::GLenum, params::Ptr{GLfloat})::Void
@createOpenGLFun glVariantbvEXT(id::GLuint, addr::Ptr{GLbyte})::Void
@createOpenGLFun glTextureParameterIuivEXT(texture::GLuint, target::GLenum, pname::GLenum, params::Ptr{GLuint})::Void
@createOpenGLFun glFogCoordfEXT(coord::GLfloat)::Void
@createOpenGLFun glClearColorIiEXT(red::GLint, green::GLint, blue::GLint, alpha::GLint)::Void
@createOpenGLFun glGenTexturesEXT(n::GLsizei, textures::Ptr{GLuint})::Void
@createOpenGLFun glVertexArrayNormalOffsetEXT(vaobj::GLuint, buffer::GLuint, type_::GLenum, stride::GLsizei, offset::GLintptr)::Void
@createOpenGLFun glColorMaskIndexedEXT(index::GLuint, r::GLboolean, g::GLboolean, b::GLboolean, a::GLboolean)::Void
@createOpenGLFun glGetLocalConstantFloatvEXT(id::GLuint, value::GLenum, data::Ptr{GLfloat})::Void
@createOpenGLFun glBindTexGenParameterEXT(unit::GLenum, coord::GLenum, value::GLenum)::Cuint
@createOpenGLFun glProgramUniformMatrix3x4dvEXT(program::GLuint, location::GLint, count::GLsizei, transpose::GLboolean, value::Ptr{GLdouble})::Void
@createOpenGLFun glCompressedMultiTexSubImage3DEXT(texunit::GLenum, target::GLenum, level::GLint, xoffset::GLint, yoffset::GLint, zoffset::GLint, width::GLsizei, height::GLsizei, depth::GLsizei, format::GLenum, imageSize::GLsizei, bits::Ptr{Void})::Void
@createOpenGLFun glSecondaryColor3dEXT(red::GLdouble, green::GLdouble, blue::GLdouble)::Void
@createOpenGLFun glGetMultiTexEnvfvEXT(texunit::GLenum, target::GLenum, pname::GLenum, params::Ptr{GLfloat})::Void
@createOpenGLFun glProgramUniform3iEXT(program::GLuint, location::GLint, v0::GLint, v1::GLint, v2::GLint)::Void
@createOpenGLFun glProgramUniformMatrix2dvEXT(program::GLuint, location::GLint, count::GLsizei, transpose::GLboolean, value::Ptr{GLdouble})::Void
@createOpenGLFun glSecondaryColor3ubEXT(red::GLubyte, green::GLubyte, blue::GLubyte)::Void
@createOpenGLFun glBeginTransformFeedbackEXT(primitiveMode::GLenum)::Void
@createOpenGLFun glProgramUniform2uivEXT(program::GLuint, location::GLint, count::GLsizei, value::Ptr{GLuint})::Void
@createOpenGLFun glSecondaryColor3bvEXT(v::Ptr{GLbyte})::Void
@createOpenGLFun glFramebufferRenderbufferEXT(target::GLenum, attachment::GLenum, renderbuffertarget::GLenum, renderbuffer::GLuint)::Void
@createOpenGLFun glMultiTexParameteriEXT(texunit::GLenum, target::GLenum, pname::GLenum, param::GLint)::Void
@createOpenGLFun glProgramUniformMatrix2x4fvEXT(program::GLuint, location::GLint, count::GLsizei, transpose::GLboolean, value::Ptr{GLfloat})::Void
@createOpenGLFun glProgramUniform1fEXT(program::GLuint, location::GLint, v0::GLfloat)::Void
@createOpenGLFun glEnableVertexArrayEXT(vaobj::GLuint, array::GLenum)::Void
@createOpenGLFun glDisableIndexedEXT(target::GLenum, index::GLuint)::Void
@createOpenGLFun glMatrixOrthoEXT(mode::GLenum, left::GLdouble, right::GLdouble, bottom::GLdouble, top::GLdouble, zNear::GLdouble, zFar::GLdouble)::Void
@createOpenGLFun glTexParameterIivEXT(target::GLenum, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glTextureImage3DEXT(texture::GLuint, target::GLenum, level::GLint, internalformat::GLenum, width::GLsizei, height::GLsizei, depth::GLsizei, border::GLint, format::GLenum, type_::GLenum, pixels::Ptr{Void})::Void
@createOpenGLFun glVertexWeightfvEXT(weight::Ptr{GLfloat})::Void
@createOpenGLFun glMultiTexImage3DEXT(texunit::GLenum, target::GLenum, level::GLint, internalformat::GLenum, width::GLsizei, height::GLsizei, depth::GLsizei, border::GLint, format::GLenum, type_::GLenum, pixels::Ptr{Void})::Void
@createOpenGLFun glConvolutionParameterfEXT(target::GLenum, pname::GLenum, params::GLfloat)::Void
@createOpenGLFun glGetNamedBufferPointervEXT(buffer::GLuint, pname::GLenum, params::Ptr{Ptr{Void}})::Void
@createOpenGLFun glUniformBufferEXT(program::GLuint, location::GLint, buffer::GLuint)::Void
@createOpenGLFun glGetColorTableParameterivEXT(target::GLenum, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glMatrixLoadIdentityEXT(mode::GLenum)::Void
@createOpenGLFun glIsFramebufferEXT(framebuffer::GLuint)::Bool
@createOpenGLFun glCullParameterfvEXT(pname::GLenum, params::Ptr{GLfloat})::Void
@createOpenGLFun glProgramUniform1iEXT(program::GLuint, location::GLint, v0::GLint)::Void
@createOpenGLFun glProgramUniformMatrix4dvEXT(program::GLuint, location::GLint, count::GLsizei, transpose::GLboolean, value::Ptr{GLdouble})::Void
@createOpenGLFun glProgramUniformMatrix2x3dvEXT(program::GLuint, location::GLint, count::GLsizei, transpose::GLboolean, value::Ptr{GLdouble})::Void
@createOpenGLFun glMemoryBarrierEXT(barriers::GLbitfield)::Void
@createOpenGLFun glCopyMultiTexSubImage1DEXT(texunit::GLenum, target::GLenum, level::GLint, xoffset::GLint, x::GLint, y::GLint, width::GLsizei)::Void
@createOpenGLFun glShaderOp3EXT(op::GLenum, res::GLuint, arg1::GLuint, arg2::GLuint, arg3::GLuint)::Void
@createOpenGLFun glUniform1uiEXT(location::GLint, v0::GLuint)::Void
@createOpenGLFun glFramebufferTexture1DEXT(target::GLenum, attachment::GLenum, textarget::GLenum, texture::GLuint, level::GLint)::Void
@createOpenGLFun glSetInvariantEXT(id::GLuint, type_::GLenum, addr::Ptr{Void})::Void
@createOpenGLFun glDeleteRenderbuffersEXT(n::GLsizei, renderbuffers::Ptr{GLuint})::Void
@createOpenGLFun glUniform2uiEXT(location::GLint, v0::GLuint, v1::GLuint)::Void
@createOpenGLFun glCopyColorSubTableEXT(target::GLenum, start::GLsizei, x::GLint, y::GLint, width::GLsizei)::Void
@createOpenGLFun glVertexAttribL2dEXT(index::GLuint, x::GLdouble, y::GLdouble)::Void
@createOpenGLFun glNamedProgramLocalParameters4fvEXT(program::GLuint, target::GLenum, index::GLuint, count::GLsizei, params::Ptr{GLfloat})::Void
@createOpenGLFun glNamedProgramLocalParameterI4ivEXT(program::GLuint, target::GLenum, index::GLuint, params::Ptr{GLint})::Void
@createOpenGLFun glGetMultiTexGenfvEXT(texunit::GLenum, coord::GLenum, pname::GLenum, params::Ptr{GLfloat})::Void
@createOpenGLFun glTextureNormalEXT(mode::GLenum)::Void
@createOpenGLFun glBinormal3fEXT(bx::GLfloat, by::GLfloat, bz::GLfloat)::Void
@createOpenGLFun glIsVariantEnabledEXT(id::GLuint, cap::GLenum)::Bool
@createOpenGLFun glGetInvariantIntegervEXT(id::GLuint, value::GLenum, data::Ptr{GLint})::Void
@createOpenGLFun glProgramUniform4uiEXT(program::GLuint, location::GLint, v0::GLuint, v1::GLuint, v2::GLuint, v3::GLuint)::Void
@createOpenGLFun glPixelTransformParameterivEXT(target::GLenum, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glTextureBufferEXT(texture::GLuint, target::GLenum, internalformat::GLenum, buffer::GLuint)::Void
@createOpenGLFun glMatrixLoaddEXT(mode::GLenum, m::Ptr{GLdouble})::Void
@createOpenGLFun glGetFloatIndexedvEXT(target::GLenum, index::GLuint, data::Ptr{GLfloat})::Void
@createOpenGLFun glHistogramEXT(target::GLenum, width::GLsizei, internalformat::GLenum, sink::GLboolean)::Void
@createOpenGLFun glPushClientAttribDefaultEXT(mask::GLbitfield)::Void
@createOpenGLFun glBlendEquationEXT(mode::GLenum)::Void
@createOpenGLFun glNamedProgramLocalParameter4dvEXT(program::GLuint, target::GLenum, index::GLuint, params::Ptr{GLdouble})::Void
@createOpenGLFun glBinormal3bvEXT(v::Ptr{GLbyte})::Void
@createOpenGLFun glTextureLightEXT(pname::GLenum)::Void
@createOpenGLFun glBindBufferRangeEXT(target::GLenum, index::GLuint, buffer::GLuint, offset::GLintptr, size::GLsizeiptr)::Void
@createOpenGLFun glVariantsvEXT(id::GLuint, addr::Ptr{GLshort})::Void
@createOpenGLFun glCopyTextureSubImage1DEXT(texture::GLuint, target::GLenum, level::GLint, xoffset::GLint, x::GLint, y::GLint, width::GLsizei)::Void
@createOpenGLFun glBinormal3sEXT(bx::GLshort, by::GLshort, bz::GLshort)::Void
@createOpenGLFun glTangent3iEXT(tx::GLint, ty::GLint, tz::GLint)::Void
@createOpenGLFun glBinormal3iEXT(bx::GLint, by::GLint, bz::GLint)::Void
@createOpenGLFun glProgramUniform4fvEXT(program::GLuint, location::GLint, count::GLsizei, value::Ptr{GLfloat})::Void
@createOpenGLFun glGetVertexArrayIntegervEXT(vaobj::GLuint, pname::GLenum, param::Ptr{GLint})::Void
@createOpenGLFun glFramebufferDrawBufferEXT(framebuffer::GLuint, mode::GLenum)::Void
@createOpenGLFun glGetMinmaxParameterivEXT(target::GLenum, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glTangent3bEXT(tx::GLbyte, ty::GLbyte, tz::GLbyte)::Void
@createOpenGLFun glUnmapNamedBufferEXT(buffer::GLuint)::Bool
@createOpenGLFun glCompressedMultiTexImage3DEXT(texunit::GLenum, target::GLenum, level::GLint, internalformat::GLenum, width::GLsizei, height::GLsizei, depth::GLsizei, border::GLint, imageSize::GLsizei, bits::Ptr{Void})::Void
@createOpenGLFun glCopyTextureSubImage2DEXT(texture::GLuint, target::GLenum, level::GLint, xoffset::GLint, yoffset::GLint, x::GLint, y::GLint, width::GLsizei, height::GLsizei)::Void
@createOpenGLFun glProgramUniform2fEXT(program::GLuint, location::GLint, v0::GLfloat, v1::GLfloat)::Void
@createOpenGLFun glGetColorTableParameterfvEXT(target::GLenum, pname::GLenum, params::Ptr{GLfloat})::Void
@createOpenGLFun glGetNamedProgramLocalParameterIuivEXT(program::GLuint, target::GLenum, index::GLuint, params::Ptr{GLuint})::Void
@createOpenGLFun glMultiTexGenivEXT(texunit::GLenum, coord::GLenum, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glDeleteVertexShaderEXT(id::GLuint)::Void
@createOpenGLFun glInsertComponentEXT(res::GLuint, src::GLuint, num::GLuint)::Void
@createOpenGLFun glSetLocalConstantEXT(id::GLuint, type_::GLenum, addr::Ptr{Void})::Void
@createOpenGLFun glNamedProgramLocalParameterI4uivEXT(program::GLuint, target::GLenum, index::GLuint, params::Ptr{GLuint})::Void
@createOpenGLFun glBindParameterEXT(value::GLenum)::Cuint
@createOpenGLFun glPointParameterfvEXT(pname::GLenum, params::Ptr{GLfloat})::Void
@createOpenGLFun glEndTransformFeedbackEXT()::Void
@createOpenGLFun glGetMinmaxEXT(target::GLenum, reset::GLboolean, format::GLenum, type_::GLenum, values::Ptr{Void})::Void
@createOpenGLFun glEnableVariantClientStateEXT(id::GLuint)::Void
@createOpenGLFun glProgramUniform2fvEXT(program::GLuint, location::GLint, count::GLsizei, value::Ptr{GLfloat})::Void
@createOpenGLFun glGetHistogramParameterivEXT(target::GLenum, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glResetMinmaxEXT(target::GLenum)::Void
@createOpenGLFun glTexCoordPointerEXT(size::GLint, type_::GLenum, stride::GLsizei, count::GLsizei, pointer::Ptr{Void})::Void
@createOpenGLFun glBinormalPointerEXT(type_::GLenum, stride::GLsizei, pointer::Ptr{Void})::Void
@createOpenGLFun glCopyTextureImage1DEXT(texture::GLuint, target::GLenum, level::GLint, internalformat::GLenum, x::GLint, y::GLint, width::GLsizei, border::GLint)::Void
@createOpenGLFun glMatrixLoadTransposedEXT(mode::GLenum, m::Ptr{GLdouble})::Void
@createOpenGLFun glConvolutionFilter2DEXT(target::GLenum, internalformat::GLenum, width::GLsizei, height::GLsizei, format::GLenum, type_::GLenum, image::Ptr{Void})::Void
@createOpenGLFun glGetPointervEXT(pname::GLenum, params::Ptr{Ptr{Void}})::Void
@createOpenGLFun glMultiTexImage2DEXT(texunit::GLenum, target::GLenum, level::GLint, internalformat::GLenum, width::GLsizei, height::GLsizei, border::GLint, format::GLenum, type_::GLenum, pixels::Ptr{Void})::Void
@createOpenGLFun glVertexPointerEXT(size::GLint, type_::GLenum, stride::GLsizei, count::GLsizei, pointer::Ptr{Void})::Void
@createOpenGLFun glVertexAttribL1dEXT(index::GLuint, x::GLdouble)::Void
@createOpenGLFun glNamedBufferSubDataEXT(buffer::GLuint, offset::GLintptr, size::GLsizeiptr, data::Ptr{Void})::Void
@createOpenGLFun glGetMultiTexEnvivEXT(texunit::GLenum, target::GLenum, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glCompressedTextureSubImage1DEXT(texture::GLuint, target::GLenum, level::GLint, xoffset::GLint, width::GLsizei, format::GLenum, imageSize::GLsizei, bits::Ptr{Void})::Void
@createOpenGLFun glVertexArrayFogCoordOffsetEXT(vaobj::GLuint, buffer::GLuint, type_::GLenum, stride::GLsizei, offset::GLintptr)::Void
@createOpenGLFun glIndexFuncEXT(func_::GLenum, ref::GLclampf)::Void
@createOpenGLFun glVertexArrayVertexAttribOffsetEXT(vaobj::GLuint, buffer::GLuint, index::GLuint, size::GLint, type_::GLenum, normalized::GLboolean, stride::GLsizei, offset::GLintptr)::Void
@createOpenGLFun glMultiTexParameterfEXT(texunit::GLenum, target::GLenum, pname::GLenum, param::GLfloat)::Void
@createOpenGLFun glProgramParameteriEXT(program::GLuint, pname::GLenum, value::GLint)::Void
@createOpenGLFun glGetVertexArrayPointervEXT(vaobj::GLuint, pname::GLenum, param::Ptr{Ptr{Void}})::Void
@createOpenGLFun glGetFragDataLocationEXT(program::GLuint, name::Ptr{GLchar})::Cint
@createOpenGLFun glNamedRenderbufferStorageMultisampleEXT(renderbuffer::GLuint, samples::GLsizei, internalformat::GLenum, width::GLsizei, height::GLsizei)::Void
@createOpenGLFun glMatrixTranslatedEXT(mode::GLenum, x::GLdouble, y::GLdouble, z::GLdouble)::Void
@createOpenGLFun glMatrixMultdEXT(mode::GLenum, m::Ptr{GLdouble})::Void
@createOpenGLFun glPointParameterfEXT(pname::GLenum, param::GLfloat)::Void
@createOpenGLFun glIsTextureEXT(texture::GLuint)::Bool
@createOpenGLFun glFramebufferTexture2DEXT(target::GLenum, attachment::GLenum, textarget::GLenum, texture::GLuint, level::GLint)::Void
@createOpenGLFun glNamedProgramLocalParameterI4uiEXT(program::GLuint, target::GLenum, index::GLuint, x::GLuint, y::GLuint, z::GLuint, w::GLuint)::Void
@createOpenGLFun glConvolutionParameterivEXT(target::GLenum, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glGetCompressedMultiTexImageEXT(texunit::GLenum, target::GLenum, lod::GLint, img::Ptr{Void})::Void
@createOpenGLFun glProgramUniformMatrix3x2fvEXT(program::GLuint, location::GLint, count::GLsizei, transpose::GLboolean, value::Ptr{GLfloat})::Void
@createOpenGLFun glPixelTransformParameteriEXT(target::GLenum, pname::GLenum, param::GLint)::Void
@createOpenGLFun glGetUniformOffsetEXT(program::GLuint, location::GLint)::Cintptr
@createOpenGLFun glMultiTexGenfvEXT(texunit::GLenum, coord::GLenum, pname::GLenum, params::Ptr{GLfloat})::Void
@createOpenGLFun glGetFramebufferParameterivEXT(framebuffer::GLuint, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glGetFramebufferAttachmentParameterivEXT(target::GLenum, attachment::GLenum, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glUniform3uiEXT(location::GLint, v0::GLuint, v1::GLuint, v2::GLuint)::Void
#constants
const GL_RGBA16UI_EXT                                                 = 0x8D76
const GL_LUMINANCE12_ALPHA4_EXT                                       = 0x8046
const GL_PROGRAM_MATRIX_STACK_DEPTH_EXT                               = 0x8E2F
const GL_TEXTURE_COORD_ARRAY_EXT                                      = 0x8078
const GL_OP_RECIP_SQRT_EXT                                            = 0x8795
const GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE_EXT             = 0x8CD3
const GL_CMYK_EXT                                                     = 0x800C
const GL_TEXTURE_TOO_LARGE_EXT                                        = 0x8065
const GL_RENDERBUFFER_HEIGHT_EXT                                      = 0x8D43
const GL_TEXTURE_BUFFER_FORMAT_EXT                                    = 0x8C2E
const GL_UNSIGNED_SHORT_5_5_5_1_EXT                                   = 0x8034
const GL_PACK_SKIP_IMAGES_EXT                                         = 0x806B
const GL_OP_NEGATE_EXT                                                = 0x8783
const GL_MAX_TEXTURE_MAX_ANISOTROPY_EXT                               = 0x84FF
const GL_MAX_IMAGE_SAMPLES_EXT                                        = 0x906D
const GL_SRGB8_EXT                                                    = 0x8C41
const GL_OPERAND2_RGB_EXT                                             = 0x8592
const GL_LUMINANCE8I_EXT                                              = 0x8D92
const GL_LUMINANCE8_ALPHA8_SNORM                                      = 0x9016
const GL_OUTPUT_TEXTURE_COORD6_EXT                                    = 0x87A3
const GL_X422_REV_AVERAGE_EXT                                         = 0x80CF
const GL_OUTPUT_TEXTURE_COORD14_EXT                                   = 0x87AB
const GL_UNSIGNED_INT_IMAGE_1D_EXT                                    = 0x9062
const GL_RGBA_INTEGER_EXT                                             = 0x8D99
const GL_SAMPLER_1D_ARRAY_EXT                                         = 0x8DC0
const GL_ALPHA8UI_EXT                                                 = 0x8D7E
const GL_MIN_EXT                                                      = 0x8007
const GL_OUTPUT_TEXTURE_COORD24_EXT                                   = 0x87B5
const GL_OP_DOT3_EXT                                                  = 0x8784
const GL_SAMPLER_CUBE_SHADOW_EXT                                      = 0x8DC5
const GL_DOT3_RGB_EXT                                                 = 0x8740
const GL_NEGATIVE_W_EXT                                               = 0x87DC
const GL_INVARIANT_DATATYPE_EXT                                       = 0x87EB
const GL_MINMAX_FORMAT_EXT                                            = 0x802F
const GL_PROXY_TEXTURE_2D_EXT                                         = 0x8064
const GL_CONVOLUTION_HEIGHT_EXT                                       = 0x8019
const GL_OUTPUT_TEXTURE_COORD2_EXT                                    = 0x879F
const GL_MIRROR_CLAMP_TO_EDGE_EXT                                     = 0x8743
const GL_ONE_MINUS_CONSTANT_COLOR_EXT                                 = 0x8002
const GL_MAX_VARYING_COMPONENTS_EXT                                   = 0x8B4B
const GL_INTENSITY8_EXT                                               = 0x804B
const GL_ALPHA_INTEGER_EXT                                            = 0x8D97
const GL_X4PASS_1_EXT                                                 = 0x80A5
const GL_COMMAND_BARRIER_BIT_EXT                                      = 0x00000040
const GL_RENDERBUFFER_GREEN_SIZE_EXT                                  = 0x8D51
const GL_LUMINANCE6_ALPHA2_EXT                                        = 0x8044
const GL_VERTEX_ARRAY_POINTER_EXT                                     = 0x808E
const GL_DOUBLE                                                       = 0x140A
const GL_INVARIANT_VALUE_EXT                                          = 0x87EA
const GL_CURRENT_BINORMAL_EXT                                         = 0x843C
const GL_TEXTURE_CUBE_MAP_POSITIVE_X_EXT                              = 0x8515
const GL_INT_SAMPLER_CUBE_EXT                                         = 0x8DCC
const GL_RENDERBUFFER_WIDTH_EXT                                       = 0x8D42
const GL_TEXTURE_COORD_ARRAY_TYPE_EXT                                 = 0x8089
const GL_PRIMARY_COLOR_EXT                                            = 0x8577
const GL_SECONDARY_COLOR_ARRAY_TYPE_EXT                               = 0x845B
const GL_HISTOGRAM_FORMAT_EXT                                         = 0x8027
const GL_LIGHT_MODEL_COLOR_CONTROL_EXT                                = 0x81F8
const GL_LUMINANCE32I_EXT                                             = 0x8D86
const GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT_EXT                          = 0x00000001
const GL_RGB2_EXT                                                     = 0x804E
const GL_TRANSFORM_FEEDBACK_BUFFER_SIZE_EXT                           = 0x8C85
const GL_PIXEL_MAG_FILTER_EXT                                         = 0x8331
const GL_BLEND_DST_ALPHA_EXT                                          = 0x80CA
const GL_HISTOGRAM_LUMINANCE_SIZE_EXT                                 = 0x802C
const GL_INVARIANT_EXT                                                = 0x87C2
const GL_GEOMETRY_VERTICES_OUT_EXT                                    = 0x8DDA
const GL_UNSIGNED_INT_VEC2_EXT                                        = 0x8DC6
const GL_TEXTURE_SWIZZLE_G_EXT                                        = 0x8E43
const GL_LUMINANCE12_ALPHA12_EXT                                      = 0x8047
const GL_SLUMINANCE8_EXT                                              = 0x8C47
const GL_OP_SET_GE_EXT                                                = 0x878C
const GL_OUTPUT_TEXTURE_COORD23_EXT                                   = 0x87B4
const GL_LUMINANCE8_EXT                                               = 0x8040
const GL_INDEX_TEST_REF_EXT                                           = 0x81B7
const GL_MAX_OPTIMIZED_VERTEX_SHADER_INSTRUCTIONS_EXT                 = 0x87CA
const GL_SYNC_X11_FENCE_EXT                                           = 0x90E1
const GL_UNSIGNED_INT_SAMPLER_3D_EXT                                  = 0x8DD3
const GL_FOG_COORDINATE_ARRAY_POINTER_EXT                             = 0x8456
const GL_COLOR_ATTACHMENT9_EXT                                        = 0x8CE9
const GL_ALPHA16UI_EXT                                                = 0x8D78
const GL_VERTEX_ARRAY_COUNT_EXT                                       = 0x807D
const GL_IMAGE_BINDING_ACCESS_EXT                                     = 0x8F3E
const GL_TEXTURE_2D_ARRAY_EXT                                         = 0x8C1A
const GL_DECR_WRAP_EXT                                                = 0x8508
const GL_VERTEX_WEIGHT_ARRAY_EXT                                      = 0x850C
const GL_DISTANCE_ATTENUATION_EXT                                     = 0x8129
const GL_PROXY_TEXTURE_CUBE_MAP_EXT                                   = 0x851B
const GL_MAX_VERTEX_SHADER_INSTRUCTIONS_EXT                           = 0x87C5
const GL_COLOR_ATTACHMENT2_EXT                                        = 0x8CE2
const GL_EDGE_FLAG_ARRAY_EXT                                          = 0x8079
const GL_TRANSPOSE_PROGRAM_MATRIX_EXT                                 = 0x8E2E
const GL_X422_REV_EXT                                                 = 0x80CD
const GL_SECONDARY_COLOR_ARRAY_POINTER_EXT                            = 0x845D
const GL_INT_IMAGE_2D_MULTISAMPLE_EXT                                 = 0x9060
const GL_COLOR_ARRAY_POINTER_EXT                                      = 0x8090
const GL_W_EXT                                                        = 0x87D8
const GL_INTENSITY16UI_EXT                                            = 0x8D79
const GL_TEXTURE_CUBE_MAP_NEGATIVE_Z_EXT                              = 0x851A
const GL_SOURCE1_ALPHA_EXT                                            = 0x8589
const GL_UNIFORM_BARRIER_BIT_EXT                                      = 0x00000004
const GL_LOCAL_CONSTANT_EXT                                           = 0x87C3
const GL_DOUBLE_MAT2x3_EXT                                            = 0x8F49
const GL_COLOR_ATTACHMENT10_EXT                                       = 0x8CEA
const GL_MAX_PIXEL_TRANSFORM_2D_STACK_DEPTH_EXT                       = 0x8337
const GL_INVALID_FRAMEBUFFER_OPERATION_EXT                            = 0x0506
const GL_GREEN_INTEGER_EXT                                            = 0x8D95
const GL_FUNC_REVERSE_SUBTRACT_EXT                                    = 0x800B
const GL_OP_POWER_EXT                                                 = 0x8793
const GL_X422_AVERAGE_EXT                                             = 0x80CE
const GL_COLOR_ATTACHMENT1_EXT                                        = 0x8CE1
const GL_INTENSITY_EXT                                                = 0x8049
const GL_POLYGON_OFFSET_EXT                                           = 0x8037
const GL_FULL_RANGE_EXT                                               = 0x87E1
const GL_MAX_OPTIMIZED_VERTEX_SHADER_LOCALS_EXT                       = 0x87CE
const GL_VARIANT_DATATYPE_EXT                                         = 0x87E5
const GL_INT_IMAGE_1D_ARRAY_EXT                                       = 0x905D
const GL_TEXTURE_SWIZZLE_RGBA_EXT                                     = 0x8E46
const GL_OUTPUT_TEXTURE_COORD18_EXT                                   = 0x87AF
const GL_LUMINANCE16I_EXT                                             = 0x8D8C
const GL_R16_SNORM                                                    = 0x8F98
const GL_INTENSITY12_EXT                                              = 0x804C
const GL_TRIANGLE_STRIP_ADJACENCY_EXT                                 = 0x000D
const GL_MULTISAMPLE_BIT_EXT                                          = 0x20000000
const GL_SECONDARY_COLOR_ARRAY_STRIDE_EXT                             = 0x845C
const GL_Y_EXT                                                        = 0x87D6
const GL_OUTPUT_TEXTURE_COORD5_EXT                                    = 0x87A2
const GL_RGB16I_EXT                                                   = 0x8D89
const GL_OUTPUT_TEXTURE_COORD11_EXT                                   = 0x87A8
const GL_BLUE_INTEGER_EXT                                             = 0x8D96
const GL_ALPHA4_EXT                                                   = 0x803B
const GL_FRAMEBUFFER_ATTACHMENT_LAYERED_EXT                           = 0x8DA7
const GL_RGBA4_EXT                                                    = 0x8056
const GL_RGB4_EXT                                                     = 0x804F
const GL_SOURCE2_ALPHA_EXT                                            = 0x858A
const GL_TEXTURE_COORD_ARRAY_COUNT_EXT                                = 0x808B
const GL_SOURCE0_ALPHA_EXT                                            = 0x8588
const GL_COLOR_ATTACHMENT6_EXT                                        = 0x8CE6
const GL_TEXTURE_FETCH_BARRIER_BIT_EXT                                = 0x00000008
const GL_OPERAND2_ALPHA_EXT                                           = 0x859A
const GL_RGBA8_EXT                                                    = 0x8058
const GL_COMPRESSED_SIGNED_RED_GREEN_RGTC2_EXT                        = 0x8DBE
const GL_LUMINANCE_ALPHA32I_EXT                                       = 0x8D87
const GL_TEXTURE_BLUE_SIZE_EXT                                        = 0x805E
const GL_NORMAL_ARRAY_POINTER_EXT                                     = 0x808F
const GL_BLEND_EQUATION_EXT                                           = 0x8009
const GL_COLOR_INDEX16_EXT                                            = 0x80E7
const GL_OP_DOT4_EXT                                                  = 0x8785
const GL_LINE_STRIP_ADJACENCY_EXT                                     = 0x000B
const GL_NORMAL_MAP_EXT                                               = 0x8511
const GL_PROXY_TEXTURE_1D_ARRAY_EXT                                   = 0x8C19
const GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS_EXT                  = 0x8C8B
const GL_OUTPUT_TEXTURE_COORD16_EXT                                   = 0x87AD
const GL_PACK_IMAGE_HEIGHT_EXT                                        = 0x806C
const GL_ADD_SIGNED_EXT                                               = 0x8574
const GL_IMAGE_2D_RECT_EXT                                            = 0x904F
const GL_COLOR_INDEX1_EXT                                             = 0x80E2
const GL_MAX_OPTIMIZED_VERTEX_SHADER_LOCAL_CONSTANTS_EXT              = 0x87CC
const GL_PROGRAM_MATRIX_EXT                                           = 0x8E2D
const GL_FRAMEBUFFER_SRGB_CAPABLE_EXT                                 = 0x8DBA
const GL_TEXTURE_UPDATE_BARRIER_BIT_EXT                               = 0x00000100
const GL_PRIMITIVES_GENERATED_EXT                                     = 0x8C87
const GL_TEXTURE_3D_BINDING_EXT                                       = 0x806A
const GL_OUTPUT_TEXTURE_COORD3_EXT                                    = 0x87A0
const GL_TRIANGLES_ADJACENCY_EXT                                      = 0x000C
const GL_BINORMAL_ARRAY_POINTER_EXT                                   = 0x8443
const GL_T2F_IUI_V2F_EXT                                              = 0x81B1
const GL_TEXTURE_SRGB_DECODE_EXT                                      = 0x8A48
const GL_AVERAGE_EXT                                                  = 0x8335
const GL_TEXTURE_CUBE_MAP_NEGATIVE_X_EXT                              = 0x8516
const GL_LUMINANCE4_EXT                                               = 0x803F
const GL_VERTEX_WEIGHTING_EXT                                         = 0x8509
const GL_TEXTURE_RED_SIZE_EXT                                         = 0x805C
const GL_VERTEX_SHADER_OPTIMIZED_EXT                                  = 0x87D4
const GL_RED_INTEGER_EXT                                              = 0x8D94
const GL_MODELVIEW0_EXT                                               = 0x1700
const GL_UNSIGNED_INT_IMAGE_1D_ARRAY_EXT                              = 0x9068
const GL_COMBINE_ALPHA_EXT                                            = 0x8572
const GL_SCALED_RESOLVE_NICEST_EXT                                    = 0x90BB
const GL_STENCIL_TEST_TWO_SIDE_EXT                                    = 0x8910
const GL_INTERPOLATE_EXT                                              = 0x8575
const GL_RGB8UI_EXT                                                   = 0x8D7D
const GL_NEGATIVE_Z_EXT                                               = 0x87DB
const GL_COLOR_ATTACHMENT14_EXT                                       = 0x8CEE
const GL_OUTPUT_TEXTURE_COORD17_EXT                                   = 0x87AE
const GL_COMPRESSED_RGBA_S3TC_DXT1_EXT                                = 0x83F1
const GL_SAMPLES_EXT                                                  = 0x80A9
const GL_PIXEL_MIN_FILTER_EXT                                         = 0x8332
const GL_OP_ROUND_EXT                                                 = 0x8790
const GL_FRAMEBUFFER_INCOMPLETE_LAYER_COUNT_EXT                       = 0x8DA9
const GL_INT_IMAGE_3D_EXT                                             = 0x9059
const GL_RGB8_EXT                                                     = 0x8051
const GL_TEXTURE_PRIORITY_EXT                                         = 0x8066
const GL_TEXTURE_CUBE_MAP_POSITIVE_Z_EXT                              = 0x8519
const GL_MAP1_TANGENT_EXT                                             = 0x8444
const GL_MAX_OPTIMIZED_VERTEX_SHADER_VARIANTS_EXT                     = 0x87CB
const GL_TRANSFORM_FEEDBACK_VARYINGS_EXT                              = 0x8C83
const GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL_EXT                     = 0x8CD2
const GL_INDEX_TEST_EXT                                               = 0x81B5
const GL_UNSIGNED_INT_IMAGE_3D_EXT                                    = 0x9064
const GL_UNPACK_IMAGE_HEIGHT_EXT                                      = 0x806E
const GL_INTENSITY32UI_EXT                                            = 0x8D73
const GL_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER_EXT                       = 0x8CDB
const GL_TEXTURE_SWIZZLE_R_EXT                                        = 0x8E42
const GL_MAX_IMAGE_UNITS_EXT                                          = 0x8F38
const GL_OP_CROSS_PRODUCT_EXT                                         = 0x8797
const GL_OUTPUT_TEXTURE_COORD21_EXT                                   = 0x87B2
const GL_RGB10_EXT                                                    = 0x8052
const GL_RG_SNORM                                                     = 0x8F91
const GL_OP_RECIP_EXT                                                 = 0x8794
const GL_CONVOLUTION_FILTER_BIAS_EXT                                  = 0x8015
const GL_FOG_COORDINATE_SOURCE_EXT                                    = 0x8450
const GL_DOUBLE_MAT4x2_EXT                                            = 0x8F4D
const GL_BUFFER_UPDATE_BARRIER_BIT_EXT                                = 0x00000200
const GL_COMPRESSED_LUMINANCE_LATC1_EXT                               = 0x8C70
const GL_VERTEX_WEIGHT_ARRAY_STRIDE_EXT                               = 0x850F
const GL_BLEND_SRC_ALPHA_EXT                                          = 0x80CB
const GL_DOUBLE_MAT2_EXT                                              = 0x8F46
const GL_UNSIGNED_INT_SAMPLER_1D_ARRAY_EXT                            = 0x8DD6
const GL_FRAGMENT_COLOR_EXT                                           = 0x834C
const GL_X2PASS_0_EXT                                                 = 0x80A2
const GL_UNSIGNED_INT_24_8_EXT                                        = 0x84FA
const GL_CONVOLUTION_BORDER_MODE_EXT                                  = 0x8013
const GL_RGB5_EXT                                                     = 0x8050
const GL_TEXTURE_1D_ARRAY_EXT                                         = 0x8C18
const GL_MAX_GEOMETRY_BINDABLE_UNIFORMS_EXT                           = 0x8DE4
const GL_ALPHA16_SNORM                                                = 0x9018
const GL_COMPRESSED_SRGB_S3TC_DXT1_EXT                                = 0x8C4C
const GL_COMPRESSED_RED_RGTC1_EXT                                     = 0x8DBB
const GL_SCALAR_EXT                                                   = 0x87BE
const GL_MVP_MATRIX_EXT                                               = 0x87E3
const GL_SOURCE2_RGB_EXT                                              = 0x8582
const GL_OP_MAX_EXT                                                   = 0x878A
const GL_PROXY_TEXTURE_2D_ARRAY_EXT                                   = 0x8C1B
const GL_DOUBLE_MAT3x2_EXT                                            = 0x8F4B
const GL_OUTPUT_TEXTURE_COORD9_EXT                                    = 0x87A6
const GL_COLOR_ATTACHMENT12_EXT                                       = 0x8CEC
const GL_IMAGE_CUBE_MAP_ARRAY_EXT                                     = 0x9054
const GL_DRAW_FRAMEBUFFER_EXT                                         = 0x8CA9
const GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS_EXT                         = 0x8C29
const GL_FOG_COORDINATE_ARRAY_EXT                                     = 0x8457
const GL_RGB16_SNORM                                                  = 0x8F9A
const GL_NORMAL_ARRAY_EXT                                             = 0x8075
const GL_INTENSITY4_EXT                                               = 0x804A
const GL_COLOR_ARRAY_STRIDE_EXT                                       = 0x8083
const GL_BLEND_EQUATION_RGB_EXT                                       = 0x8009
const GL_RGB12_EXT                                                    = 0x8053
const GL_IMAGE_2D_MULTISAMPLE_ARRAY_EXT                               = 0x9056
const GL_COMPRESSED_RGBA_S3TC_DXT3_EXT                                = 0x83F2
const GL_UNSIGNED_INT_5_9_9_9_REV_EXT                                 = 0x8C3E
const GL_RED_SNORM                                                    = 0x8F90
const GL_MAX_GEOMETRY_UNIFORM_COMPONENTS_EXT                          = 0x8DDF
const GL_PIXEL_PACK_BUFFER_EXT                                        = 0x88EB
const GL_POST_CONVOLUTION_BLUE_BIAS_EXT                               = 0x8022
const GL_INT_SAMPLER_1D_ARRAY_EXT                                     = 0x8DCE
const GL_STENCIL_INDEX4_EXT                                           = 0x8D47
const GL_OPERAND1_ALPHA_EXT                                           = 0x8599
const GL_SAMPLE_ALPHA_TO_MASK_EXT                                     = 0x809E
const GL_SECONDARY_COLOR_ARRAY_SIZE_EXT                               = 0x845A
const GL_UNSIGNED_INT_SAMPLER_2D_ARRAY_EXT                            = 0x8DD7
const GL_SLUMINANCE_EXT                                               = 0x8C46
const GL_OP_MULTIPLY_MATRIX_EXT                                       = 0x8798
const GL_TEXTURE_STENCIL_SIZE_EXT                                     = 0x88F1
const GL_UNPACK_CMYK_HINT_EXT                                         = 0x800F
const GL_COLOR_INDEX4_EXT                                             = 0x80E4
const GL_COMPRESSED_SRGB_ALPHA_EXT                                    = 0x8C49
const GL_COMBINE_RGB_EXT                                              = 0x8571
const GL_T2F_IUI_N3F_V3F_EXT                                          = 0x81B4
const GL_VERTEX_SHADER_VARIANTS_EXT                                   = 0x87D0
const GL_OP_SUB_EXT                                                   = 0x8796
const GL_COMPRESSED_SLUMINANCE_EXT                                    = 0x8C4A
const GL_INTERLEAVED_ATTRIBS_EXT                                      = 0x8C8C
const GL_INDEX_MATERIAL_PARAMETER_EXT                                 = 0x81B9
const GL_CUBIC_EXT                                                    = 0x8334
const GL_LINES_ADJACENCY_EXT                                          = 0x000A
const GL_MAX_OPTIMIZED_VERTEX_SHADER_INVARIANTS_EXT                   = 0x87CD
const GL_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY_EXT                        = 0x906A
const GL_BLEND_DST_RGB_EXT                                            = 0x80C8
const GL_TEXTURE_INDEX_SIZE_EXT                                       = 0x80ED
const GL_VERTEX_SHADER_LOCAL_CONSTANTS_EXT                            = 0x87D2
const GL_INT_IMAGE_CUBE_EXT                                           = 0x905B
const GL_FRAMEBUFFER_COMPLETE_EXT                                     = 0x8CD5
const GL_TEXTURE_LIGHT_EXT                                            = 0x8350
const GL_COLOR_ATTACHMENT4_EXT                                        = 0x8CE4
const GL_COLOR_ARRAY_SIZE_EXT                                         = 0x8081
const GL_TEXTURE_LUMINANCE_SIZE_EXT                                   = 0x8060
const GL_PROGRAM_POINT_SIZE_EXT                                       = 0x8642
const GL_INT_IMAGE_BUFFER_EXT                                         = 0x905C
const GL_COLOR_SUM_EXT                                                = 0x8458
const GL_SAMPLE_MASK_INVERT_EXT                                       = 0x80AB
const GL_IMAGE_BINDING_LAYER_EXT                                      = 0x8F3D
const GL_VARIANT_ARRAY_POINTER_EXT                                    = 0x87E9
const GL_ALPHA_SNORM                                                  = 0x9010
const GL_VERTEX_WEIGHT_ARRAY_TYPE_EXT                                 = 0x850E
const GL_REPLACE_EXT                                                  = 0x8062
const GL_STENCIL_ATTACHMENT_EXT                                       = 0x8D20
const GL_REFLECTION_MAP_EXT                                           = 0x8512
const GL_MODELVIEW1_MATRIX_EXT                                        = 0x8506
const GL_COLOR_ATTACHMENT11_EXT                                       = 0x8CEB
const GL_RENDERBUFFER_RED_SIZE_EXT                                    = 0x8D50
const GL_RGB_SCALE_EXT                                                = 0x8573
const GL_DOUBLE_VEC2_EXT                                              = 0x8FFC
const GL_REDUCE_EXT                                                   = 0x8016
const GL_NORMAL_ARRAY_STRIDE_EXT                                      = 0x807F
const GL_SRGB_ALPHA_EXT                                               = 0x8C42
const GL_LOCAL_CONSTANT_VALUE_EXT                                     = 0x87EC
const GL_STENCIL_INDEX16_EXT                                          = 0x8D49
const GL_COLOR_ATTACHMENT7_EXT                                        = 0x8CE7
const GL_POLYGON_OFFSET_BIAS_EXT                                      = 0x8039
const GL_INTENSITY16I_EXT                                             = 0x8D8B
const GL_MAX_CONVOLUTION_HEIGHT_EXT                                   = 0x801B
const GL_MIRROR_CLAMP_TO_BORDER_EXT                                   = 0x8912
const GL_CURRENT_VERTEX_EXT                                           = 0x87E2
const GL_CONVOLUTION_WIDTH_EXT                                        = 0x8018
const GL_INT_SAMPLER_2D_ARRAY_EXT                                     = 0x8DCF
const GL_X4PASS_3_EXT                                                 = 0x80A7
const GL_CULL_VERTEX_EYE_POSITION_EXT                                 = 0x81AB
const GL_MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS_EXT            = 0x8F39
const GL_NORMAL_ARRAY_COUNT_EXT                                       = 0x8080
const GL_OP_EXP_BASE_2_EXT                                            = 0x8791
const GL_MAX_VERTEX_SHADER_INVARIANTS_EXT                             = 0x87C7
const GL_LUMINANCE8_ALPHA8_EXT                                        = 0x8045
const GL_LUMINANCE8_SNORM                                             = 0x9015
const GL_COMPRESSED_RGBA_S3TC_DXT5_EXT                                = 0x83F3
const GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE_EXT                       = 0x8D56
const GL_IMAGE_BINDING_FORMAT_EXT                                     = 0x906E
const GL_INT_IMAGE_2D_ARRAY_EXT                                       = 0x905E
const GL_LUMINANCE_ALPHA32UI_EXT                                      = 0x8D75
const GL_IMAGE_CUBE_EXT                                               = 0x9050
const GL_GEOMETRY_INPUT_TYPE_EXT                                      = 0x8DDB
const GL_TEXTURE_BUFFER_DATA_STORE_BINDING_EXT                        = 0x8C2D
const GL_VERTEX_SHADER_INVARIANTS_EXT                                 = 0x87D1
const GL_SAMPLER_2D_ARRAY_SHADOW_EXT                                  = 0x8DC4
const GL_PROXY_TEXTURE_3D_EXT                                         = 0x8070
const GL_IMAGE_1D_ARRAY_EXT                                           = 0x9052
const GL_COLOR_ATTACHMENT15_EXT                                       = 0x8CEF
const GL_LUMINANCE32UI_EXT                                            = 0x8D74
const GL_CONSTANT_COLOR_EXT                                           = 0x8001
const GL_RGB16UI_EXT                                                  = 0x8D77
const GL_FRAMEBUFFER_SRGB_EXT                                         = 0x8DB9
const GL_SKIP_DECODE_EXT                                              = 0x8A4A
const GL_UNSIGNED_INT_SAMPLER_BUFFER_EXT                              = 0x8DD8
const GL_SINGLE_COLOR_EXT                                             = 0x81F9
const GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT_EXT                        = 0x8CD6
const GL_FRAMEBUFFER_INCOMPLETE_DIMENSIONS_EXT                        = 0x8CD9
const GL_OP_MOV_EXT                                                   = 0x8799
const GL_LUMINANCE16_SNORM                                            = 0x9019
const GL_PIXEL_TRANSFORM_2D_MATRIX_EXT                                = 0x8338
const GL_OP_ADD_EXT                                                   = 0x8787
const GL_BINORMAL_ARRAY_EXT                                           = 0x843A
const GL_CONSTANT_ALPHA_EXT                                           = 0x8003
const GL_FRAMEBUFFER_UNSUPPORTED_EXT                                  = 0x8CDD
const GL_VARIANT_ARRAY_STRIDE_EXT                                     = 0x87E6
const GL_CURRENT_VERTEX_WEIGHT_EXT                                    = 0x850B
const GL_RGB9_E5_EXT                                                  = 0x8C3D
const GL_ONE_MINUS_CONSTANT_ALPHA_EXT                                 = 0x8004
const GL_X1PASS_EXT                                                   = 0x80A1
const GL_HISTOGRAM_RED_SIZE_EXT                                       = 0x8028
const GL_LUMINANCE12_EXT                                              = 0x8041
const GL_MAX_ARRAY_TEXTURE_LAYERS_EXT                                 = 0x88FF
const GL_SAMPLE_BUFFERS_EXT                                           = 0x80A8
const GL_HISTOGRAM_ALPHA_SIZE_EXT                                     = 0x802B
const GL_POST_CONVOLUTION_RED_SCALE_EXT                               = 0x801C
const GL_FRAGMENT_MATERIAL_EXT                                        = 0x8349
const GL_PACK_CMYK_HINT_EXT                                           = 0x800E
const GL_IMAGE_BINDING_NAME_EXT                                       = 0x8F3A
const GL_INT_IMAGE_1D_EXT                                             = 0x9057
const GL_PREVIOUS_EXT                                                 = 0x8578
const GL_POST_CONVOLUTION_ALPHA_SCALE_EXT                             = 0x801F
const GL_RASTERIZER_DISCARD_EXT                                       = 0x8C89
const GL_EDGE_FLAG_ARRAY_COUNT_EXT                                    = 0x808D
const GL_PIXEL_UNPACK_BUFFER_BINDING_EXT                              = 0x88EF
const GL_ONE_EXT                                                      = 0x87DE
const GL_OP_INDEX_EXT                                                 = 0x8782
const GL_RENDERBUFFER_STENCIL_SIZE_EXT                                = 0x8D55
const GL_MULTISAMPLE_EXT                                              = 0x809D
const GL_RENDERBUFFER_BLUE_SIZE_EXT                                   = 0x8D52
const GL_INDEX_ARRAY_STRIDE_EXT                                       = 0x8086
const GL_ALPHA8_EXT                                                   = 0x803C
const GL_TRANSFORM_FEEDBACK_BARRIER_BIT_EXT                           = 0x00000800
const GL_OUTPUT_TEXTURE_COORD26_EXT                                   = 0x87B7
const GL_RGB10_A2_EXT                                                 = 0x8059
const GL_LUMINANCE_INTEGER_EXT                                        = 0x8D9C
const GL_OUTPUT_TEXTURE_COORD31_EXT                                   = 0x87BC
const GL_HISTOGRAM_SINK_EXT                                           = 0x802D
const GL_OUTPUT_TEXTURE_COORD10_EXT                                   = 0x87A7
const GL_BINORMAL_ARRAY_STRIDE_EXT                                    = 0x8441
const GL_INT_IMAGE_2D_MULTISAMPLE_ARRAY_EXT                           = 0x9061
const GL_BLEND_COLOR_EXT                                              = 0x8005
const GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE_EXT                       = 0x8CD0
const GL_SCALED_RESOLVE_FASTEST_EXT                                   = 0x90BA
const GL_MODELVIEW1_STACK_DEPTH_EXT                                   = 0x8502
const GL_OUTPUT_TEXTURE_COORD22_EXT                                   = 0x87B3
const GL_RGBA_SIGNED_COMPONENTS_EXT                                   = 0x8C3C
const GL_RGBA16I_EXT                                                  = 0x8D88
const GL_ALPHA12_EXT                                                  = 0x803D
const GL_POINT_SIZE_MAX_EXT                                           = 0x8127
const GL_X_EXT                                                        = 0x87D5
const GL_SEPARATE_ATTRIBS_EXT                                         = 0x8C8D
const GL_TEXTURE_COORD_ARRAY_STRIDE_EXT                               = 0x808A
const GL_READ_FRAMEBUFFER_EXT                                         = 0x8CA8
const GL_TANGENT_ARRAY_EXT                                            = 0x8439
const GL_X4PASS_2_EXT                                                 = 0x80A6
const GL_IMAGE_BINDING_LAYERED_EXT                                    = 0x8F3C
const GL_INTENSITY8I_EXT                                              = 0x8D91
const GL_LUMINANCE_SNORM                                              = 0x9011
const GL_RENDERBUFFER_EXT                                             = 0x8D41
const GL_DOUBLE_MAT3x4_EXT                                            = 0x8F4C
const GL_COLOR_ATTACHMENT13_EXT                                       = 0x8CED
const GL_OUTPUT_TEXTURE_COORD4_EXT                                    = 0x87A1
const GL_COLOR_ATTACHMENT5_EXT                                        = 0x8CE5
const GL_NORMALIZED_RANGE_EXT                                         = 0x87E0
const GL_HISTOGRAM_WIDTH_EXT                                          = 0x8026
const GL_FOG_COORDINATE_ARRAY_TYPE_EXT                                = 0x8454
const GL_TEXTURE_COORD_ARRAY_SIZE_EXT                                 = 0x8088
const GL_POST_CONVOLUTION_RED_BIAS_EXT                                = 0x8020
const GL_MAX_GEOMETRY_VARYING_COMPONENTS_EXT                          = 0x8DDD
const GL_TEXTURE_2D_BINDING_EXT                                       = 0x8069
const GL_CMYKA_EXT                                                    = 0x800D
const GL_UNSIGNED_INT_IMAGE_CUBE_EXT                                  = 0x9066
const GL_INDEX_TEST_FUNC_EXT                                          = 0x81B6
const GL_ELEMENT_ARRAY_BARRIER_BIT_EXT                                = 0x00000002
const GL_TEXTURE_BUFFER_EXT                                           = 0x8C2A
const GL_MAX_3D_TEXTURE_SIZE_EXT                                      = 0x8073
const GL_LUMINANCE_ALPHA16UI_EXT                                      = 0x8D7B
const GL_OUTPUT_TEXTURE_COORD29_EXT                                   = 0x87BA
const GL_X422_EXT                                                     = 0x80CC
const GL_PROXY_TEXTURE_1D_EXT                                         = 0x8063
const GL_FOG_COORDINATE_ARRAY_STRIDE_EXT                              = 0x8455
const GL_OP_MADD_EXT                                                  = 0x8788
const GL_OUTPUT_TEXTURE_COORD27_EXT                                   = 0x87B8
const GL_INT_IMAGE_2D_RECT_EXT                                        = 0x905A
const GL_RESCALE_NORMAL_EXT                                           = 0x803A
const GL_TEXTURE_WRAP_R_EXT                                           = 0x8072
const GL_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH_EXT                    = 0x8C76
const GL_UNSIGNED_INT_8_8_8_8_EXT                                     = 0x8035
const GL_SHADOW_ATTENUATION_EXT                                       = 0x834E
const GL_RENDERBUFFER_INTERNAL_FORMAT_EXT                             = 0x8D44
const GL_LUMINANCE16_EXT                                              = 0x8042
const GL_VERTEX_SHADER_BINDING_EXT                                    = 0x8781
const GL_ALL_BARRIER_BITS_EXT                                         = 0xFFFFFFFF
const GL_GEOMETRY_OUTPUT_TYPE_EXT                                     = 0x8DDC
const GL_TEXTURE_BINDING_2D_ARRAY_EXT                                 = 0x8C1D
const GL_TRANSFORM_FEEDBACK_BUFFER_BINDING_EXT                        = 0x8C8F
const GL_OUTPUT_TEXTURE_COORD28_EXT                                   = 0x87B9
const GL_OUTPUT_VERTEX_EXT                                            = 0x879A
const GL_T2F_IUI_V3F_EXT                                              = 0x81B2
const GL_LUMINANCE_ALPHA16I_EXT                                       = 0x8D8D
const GL_DOUBLE_VEC4_EXT                                              = 0x8FFE
const GL_DECODE_EXT                                                   = 0x8A49
const GL_UNSIGNED_INT_IMAGE_BUFFER_EXT                                = 0x9067
const GL_COMPRESSED_SIGNED_LUMINANCE_LATC1_EXT                        = 0x8C71
const GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS_EXT            = 0x8C8A
const GL_INTENSITY16_EXT                                              = 0x804D
const GL_MAX_TEXTURE_LOD_BIAS_EXT                                     = 0x84FD
const GL_MAX_VERTEX_BINDABLE_UNIFORMS_EXT                             = 0x8DE2
const GL_COMPRESSED_LUMINANCE_ALPHA_LATC2_EXT                         = 0x8C72
const GL_LAST_VERTEX_CONVENTION_EXT                                   = 0x8E4E
const GL_PIXEL_CUBIC_WEIGHT_EXT                                       = 0x8333
const GL_HISTOGRAM_BLUE_SIZE_EXT                                      = 0x802A
const GL_SEPARABLE_2D_EXT                                             = 0x8012
const GL_VARIANT_ARRAY_EXT                                            = 0x87E8
const GL_MAX_SAMPLES_EXT                                              = 0x8D57
const GL_INT_IMAGE_2D_EXT                                             = 0x9058
const GL_FUNC_ADD_EXT                                                 = 0x8006
const GL_STENCIL_INDEX8_EXT                                           = 0x8D48
const GL_OUTPUT_TEXTURE_COORD12_EXT                                   = 0x87A9
const GL_SHADER_IMAGE_ACCESS_BARRIER_BIT_EXT                          = 0x00000020
const GL_DEPTH_BOUNDS_TEST_EXT                                        = 0x8890
const GL_LOCAL_EXT                                                    = 0x87C4
const GL_SAMPLE_PATTERN_EXT                                           = 0x80AC
const GL_R11F_G11F_B10F_EXT                                           = 0x8C3A
const GL_FRAMEBUFFER_EXT                                              = 0x8D40
const GL_VERTEX_ARRAY_EXT                                             = 0x8074
const GL_TEXTURE_BINDING_BUFFER_EXT                                   = 0x8C2C
const GL_SEPARATE_SPECULAR_COLOR_EXT                                  = 0x81FA
const GL_FUNC_SUBTRACT_EXT                                            = 0x800A
const GL_POINT_FADE_THRESHOLD_SIZE_EXT                                = 0x8128
const GL_EDGE_FLAG_ARRAY_POINTER_EXT                                  = 0x8093
const GL_NEGATIVE_X_EXT                                               = 0x87D9
const GL_PIXEL_TRANSFORM_2D_STACK_DEPTH_EXT                           = 0x8336
const GL_TEXTURE_CUBE_MAP_POSITIVE_Y_EXT                              = 0x8517
const GL_COLOR_INDEX8_EXT                                             = 0x80E5
const GL_PERTURB_EXT                                                  = 0x85AE
const GL_ALPHA8_SNORM                                                 = 0x9014
const GL_POST_CONVOLUTION_ALPHA_BIAS_EXT                              = 0x8023
const GL_IMAGE_1D_EXT                                                 = 0x904C
const GL_FRAMEBUFFER_BARRIER_BIT_EXT                                  = 0x00000400
const GL_COMPRESSED_SRGB_EXT                                          = 0x8C48
const GL_TEXTURE_SHARED_SIZE_EXT                                      = 0x8C3F
const GL_IUI_N3F_V3F_EXT                                              = 0x81B0
const GL_MODELVIEW0_STACK_DEPTH_EXT                                   = 0x0BA3
const GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT5_EXT                          = 0x8C4F
const GL_OUTPUT_TEXTURE_COORD20_EXT                                   = 0x87B1
const GL_TEXTURE_RESIDENT_EXT                                         = 0x8067
const GL_PROVOKING_VERTEX_EXT                                         = 0x8E4F
const GL_OP_MUL_EXT                                                   = 0x8786
const GL_INDEX_ARRAY_POINTER_EXT                                      = 0x8091
const GL_LUMINANCE_ALPHA8I_EXT                                        = 0x8D93
const GL_UNIFORM_BUFFER_BINDING_EXT                                   = 0x8DEF
const GL_OUTPUT_TEXTURE_COORD13_EXT                                   = 0x87AA
const GL_ARRAY_ELEMENT_LOCK_FIRST_EXT                                 = 0x81A8
const GL_FRAMEBUFFER_INCOMPLETE_READ_BUFFER_EXT                       = 0x8CDC
const GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS_EXT                     = 0x8DA8
const GL_MINMAX_SINK_EXT                                              = 0x8030
const GL_CULL_VERTEX_OBJECT_POSITION_EXT                              = 0x81AC
const GL_CONVOLUTION_1D_EXT                                           = 0x8010
const GL_BLEND_SRC_RGB_EXT                                            = 0x80C9
const GL_INTENSITY8UI_EXT                                             = 0x8D7F
const GL_INT_SAMPLER_2D_RECT_EXT                                      = 0x8DCD
const GL_VERTEX_SHADER_EXT                                            = 0x8780
const GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN_EXT                    = 0x8C88
const GL_UNSIGNED_BYTE_3_3_2_EXT                                      = 0x8032
const GL_COLOR_INDEX12_EXT                                            = 0x80E6
const GL_IMAGE_2D_MULTISAMPLE_EXT                                     = 0x9055
const GL_MAX_BINDABLE_UNIFORM_SIZE_EXT                                = 0x8DED
const GL_T2F_IUI_N3F_V2F_EXT                                          = 0x81B3
const GL_RGBA32UI_EXT                                                 = 0x8D70
const GL_COLOR_ATTACHMENT0_EXT                                        = 0x8CE0
const GL_POST_CONVOLUTION_BLUE_SCALE_EXT                              = 0x801E
const GL_BGRA_EXT                                                     = 0x80E1
const GL_IUI_V2F_EXT                                                  = 0x81AD
const GL_INT_SAMPLER_3D_EXT                                           = 0x8DCB
const GL_ZERO_EXT                                                     = 0x87DD
const GL_LUMINANCE16_ALPHA16_SNORM                                    = 0x901A
const GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS_EXT                     = 0x8DE1
const GL_MAP2_TANGENT_EXT                                             = 0x8445
const GL_POLYGON_OFFSET_FACTOR_EXT                                    = 0x8038
const GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT1_EXT                          = 0x8C4D
const GL_IMAGE_BINDING_LEVEL_EXT                                      = 0x8F3B
const GL_VARIANT_ARRAY_TYPE_EXT                                       = 0x87E7
const GL_POINT_SIZE_MIN_EXT                                           = 0x8126
const GL_ATOMIC_COUNTER_BARRIER_BIT_EXT                               = 0x00001000
const GL_LUMINANCE_ALPHA_SNORM                                        = 0x9012
const GL_FRAMEBUFFER_INCOMPLETE_FORMATS_EXT                           = 0x8CDA
const GL_ALPHA8I_EXT                                                  = 0x8D90
const GL_TEXTURE_3D_EXT                                               = 0x806F
const GL_DRAW_FRAMEBUFFER_BINDING_EXT                                 = 0x8CA6
const GL_SHARED_TEXTURE_PALETTE_EXT                                   = 0x81FB
const GL_TEXTURE_INTENSITY_SIZE_EXT                                   = 0x8061
const GL_READ_FRAMEBUFFER_BINDING_EXT                                 = 0x8CAA
const GL_RGBA16_SNORM                                                 = 0x8F9B
const GL_MAX_VERTEX_VARYING_COMPONENTS_EXT                            = 0x8DDE
const GL_MODELVIEW1_EXT                                               = 0x850A
const GL_TEXTURE_SWIZZLE_B_EXT                                        = 0x8E44
const GL_MAX_FRAGMENT_BINDABLE_UNIFORMS_EXT                           = 0x8DE3
const GL_UNSIGNED_INT_IMAGE_2D_RECT_EXT                               = 0x9065
const GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS_EXT               = 0x8C80
const GL_UNSIGNED_INT_SAMPLER_2D_RECT_EXT                             = 0x8DD5
const GL_TANGENT_ARRAY_TYPE_EXT                                       = 0x843E
const GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT3_EXT                          = 0x8C4E
const GL_BGRA_INTEGER_EXT                                             = 0x8D9B
const GL_UNSIGNED_INT_SAMPLER_1D_EXT                                  = 0x8DD1
const GL_COMPRESSED_SIGNED_RED_RGTC1_EXT                              = 0x8DBC
const GL_UNSIGNED_SHORT_4_4_4_4_EXT                                   = 0x8033
const GL_PIXEL_PACK_BUFFER_BINDING_EXT                                = 0x88ED
const GL_ALPHA16_EXT                                                  = 0x803E
const GL_X4PASS_0_EXT                                                 = 0x80A4
const GL_OP_SET_LT_EXT                                                = 0x878D
const GL_FRAGMENT_NORMAL_EXT                                          = 0x834A
const GL_PIXEL_BUFFER_BARRIER_BIT_EXT                                 = 0x00000080
const GL_MAX_EXT                                                      = 0x8008
const GL_RENDERBUFFER_DEPTH_SIZE_EXT                                  = 0x8D54
const GL_GEOMETRY_SHADER_EXT                                          = 0x8DD9
const GL_SAMPLE_MASK_VALUE_EXT                                        = 0x80AA
const GL_UNSIGNED_INT_IMAGE_2D_EXT                                    = 0x9063
const GL_OUTPUT_TEXTURE_COORD19_EXT                                   = 0x87B0
const GL_LUMINANCE4_ALPHA4_EXT                                        = 0x8043
const GL_CONSTANT_EXT                                                 = 0x8576
const GL_RG8_SNORM                                                    = 0x8F95
const GL_VERTEX_WEIGHT_ARRAY_POINTER_EXT                              = 0x8510
const GL_OUTPUT_TEXTURE_COORD8_EXT                                    = 0x87A5
const GL_LOCAL_CONSTANT_DATATYPE_EXT                                  = 0x87ED
const GL_OUTPUT_TEXTURE_COORD0_EXT                                    = 0x879D
const GL_DOT3_RGBA_EXT                                                = 0x8741
const GL_MAX_TEXTURE_BUFFER_SIZE_EXT                                  = 0x8C2B
const GL_SLUMINANCE_ALPHA_EXT                                         = 0x8C44
const GL_UNSIGNED_INT_SAMPLER_CUBE_EXT                                = 0x8DD4
const GL_TEXTURE_COORD_ARRAY_POINTER_EXT                              = 0x8092
const GL_INTENSITY8_SNORM                                             = 0x9017
const GL_RGBA12_EXT                                                   = 0x805A
const GL_TEXTURE_FILTER_CONTROL_EXT                                   = 0x8500
const GL_SAMPLER_BUFFER_EXT                                           = 0x8DC2
const GL_COLOR_ARRAY_COUNT_EXT                                        = 0x8084
const GL_LUMINANCE_ALPHA_INTEGER_EXT                                  = 0x8D9D
const GL_TEXTURE_NORMAL_EXT                                           = 0x85AF
const GL_FOG_COORDINATE_EXT                                           = 0x8451
const GL_INCR_WRAP_EXT                                                = 0x8507
const GL_VERTEX_SHADER_INSTRUCTIONS_EXT                               = 0x87CF
const GL_DOUBLE_MAT2x4_EXT                                            = 0x8F4A
const GL_TEXTURE_LOD_BIAS_EXT                                         = 0x8501
const GL_TEXTURE_DEPTH_EXT                                            = 0x8071
const GL_VECTOR_EXT                                                   = 0x87BF
const GL_TANGENT_ARRAY_POINTER_EXT                                    = 0x8442
const GL_MAX_CUBE_MAP_TEXTURE_SIZE_EXT                                = 0x851C
const GL_RGBA8_SNORM                                                  = 0x8F97
const GL_DOUBLE_VEC3_EXT                                              = 0x8FFD
const GL_SAMPLER_1D_ARRAY_SHADOW_EXT                                  = 0x8DC3
const GL_MIRROR_CLAMP_EXT                                             = 0x8742
const GL_OP_MIN_EXT                                                   = 0x878B
const GL_NEGATIVE_ONE_EXT                                             = 0x87DF
const GL_INDEX_MATERIAL_FACE_EXT                                      = 0x81BA
const GL_STENCIL_TAG_BITS_EXT                                         = 0x88F2
const GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_3D_ZOFFSET_EXT                = 0x8CD4
const GL_INT_SAMPLER_1D_EXT                                           = 0x8DC9
const GL_RENDERBUFFER_ALPHA_SIZE_EXT                                  = 0x8D53
const GL_VERTEX_ARRAY_STRIDE_EXT                                      = 0x807C
const GL_COMPARE_REF_DEPTH_TO_TEXTURE_EXT                             = 0x884E
const GL_PROXY_HISTOGRAM_EXT                                          = 0x8025
const GL_IMAGE_2D_ARRAY_EXT                                           = 0x9053
const GL_CURRENT_TANGENT_EXT                                          = 0x843B
const GL_IUI_N3F_V2F_EXT                                              = 0x81AF
const GL_MINMAX_EXT                                                   = 0x802E
const GL_OP_FLOOR_EXT                                                 = 0x878F
const GL_SIGNED_NORMALIZED                                            = 0x8F9C
const GL_OUTPUT_FOG_EXT                                               = 0x87BD
const GL_NEGATIVE_Y_EXT                                               = 0x87DA
const GL_NORMAL_ARRAY_TYPE_EXT                                        = 0x807E
const GL_SAMPLER_2D_ARRAY_EXT                                         = 0x8DC1
const GL_OP_LOG_BASE_2_EXT                                            = 0x8792
const GL_COLOR_ATTACHMENT3_EXT                                        = 0x8CE3
const GL_BGR_EXT                                                      = 0x80E0
const GL_TEXTURE_MATERIAL_FACE_EXT                                    = 0x8351
const GL_SAMPLE_ALPHA_TO_ONE_EXT                                      = 0x809F
const GL_INDEX_ARRAY_EXT                                              = 0x8077
const GL_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION_EXT                 = 0x8E4C
const GL_PIXEL_TRANSFORM_2D_EXT                                       = 0x8330
const GL_MAP1_BINORMAL_EXT                                            = 0x8446
const GL_TRANSFORM_FEEDBACK_BUFFER_START_EXT                          = 0x8C84
const GL_MAX_ELEMENTS_INDICES_EXT                                     = 0x80E9
const GL_OP_CLAMP_EXT                                                 = 0x878E
const GL_DEPTH_STENCIL_EXT                                            = 0x84F9
const GL_DOUBLE_MAT4x3_EXT                                            = 0x8F4E
const GL_CLIP_VOLUME_CLIPPING_HINT_EXT                                = 0x80F0
const GL_RGBA_INTEGER_MODE_EXT                                        = 0x8D9E
const GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME_EXT                       = 0x8CD1
const GL_OP_FRAC_EXT                                                  = 0x8789
const GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_EXT                        = 0x906B
const GL_R8_SNORM                                                     = 0x8F94
const GL_DEPTH_ATTACHMENT_EXT                                         = 0x8D00
const GL_MAX_ELEMENTS_VERTICES_EXT                                    = 0x80E8
const GL_INDEX_MATERIAL_EXT                                           = 0x81B8
const GL_OUTPUT_TEXTURE_COORD25_EXT                                   = 0x87B6
const GL_ACTIVE_PROGRAM_EXT                                           = 0x8B8D
const GL_ATTENUATION_EXT                                              = 0x834D
const GL_RGB5_A1_EXT                                                  = 0x8057
const GL_ALPHA32UI_EXT                                                = 0x8D72
const GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT_EXT                = 0x8CD7
const GL_INT_SAMPLER_2D_EXT                                           = 0x8DCA
const GL_TEXTURE_MATERIAL_PARAMETER_EXT                               = 0x8352
const GL_TRANSFORM_FEEDBACK_BUFFER_EXT                                = 0x8C8E
const GL_UNSIGNED_INT_VEC4_EXT                                        = 0x8DC8
const GL_SAMPLE_MASK_EXT                                              = 0x80A0
const GL_HISTOGRAM_GREEN_SIZE_EXT                                     = 0x8029
const GL_FRAMEBUFFER_BINDING_EXT                                      = 0x8CA6
const GL_SLUMINANCE8_ALPHA8_EXT                                       = 0x8C45
const GL_OUTPUT_COLOR1_EXT                                            = 0x879C
const GL_POST_CONVOLUTION_GREEN_SCALE_EXT                             = 0x801D
const GL_BGRA                                                         = 0x80E1
const GL_FIRST_VERTEX_CONVENTION_EXT                                  = 0x8E4D
const GL_OUTPUT_TEXTURE_COORD7_EXT                                    = 0x87A4
const GL_RGBA16_EXT                                                   = 0x805B
const GL_OUTPUT_TEXTURE_COORD15_EXT                                   = 0x87AC
const GL_UNSIGNED_INT_VEC3_EXT                                        = 0x8DC7
const GL_MAX_VERTEX_SHADER_LOCAL_CONSTANTS_EXT                        = 0x87C8
const GL_CURRENT_FOG_COORDINATE_EXT                                   = 0x8453
const GL_INTENSITY16_SNORM                                            = 0x901B
const GL_DOUBLE_MAT4_EXT                                              = 0x8F48
const GL_IMAGE_2D_EXT                                                 = 0x904D
const GL_COLOR_ARRAY_EXT                                              = 0x8076
const GL_SOURCE0_RGB_EXT                                              = 0x8580
const GL_OUTPUT_COLOR0_EXT                                            = 0x879B
const GL_CONVOLUTION_FORMAT_EXT                                       = 0x8017
const GL_RGBA32I_EXT                                                  = 0x8D82
const GL_COLOR_ATTACHMENT8_EXT                                        = 0x8CE8
const GL_TEXTURE_BINDING_1D_ARRAY_EXT                                 = 0x8C1C
const GL_RGBA8I_EXT                                                   = 0x8D8E
const GL_RGB_INTEGER_EXT                                              = 0x8D98
const GL_RENDERBUFFER_BINDING_EXT                                     = 0x8CA7
const GL_MATRIX_EXT                                                   = 0x87C0
const GL_SOURCE1_RGB_EXT                                              = 0x8581
const GL_COMPRESSED_RGB_S3TC_DXT1_EXT                                 = 0x83F0
const GL_STENCIL_CLEAR_TAG_VALUE_EXT                                  = 0x88F3
const GL_OPERAND1_RGB_EXT                                             = 0x8591
const GL_VARIANT_VALUE_EXT                                            = 0x87E4
const GL_TEXTURE_BINDING_CUBE_MAP_EXT                                 = 0x8514
const GL_TIME_ELAPSED_EXT                                             = 0x88BF
const GL_TABLE_TOO_LARGE_EXT                                          = 0x8031
const GL_INDEX_ARRAY_COUNT_EXT                                        = 0x8087
const GL_RGB8I_EXT                                                    = 0x8D8F
const GL_DEPTH_BOUNDS_EXT                                             = 0x8891
const GL_VERTEX_ARRAY_SIZE_EXT                                        = 0x807A
const GL_DEPTH24_STENCIL8_EXT                                         = 0x88F0
const GL_UNSIGNED_INT_IMAGE_2D_ARRAY_EXT                              = 0x9069
const GL_MAX_GEOMETRY_OUTPUT_VERTICES_EXT                             = 0x8DE0
const GL_PIXEL_UNPACK_BUFFER_EXT                                      = 0x88EC
const GL_LUMINANCE16UI_EXT                                            = 0x8D7A
const GL_RG16_SNORM                                                   = 0x8F99
const GL_RGB8_SNORM                                                   = 0x8F96
const GL_IMAGE_3D_EXT                                                 = 0x904E
const GL_COMPRESSED_RED_GREEN_RGTC2_EXT                               = 0x8DBD
const GL_INT_IMAGE_CUBE_MAP_ARRAY_EXT                                 = 0x905F
const GL_UNPACK_SKIP_IMAGES_EXT                                       = 0x806D
const GL_UNSIGNED_INT_10_10_10_2_EXT                                  = 0x8036
const GL_COMBINE_EXT                                                  = 0x8570
const GL_BINORMAL_ARRAY_TYPE_EXT                                      = 0x8440
const GL_SECONDARY_COLOR_ARRAY_EXT                                    = 0x845E
const GL_VERTEX_SHADER_LOCALS_EXT                                     = 0x87D3
const GL_IMAGE_BUFFER_EXT                                             = 0x9051
const GL_BLEND_EQUATION_ALPHA_EXT                                     = 0x883D
const GL_INTENSITY_SNORM                                              = 0x9013
const GL_INT_SAMPLER_BUFFER_EXT                                       = 0x8DD0
const GL_TEXTURE_APPLICATION_MODE_EXT                                 = 0x834F
const GL_ABGR_EXT                                                     = 0x8000
const GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY_EXT                  = 0x906C
const GL_RGBA8UI_EXT                                                  = 0x8D7C
const GL_VARIANT_EXT                                                  = 0x87C1
const GL_RENDERBUFFER_SAMPLES_EXT                                     = 0x8CAB
const GL_CONVOLUTION_FILTER_SCALE_EXT                                 = 0x8014
const GL_TEXTURE_MAX_ANISOTROPY_EXT                                   = 0x84FE
const GL_RGB_SNORM                                                    = 0x8F92
const GL_UNIFORM_BUFFER_EXT                                           = 0x8DEE
const GL_MAX_VERTEX_SHADER_LOCALS_EXT                                 = 0x87C9
const GL_RGBA_SNORM                                                   = 0x8F93
const GL_X2PASS_1_EXT                                                 = 0x80A3
const GL_SRGB8_ALPHA8_EXT                                             = 0x8C43
const GL_INTENSITY32I_EXT                                             = 0x8D85
const GL_TEXTURE_SWIZZLE_A_EXT                                        = 0x8E45
const GL_DOUBLE_MAT3_EXT                                              = 0x8F47
const GL_MAP2_BINORMAL_EXT                                            = 0x8447
const GL_HISTOGRAM_EXT                                                = 0x8024
const GL_INDEX_ARRAY_TYPE_EXT                                         = 0x8085
const GL_ACTIVE_STENCIL_FACE_EXT                                      = 0x8911
const GL_RGBA2_EXT                                                    = 0x8055
const GL_OPERAND0_ALPHA_EXT                                           = 0x8598
const GL_COLOR_INDEX2_EXT                                             = 0x80E3
const GL_LUMINANCE_ALPHA8UI_EXT                                       = 0x8D81
const GL_TRANSFORM_FEEDBACK_BUFFER_MODE_EXT                           = 0x8C7F
const GL_CULL_VERTEX_EXT                                              = 0x81AA
const GL_MAX_CONVOLUTION_WIDTH_EXT                                    = 0x801A
const GL_SRGB_EXT                                                     = 0x8C40
const GL_OUTPUT_TEXTURE_COORD30_EXT                                   = 0x87BB
const GL_TEXTURE_ALPHA_SIZE_EXT                                       = 0x805F
const GL_TEXTURE_GREEN_SIZE_EXT                                       = 0x805D
const GL_ARRAY_ELEMENT_LOCK_COUNT_EXT                                 = 0x81A9
const GL_STENCIL_INDEX1_EXT                                           = 0x8D46
const GL_RGB16_EXT                                                    = 0x8054
const GL_RGB32I_EXT                                                   = 0x8D83
const GL_MAX_VERTEX_SHADER_VARIANTS_EXT                               = 0x87C6
const GL_CONVOLUTION_2D_EXT                                           = 0x8011
const GL_COMPRESSED_SLUMINANCE_ALPHA_EXT                              = 0x8C4B
const GL_CURRENT_SECONDARY_COLOR_EXT                                  = 0x8459
const GL_MAX_COLOR_ATTACHMENTS_EXT                                    = 0x8CDF
const GL_ALPHA16I_EXT                                                 = 0x8D8A
const GL_IUI_V3F_EXT                                                  = 0x81AE
const GL_LUMINANCE16_ALPHA16_EXT                                      = 0x8048
const GL_LUMINANCE8UI_EXT                                             = 0x8D80
const GL_TEXTURE_CUBE_MAP_NEGATIVE_Y_EXT                              = 0x8518
const GL_OPERAND0_RGB_EXT                                             = 0x8590
const GL_RGB32UI_EXT                                                  = 0x8D71
const GL_TANGENT_ARRAY_STRIDE_EXT                                     = 0x843F
const GL_MAX_RENDERBUFFER_SIZE_EXT                                    = 0x84E8
const GL_COMPRESSED_SIGNED_LUMINANCE_ALPHA_LATC2_EXT                  = 0x8C73
const GL_VERTEX_WEIGHT_ARRAY_SIZE_EXT                                 = 0x850D
const GL_OUTPUT_TEXTURE_COORD1_EXT                                    = 0x879E
const GL_MODELVIEW0_MATRIX_EXT                                        = 0x0BA6
const GL_VERTEX_ARRAY_TYPE_EXT                                        = 0x807B
const GL_ALPHA32I_EXT                                                 = 0x8D84
const GL_UNSIGNED_INT_10F_11F_11F_REV_EXT                             = 0x8C3B
const GL_BGR_INTEGER_EXT                                              = 0x8D9A
const GL_Z_EXT                                                        = 0x87D7
const GL_COLOR_ARRAY_TYPE_EXT                                         = 0x8082
const GL_POST_CONVOLUTION_GREEN_BIAS_EXT                              = 0x8021
const GL_EDGE_FLAG_ARRAY_STRIDE_EXT                                   = 0x808C
const GL_TEXTURE_1D_BINDING_EXT                                       = 0x8068
const GL_TEXTURE_CUBE_MAP_EXT                                         = 0x8513
const GL_UNSIGNED_INT_SAMPLER_2D_EXT                                  = 0x8DD2
# Export everything!
export glMultiDrawElementsEXT, glTexBufferEXT, glPrioritizeTexturesEXT, glGetSeparableFilterEXT, glGetBooleanIndexedvEXT, glBindFragDataLocationEXT, glCopyMultiTexImage1DEXT, glTextureRenderbufferEXT, glBinormal3ivEXT, glGetMultiTexParameterIivEXT, glGetVertexAttribLdvEXT, glProgramUniformMatrix4x3fvEXT, glGetNamedProgramivEXT, glTexSubImage2DEXT, glGetConvolutionParameterivEXT, glMultiTexEnvfvEXT, glGetRenderbufferParameterivEXT, glTangent3ivEXT, glMatrixRotatedEXT, glDrawElementsInstancedEXT, glGetMultiTexParameterIuivEXT, glVertexArrayMultiTexCoordOffsetEXT, glProgramUniform3uiEXT, glBinormal3fvEXT, glProgramUniform1uivEXT, glRenderbufferStorageMultisampleEXT, glVariantuivEXT, glEdgeFlagPointerEXT, glGenSymbolsEXT, glTextureSubImage2DEXT, glApplyTextureEXT, glLockArraysEXT, glNamedFramebufferTexture2DEXT, glGetVertexArrayPointeri_vEXT, glCullParameterdvEXT, glVertexAttribL2dvEXT, glProgramUniform2iEXT, glFramebufferDrawBuffersEXT, glMultiTexSubImage1DEXT, glDrawArraysEXT, glProgramUniform3ivEXT, glGetUniformuivEXT, glProgramUniform2uiEXT, glGetVariantIntegervEXT, glNamedBufferDataEXT, glSecondaryColor3uiEXT, glUnlockArraysEXT, glResetHistogramEXT, glIsEnabledIndexedEXT, glMultiTexParameterIuivEXT, glBlendFuncSeparateEXT, glMatrixMultTransposedEXT, glEnableClientStateiEXT, glEnableVertexArrayAttribEXT, glDrawArraysInstancedEXT, glIndexPointerEXT, glVariantubvEXT, glBindTextureUnitParameterEXT, glCopyTextureImage2DEXT, glEndVertexShaderEXT, glNamedFramebufferTexture3DEXT, glSecondaryColor3sEXT, glVertexWeightPointerEXT, glVertexArrayIndexOffsetEXT, glBindBufferBaseEXT, glMultiTexParameterivEXT, glNamedProgramLocalParametersI4ivEXT, glProgramUniform1dEXT, glCopyTexImage2DEXT, glDrawRangeElementsEXT, glEnableClientStateIndexedEXT, glVariantusvEXT, glTangent3dEXT, glMultiTexRenderbufferEXT, glSecondaryColor3ivEXT, glCompressedTextureImage2DEXT, glCompressedTextureSubImage2DEXT, glMultiTexSubImage2DEXT, glMatrixFrustumEXT, glVariantdvEXT, glSecondaryColor3uivEXT, glGetMultiTexGenivEXT, glMultiDrawArraysEXT, glCompressedMultiTexImage1DEXT, glConvolutionFilter1DEXT, glGenerateMultiTexMipmapEXT, glSecondaryColor3dvEXT, glGenVertexShadersEXT, glGetTransformFeedbackVaryingEXT, glGetNamedProgramLocalParameterfvEXT, glProgramUniformMatrix4x3dvEXT, glMultiTexEnvivEXT, glProgramUniform1ivEXT, glTexSubImage1DEXT, glTexImage3DEXT, glBindImageTextureEXT, glMultiTexSubImage3DEXT, glTangent3dvEXT, glProgramUniform4dEXT, glUniform4uiEXT, glTextureParameterfEXT, glMultiTexParameterIivEXT, glProgramUniformMatrix3dvEXT, glGetQueryObjectui64vEXT, glProgramUniform3dEXT, glBinormal3dEXT, glCopyMultiTexImage2DEXT, glSecondaryColor3iEXT, glProgramUniform4uivEXT, glNamedFramebufferTexture1DEXT, glProgramUniform3dvEXT, glMultiTexGenfEXT, glGetMultiTexImageEXT, glDisableClientStateiEXT, glGenerateMipmapEXT, glCopyTexSubImage3DEXT, glGetColorTableEXT, glGetTexParameterIuivEXT, glVertexAttribLPointerEXT, glGetTextureParameterivEXT, glFogCoordfvEXT, glTextureSubImage1DEXT, glProgramUniformMatrix2x3fvEXT, glGetMultiTexParameterfvEXT, glMatrixScalefEXT, glMultiTexBufferEXT, glMultiTexImage1DEXT, glSeparableFilter2DEXT, glGetNamedProgramLocalParameterdvEXT, glUniform3uivEXT, glVertexAttribL1dvEXT, glGetQueryObjecti64vEXT, glDisableVertexArrayEXT, glActiveStencilFaceEXT, glGetVariantFloatvEXT, glGetTexParameterIivEXT, glGetInvariantBooleanvEXT, glGetNamedBufferSubDataEXT, glTexParameterIuivEXT, glUniform2uivEXT, glProgramUniformMatrix4x2fvEXT, glFlushMappedNamedBufferRangeEXT, glGetNamedRenderbufferParameterivEXT, glShaderOp2EXT, glGenFramebuffersEXT, glPolygonOffsetEXT, glStencilClearTagEXT, glGetPointerIndexedvEXT, glCopyTexImage1DEXT, glColorPointerEXT, glGetCompressedTextureImageEXT, glNamedProgramLocalParameter4fvEXT, glMultiTexCoordPointerEXT, glGetHistogramParameterfvEXT, glClientAttribDefaultEXT, glUniform1uivEXT, glBindVertexShaderEXT, glMatrixTranslatefEXT, glTexSubImage3DEXT, glBinormal3bEXT, glPixelTransformParameterfvEXT, glProgramUniform4fEXT, glProgramUniform4iEXT, glGetPixelTransformParameterivEXT, glProgramUniformMatrix3x2dvEXT, glColorSubTableEXT, glTextureSubImage3DEXT, glGetNamedBufferParameterivEXT, glGetPixelTransformParameterfvEXT, glPixelTransformParameterfEXT, glBindRenderbufferEXT, glSecondaryColor3fvEXT, glArrayElementEXT, glVertexAttribL3dvEXT, glProgramUniform2ivEXT, glProgramUniform1dvEXT, glCompressedTextureImage1DEXT, glTangent3sEXT, glNamedProgramLocalParametersI4uivEXT, glCopyConvolutionFilter1DEXT, glDisableClientStateIndexedEXT, glProgramUniform3fvEXT, glNamedRenderbufferStorageEXT, glNamedProgramLocalParameterI4iEXT, glGetConvolutionParameterfvEXT, glTangent3fvEXT, glMapNamedBufferEXT, glConvolutionParameteriEXT, glSecondaryColor3bEXT, glBindFramebufferEXT, glShaderOp1EXT, glMatrixPushEXT, glMatrixLoadTransposefEXT, glBindBufferOffsetEXT, glCheckFramebufferStatusEXT, glVertexArrayVertexAttribLOffsetEXT, glGetNamedProgramStringEXT, glProgramUniform2dEXT, glConvolutionParameterfvEXT, glDepthBoundsEXT, glMatrixPopEXT, glSecondaryColor3fEXT, glCopyMultiTexSubImage3DEXT, glTransformFeedbackVaryingsEXT, glCopyConvolutionFilter2DEXT, glIsRenderbufferEXT, glProgramUniformMatrix4fvEXT, glNamedProgramLocalParameter4fEXT, glFogCoorddEXT, glVariantPointerEXT, glProgramUniformMatrix2x4dvEXT, glGetTextureParameterIivEXT, glProgramEnvParameters4fvEXT, glSamplePatternEXT, glBlendColorEXT, glGetHistogramEXT, glSecondaryColor3usEXT, glDisableVertexArrayAttribEXT, glGetTextureParameterIuivEXT, glCreateShaderProgramEXT, glCompressedTextureImage3DEXT, glGetMultiTexParameterivEXT, glBindMaterialParameterEXT, glTangentPointerEXT, glGetFloati_vEXT, glGetPointeri_vEXT, glVertexArrayEdgeFlagOffsetEXT, glGetMultiTexLevelParameterfvEXT, glTextureParameteriEXT, glFramebufferReadBufferEXT, glCompressedMultiTexSubImage2DEXT, glMatrixScaledEXT, glNamedProgramStringEXT, glUseShaderProgramEXT, glCheckNamedFramebufferStatusEXT, glCopyTexSubImage1DEXT, glGenRenderbuffersEXT, glBindTextureEXT, glNamedFramebufferTextureFaceEXT, glGetConvolutionFilterEXT, glTangent3svEXT, glGetNamedProgramLocalParameterIivEXT, glMatrixRotatefEXT, glMatrixMultTransposefEXT, glVertexWeightfEXT, glGetVariantPointervEXT, glMultiTexGendvEXT, glGetInvariantFloatvEXT, glTextureParameterivEXT, glNamedCopyBufferSubDataEXT, glProgramUniformMatrix4x2dvEXT, glUniform4uivEXT, glMatrixLoadfEXT, glVertexArrayVertexOffsetEXT, glCopyMultiTexSubImage2DEXT, glCompressedTextureSubImage3DEXT, glVertexArrayColorOffsetEXT, glMultiTexGeniEXT, glBindMultiTextureEXT, glGetTextureLevelParameterivEXT, glVertexAttribL3dEXT, glMultiTexEnviEXT, glMultiTexGendEXT, glProgramUniform4dvEXT, glFramebufferTexture3DEXT, glCompressedMultiTexSubImage1DEXT, glGetVariantBooleanvEXT, glCopyTexSubImage2DEXT, glSecondaryColor3svEXT, glMatrixMultfEXT, glFogCoorddvEXT, glMinmaxEXT, glTextureMaterialEXT, glActiveProgramEXT, glSecondaryColor3usvEXT, glGetUniformBufferSizeEXT, glRenderbufferStorageEXT, glBeginVertexShaderEXT, glProgramUniform2dvEXT, glProvokingVertexEXT, glDisableVariantClientStateEXT, glBinormal3svEXT, glGetTextureParameterfvEXT, glGetDoubleIndexedvEXT, glMultiTexParameterfvEXT, glNamedProgramLocalParameter4dEXT, glProgramUniform3fEXT, glDeleteFramebuffersEXT, glSampleMaskEXT, glSecondaryColor3ubvEXT, glMultiTexEnvfEXT, glCompressedMultiTexImage2DEXT, glMapNamedBufferRangeEXT, glProgramUniformMatrix3x4fvEXT, glBindLightParameterEXT, glVertexArraySecondaryColorOffsetEXT, glGetLocalConstantBooleanvEXT, glTangent3bvEXT, glNamedFramebufferTextureLayerEXT, glProgramUniform1uiEXT, glExtractComponentEXT, glEnableIndexedEXT, glNormalPointerEXT, glNamedRenderbufferStorageMultisampleCoverageEXT, glTextureImage2DEXT, glProgramUniformMatrix2fvEXT, glTangent3fEXT, glIndexMaterialEXT, glGetTextureImageEXT, glProgramUniform4ivEXT, glGetVertexArrayIntegeri_vEXT, glVariantfvEXT, glSecondaryColorPointerEXT, glNamedFramebufferRenderbufferEXT, glGetMinmaxParameterfvEXT, glFogCoordPointerEXT, glGenerateTextureMipmapEXT, glGetIntegerIndexedvEXT, glGetTextureLevelParameterfvEXT, glSwizzleEXT, glVariantivEXT, glProgramUniform3uivEXT, glClearColorIuiEXT, glColorTableEXT, glVertexAttribL4dEXT, glBlendEquationSeparateEXT, glGetNamedFramebufferAttachmentParameterivEXT, glVertexArrayTexCoordOffsetEXT, glProgramLocalParameters4fvEXT, glImportSyncEXT, glProgramUniform1fvEXT, glNamedFramebufferTextureEXT, glBinormal3dvEXT, glCopyTextureSubImage3DEXT, glGetMultiTexLevelParameterivEXT, glGetMultiTexGendvEXT, glVertexArrayVertexAttribIOffsetEXT, glWriteMaskEXT, glGetLocalConstantIntegervEXT, glTextureImage1DEXT, glProgramUniformMatrix3fvEXT, glDeleteTexturesEXT, glGetDoublei_vEXT, glTextureParameterIivEXT, glAreTexturesResidentEXT, glBlitFramebufferEXT, glVertexAttribL4dvEXT, glTextureParameterfvEXT, glVariantbvEXT, glTextureParameterIuivEXT, glFogCoordfEXT, glClearColorIiEXT, glGenTexturesEXT, glVertexArrayNormalOffsetEXT, glColorMaskIndexedEXT, glGetLocalConstantFloatvEXT, glBindTexGenParameterEXT, glProgramUniformMatrix3x4dvEXT, glCompressedMultiTexSubImage3DEXT, glSecondaryColor3dEXT, glGetMultiTexEnvfvEXT, glProgramUniform3iEXT, glProgramUniformMatrix2dvEXT, glSecondaryColor3ubEXT, glBeginTransformFeedbackEXT, glProgramUniform2uivEXT, glSecondaryColor3bvEXT, glFramebufferRenderbufferEXT, glMultiTexParameteriEXT, glProgramUniformMatrix2x4fvEXT, glProgramUniform1fEXT, glEnableVertexArrayEXT, glDisableIndexedEXT, glMatrixOrthoEXT, glTexParameterIivEXT, glTextureImage3DEXT, glVertexWeightfvEXT, glMultiTexImage3DEXT, glConvolutionParameterfEXT, glGetNamedBufferPointervEXT, glUniformBufferEXT, glGetColorTableParameterivEXT, glMatrixLoadIdentityEXT, glIsFramebufferEXT, glCullParameterfvEXT, glProgramUniform1iEXT, glProgramUniformMatrix4dvEXT, glProgramUniformMatrix2x3dvEXT, glMemoryBarrierEXT, glCopyMultiTexSubImage1DEXT, glShaderOp3EXT, glUniform1uiEXT, glFramebufferTexture1DEXT, glSetInvariantEXT, glDeleteRenderbuffersEXT, glUniform2uiEXT, glCopyColorSubTableEXT, glVertexAttribL2dEXT, glNamedProgramLocalParameters4fvEXT, glNamedProgramLocalParameterI4ivEXT, glGetMultiTexGenfvEXT, glTextureNormalEXT, glBinormal3fEXT, glIsVariantEnabledEXT, glGetInvariantIntegervEXT, glProgramUniform4uiEXT, glPixelTransformParameterivEXT, glTextureBufferEXT, glMatrixLoaddEXT, glGetFloatIndexedvEXT, glHistogramEXT, glPushClientAttribDefaultEXT, glBlendEquationEXT, glNamedProgramLocalParameter4dvEXT, glBinormal3bvEXT, glTextureLightEXT, glBindBufferRangeEXT, glVariantsvEXT, glCopyTextureSubImage1DEXT, glBinormal3sEXT, glTangent3iEXT, glBinormal3iEXT, glProgramUniform4fvEXT, glGetVertexArrayIntegervEXT, glFramebufferDrawBufferEXT, glGetMinmaxParameterivEXT, glTangent3bEXT, glUnmapNamedBufferEXT, glCompressedMultiTexImage3DEXT, glCopyTextureSubImage2DEXT, glProgramUniform2fEXT, glGetColorTableParameterfvEXT, glGetNamedProgramLocalParameterIuivEXT, glMultiTexGenivEXT, glDeleteVertexShaderEXT, glInsertComponentEXT, glSetLocalConstantEXT, glNamedProgramLocalParameterI4uivEXT, glBindParameterEXT, glPointParameterfvEXT, glEndTransformFeedbackEXT, glGetMinmaxEXT, glEnableVariantClientStateEXT, glProgramUniform2fvEXT, glGetHistogramParameterivEXT, glResetMinmaxEXT, glTexCoordPointerEXT, glBinormalPointerEXT, glCopyTextureImage1DEXT, glMatrixLoadTransposedEXT, glConvolutionFilter2DEXT, glGetPointervEXT, glMultiTexImage2DEXT, glVertexPointerEXT, glVertexAttribL1dEXT, glNamedBufferSubDataEXT, glGetMultiTexEnvivEXT, glCompressedTextureSubImage1DEXT, glVertexArrayFogCoordOffsetEXT, glIndexFuncEXT, glVertexArrayVertexAttribOffsetEXT, glMultiTexParameterfEXT, glProgramParameteriEXT, glGetVertexArrayPointervEXT, glGetFragDataLocationEXT, glNamedRenderbufferStorageMultisampleEXT, glMatrixTranslatedEXT, glMatrixMultdEXT, glPointParameterfEXT, glIsTextureEXT, glFramebufferTexture2DEXT, glNamedProgramLocalParameterI4uiEXT, glConvolutionParameterivEXT, glGetCompressedMultiTexImageEXT, glProgramUniformMatrix3x2fvEXT, glPixelTransformParameteriEXT, glGetUniformOffsetEXT, glMultiTexGenfvEXT, glGetFramebufferParameterivEXT, glGetFramebufferAttachmentParameterivEXT, glUniform3uiEXT, GL_RGBA16UI_EXT, GL_LUMINANCE12_ALPHA4_EXT, GL_PROGRAM_MATRIX_STACK_DEPTH_EXT, GL_TEXTURE_COORD_ARRAY_EXT, GL_OP_RECIP_SQRT_EXT, GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE_EXT, GL_CMYK_EXT, GL_TEXTURE_TOO_LARGE_EXT, GL_RENDERBUFFER_HEIGHT_EXT, GL_TEXTURE_BUFFER_FORMAT_EXT, GL_UNSIGNED_SHORT_5_5_5_1_EXT, GL_PACK_SKIP_IMAGES_EXT, GL_OP_NEGATE_EXT, GL_MAX_TEXTURE_MAX_ANISOTROPY_EXT, GL_MAX_IMAGE_SAMPLES_EXT, GL_SRGB8_EXT, GL_OPERAND2_RGB_EXT, GL_LUMINANCE8I_EXT, GL_LUMINANCE8_ALPHA8_SNORM, GL_OUTPUT_TEXTURE_COORD6_EXT, GL_X422_REV_AVERAGE_EXT, GL_OUTPUT_TEXTURE_COORD14_EXT, GL_UNSIGNED_INT_IMAGE_1D_EXT, GL_RGBA_INTEGER_EXT, GL_SAMPLER_1D_ARRAY_EXT, GL_ALPHA8UI_EXT, GL_MIN_EXT, GL_OUTPUT_TEXTURE_COORD24_EXT, GL_OP_DOT3_EXT, GL_SAMPLER_CUBE_SHADOW_EXT, GL_DOT3_RGB_EXT, GL_NEGATIVE_W_EXT, GL_INVARIANT_DATATYPE_EXT, GL_MINMAX_FORMAT_EXT, GL_PROXY_TEXTURE_2D_EXT, GL_CONVOLUTION_HEIGHT_EXT, GL_OUTPUT_TEXTURE_COORD2_EXT, GL_MIRROR_CLAMP_TO_EDGE_EXT, GL_ONE_MINUS_CONSTANT_COLOR_EXT, GL_MAX_VARYING_COMPONENTS_EXT, GL_INTENSITY8_EXT, GL_ALPHA_INTEGER_EXT, GL_X4PASS_1_EXT, GL_COMMAND_BARRIER_BIT_EXT, GL_RENDERBUFFER_GREEN_SIZE_EXT, GL_LUMINANCE6_ALPHA2_EXT, GL_VERTEX_ARRAY_POINTER_EXT, GL_DOUBLE, GL_INVARIANT_VALUE_EXT, GL_CURRENT_BINORMAL_EXT, GL_TEXTURE_CUBE_MAP_POSITIVE_X_EXT, GL_INT_SAMPLER_CUBE_EXT, GL_RENDERBUFFER_WIDTH_EXT, GL_TEXTURE_COORD_ARRAY_TYPE_EXT, GL_PRIMARY_COLOR_EXT, GL_SECONDARY_COLOR_ARRAY_TYPE_EXT, GL_HISTOGRAM_FORMAT_EXT, GL_LIGHT_MODEL_COLOR_CONTROL_EXT, GL_LUMINANCE32I_EXT, GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT_EXT, GL_RGB2_EXT, GL_TRANSFORM_FEEDBACK_BUFFER_SIZE_EXT, GL_PIXEL_MAG_FILTER_EXT, GL_BLEND_DST_ALPHA_EXT, GL_HISTOGRAM_LUMINANCE_SIZE_EXT, GL_INVARIANT_EXT, GL_GEOMETRY_VERTICES_OUT_EXT, GL_UNSIGNED_INT_VEC2_EXT, GL_TEXTURE_SWIZZLE_G_EXT, GL_LUMINANCE12_ALPHA12_EXT, GL_SLUMINANCE8_EXT, GL_OP_SET_GE_EXT, GL_OUTPUT_TEXTURE_COORD23_EXT, GL_LUMINANCE8_EXT, GL_INDEX_TEST_REF_EXT, GL_MAX_OPTIMIZED_VERTEX_SHADER_INSTRUCTIONS_EXT, GL_SYNC_X11_FENCE_EXT, GL_UNSIGNED_INT_SAMPLER_3D_EXT, GL_FOG_COORDINATE_ARRAY_POINTER_EXT, GL_COLOR_ATTACHMENT9_EXT, GL_ALPHA16UI_EXT, GL_VERTEX_ARRAY_COUNT_EXT, GL_IMAGE_BINDING_ACCESS_EXT, GL_TEXTURE_2D_ARRAY_EXT, GL_DECR_WRAP_EXT, GL_VERTEX_WEIGHT_ARRAY_EXT, GL_DISTANCE_ATTENUATION_EXT, GL_PROXY_TEXTURE_CUBE_MAP_EXT, GL_MAX_VERTEX_SHADER_INSTRUCTIONS_EXT, GL_COLOR_ATTACHMENT2_EXT, GL_EDGE_FLAG_ARRAY_EXT, GL_TRANSPOSE_PROGRAM_MATRIX_EXT, GL_X422_REV_EXT, GL_SECONDARY_COLOR_ARRAY_POINTER_EXT, GL_INT_IMAGE_2D_MULTISAMPLE_EXT, GL_COLOR_ARRAY_POINTER_EXT, GL_W_EXT, GL_INTENSITY16UI_EXT, GL_TEXTURE_CUBE_MAP_NEGATIVE_Z_EXT, GL_SOURCE1_ALPHA_EXT, GL_UNIFORM_BARRIER_BIT_EXT, GL_LOCAL_CONSTANT_EXT, GL_DOUBLE_MAT2x3_EXT, GL_COLOR_ATTACHMENT10_EXT, GL_MAX_PIXEL_TRANSFORM_2D_STACK_DEPTH_EXT, GL_INVALID_FRAMEBUFFER_OPERATION_EXT, GL_GREEN_INTEGER_EXT, GL_FUNC_REVERSE_SUBTRACT_EXT, GL_OP_POWER_EXT, GL_X422_AVERAGE_EXT, GL_COLOR_ATTACHMENT1_EXT, GL_INTENSITY_EXT, GL_POLYGON_OFFSET_EXT, GL_FULL_RANGE_EXT, GL_MAX_OPTIMIZED_VERTEX_SHADER_LOCALS_EXT, GL_VARIANT_DATATYPE_EXT, GL_INT_IMAGE_1D_ARRAY_EXT, GL_TEXTURE_SWIZZLE_RGBA_EXT, GL_OUTPUT_TEXTURE_COORD18_EXT, GL_LUMINANCE16I_EXT, GL_R16_SNORM, GL_INTENSITY12_EXT, GL_TRIANGLE_STRIP_ADJACENCY_EXT, GL_MULTISAMPLE_BIT_EXT, GL_SECONDARY_COLOR_ARRAY_STRIDE_EXT, GL_Y_EXT, GL_OUTPUT_TEXTURE_COORD5_EXT, GL_RGB16I_EXT, GL_OUTPUT_TEXTURE_COORD11_EXT, GL_BLUE_INTEGER_EXT, GL_ALPHA4_EXT, GL_FRAMEBUFFER_ATTACHMENT_LAYERED_EXT, GL_RGBA4_EXT, GL_RGB4_EXT, GL_SOURCE2_ALPHA_EXT, GL_TEXTURE_COORD_ARRAY_COUNT_EXT, GL_SOURCE0_ALPHA_EXT, GL_COLOR_ATTACHMENT6_EXT, GL_TEXTURE_FETCH_BARRIER_BIT_EXT, GL_OPERAND2_ALPHA_EXT, GL_RGBA8_EXT, GL_COMPRESSED_SIGNED_RED_GREEN_RGTC2_EXT, GL_LUMINANCE_ALPHA32I_EXT, GL_TEXTURE_BLUE_SIZE_EXT, GL_NORMAL_ARRAY_POINTER_EXT, GL_BLEND_EQUATION_EXT, GL_COLOR_INDEX16_EXT, GL_OP_DOT4_EXT, GL_LINE_STRIP_ADJACENCY_EXT, GL_NORMAL_MAP_EXT, GL_PROXY_TEXTURE_1D_ARRAY_EXT, GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS_EXT, GL_OUTPUT_TEXTURE_COORD16_EXT, GL_PACK_IMAGE_HEIGHT_EXT, GL_ADD_SIGNED_EXT, GL_IMAGE_2D_RECT_EXT, GL_COLOR_INDEX1_EXT, GL_MAX_OPTIMIZED_VERTEX_SHADER_LOCAL_CONSTANTS_EXT, GL_PROGRAM_MATRIX_EXT, GL_FRAMEBUFFER_SRGB_CAPABLE_EXT, GL_TEXTURE_UPDATE_BARRIER_BIT_EXT, GL_PRIMITIVES_GENERATED_EXT, GL_TEXTURE_3D_BINDING_EXT, GL_OUTPUT_TEXTURE_COORD3_EXT, GL_TRIANGLES_ADJACENCY_EXT, GL_BINORMAL_ARRAY_POINTER_EXT, GL_T2F_IUI_V2F_EXT, GL_TEXTURE_SRGB_DECODE_EXT, GL_AVERAGE_EXT, GL_TEXTURE_CUBE_MAP_NEGATIVE_X_EXT, GL_LUMINANCE4_EXT, GL_VERTEX_WEIGHTING_EXT, GL_TEXTURE_RED_SIZE_EXT, GL_VERTEX_SHADER_OPTIMIZED_EXT, GL_RED_INTEGER_EXT, GL_MODELVIEW0_EXT, GL_UNSIGNED_INT_IMAGE_1D_ARRAY_EXT, GL_COMBINE_ALPHA_EXT, GL_SCALED_RESOLVE_NICEST_EXT, GL_STENCIL_TEST_TWO_SIDE_EXT, GL_INTERPOLATE_EXT, GL_RGB8UI_EXT, GL_NEGATIVE_Z_EXT, GL_COLOR_ATTACHMENT14_EXT, GL_OUTPUT_TEXTURE_COORD17_EXT, GL_COMPRESSED_RGBA_S3TC_DXT1_EXT, GL_SAMPLES_EXT, GL_PIXEL_MIN_FILTER_EXT, GL_OP_ROUND_EXT, GL_FRAMEBUFFER_INCOMPLETE_LAYER_COUNT_EXT, GL_INT_IMAGE_3D_EXT, GL_RGB8_EXT, GL_TEXTURE_PRIORITY_EXT, GL_TEXTURE_CUBE_MAP_POSITIVE_Z_EXT, GL_MAP1_TANGENT_EXT, GL_MAX_OPTIMIZED_VERTEX_SHADER_VARIANTS_EXT, GL_TRANSFORM_FEEDBACK_VARYINGS_EXT, GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL_EXT, GL_INDEX_TEST_EXT, GL_UNSIGNED_INT_IMAGE_3D_EXT, GL_UNPACK_IMAGE_HEIGHT_EXT, GL_INTENSITY32UI_EXT, GL_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER_EXT, GL_TEXTURE_SWIZZLE_R_EXT, GL_MAX_IMAGE_UNITS_EXT, GL_OP_CROSS_PRODUCT_EXT, GL_OUTPUT_TEXTURE_COORD21_EXT, GL_RGB10_EXT, GL_RG_SNORM, GL_OP_RECIP_EXT, GL_CONVOLUTION_FILTER_BIAS_EXT, GL_FOG_COORDINATE_SOURCE_EXT, GL_DOUBLE_MAT4x2_EXT, GL_BUFFER_UPDATE_BARRIER_BIT_EXT, GL_COMPRESSED_LUMINANCE_LATC1_EXT, GL_VERTEX_WEIGHT_ARRAY_STRIDE_EXT, GL_BLEND_SRC_ALPHA_EXT, GL_DOUBLE_MAT2_EXT, GL_UNSIGNED_INT_SAMPLER_1D_ARRAY_EXT, GL_FRAGMENT_COLOR_EXT, GL_X2PASS_0_EXT, GL_UNSIGNED_INT_24_8_EXT, GL_CONVOLUTION_BORDER_MODE_EXT, GL_RGB5_EXT, GL_TEXTURE_1D_ARRAY_EXT, GL_MAX_GEOMETRY_BINDABLE_UNIFORMS_EXT, GL_ALPHA16_SNORM, GL_COMPRESSED_SRGB_S3TC_DXT1_EXT, GL_COMPRESSED_RED_RGTC1_EXT, GL_SCALAR_EXT, GL_MVP_MATRIX_EXT, GL_SOURCE2_RGB_EXT, GL_OP_MAX_EXT, GL_PROXY_TEXTURE_2D_ARRAY_EXT, GL_DOUBLE_MAT3x2_EXT, GL_OUTPUT_TEXTURE_COORD9_EXT, GL_COLOR_ATTACHMENT12_EXT, GL_IMAGE_CUBE_MAP_ARRAY_EXT, GL_DRAW_FRAMEBUFFER_EXT, GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS_EXT, GL_FOG_COORDINATE_ARRAY_EXT, GL_RGB16_SNORM, GL_NORMAL_ARRAY_EXT, GL_INTENSITY4_EXT, GL_COLOR_ARRAY_STRIDE_EXT, GL_BLEND_EQUATION_RGB_EXT, GL_RGB12_EXT, GL_IMAGE_2D_MULTISAMPLE_ARRAY_EXT, GL_COMPRESSED_RGBA_S3TC_DXT3_EXT, GL_UNSIGNED_INT_5_9_9_9_REV_EXT, GL_RED_SNORM, GL_MAX_GEOMETRY_UNIFORM_COMPONENTS_EXT, GL_PIXEL_PACK_BUFFER_EXT, GL_POST_CONVOLUTION_BLUE_BIAS_EXT, GL_INT_SAMPLER_1D_ARRAY_EXT, GL_STENCIL_INDEX4_EXT, GL_OPERAND1_ALPHA_EXT, GL_SAMPLE_ALPHA_TO_MASK_EXT, GL_SECONDARY_COLOR_ARRAY_SIZE_EXT, GL_UNSIGNED_INT_SAMPLER_2D_ARRAY_EXT, GL_SLUMINANCE_EXT, GL_OP_MULTIPLY_MATRIX_EXT, GL_TEXTURE_STENCIL_SIZE_EXT, GL_UNPACK_CMYK_HINT_EXT, GL_COLOR_INDEX4_EXT, GL_COMPRESSED_SRGB_ALPHA_EXT, GL_COMBINE_RGB_EXT, GL_T2F_IUI_N3F_V3F_EXT, GL_VERTEX_SHADER_VARIANTS_EXT, GL_OP_SUB_EXT, GL_COMPRESSED_SLUMINANCE_EXT, GL_INTERLEAVED_ATTRIBS_EXT, GL_INDEX_MATERIAL_PARAMETER_EXT, GL_CUBIC_EXT, GL_LINES_ADJACENCY_EXT, GL_MAX_OPTIMIZED_VERTEX_SHADER_INVARIANTS_EXT, GL_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY_EXT, GL_BLEND_DST_RGB_EXT, GL_TEXTURE_INDEX_SIZE_EXT, GL_VERTEX_SHADER_LOCAL_CONSTANTS_EXT, GL_INT_IMAGE_CUBE_EXT, GL_FRAMEBUFFER_COMPLETE_EXT, GL_TEXTURE_LIGHT_EXT, GL_COLOR_ATTACHMENT4_EXT, GL_COLOR_ARRAY_SIZE_EXT, GL_TEXTURE_LUMINANCE_SIZE_EXT, GL_PROGRAM_POINT_SIZE_EXT, GL_INT_IMAGE_BUFFER_EXT, GL_COLOR_SUM_EXT, GL_SAMPLE_MASK_INVERT_EXT, GL_IMAGE_BINDING_LAYER_EXT, GL_VARIANT_ARRAY_POINTER_EXT, GL_ALPHA_SNORM, GL_VERTEX_WEIGHT_ARRAY_TYPE_EXT, GL_REPLACE_EXT, GL_STENCIL_ATTACHMENT_EXT, GL_REFLECTION_MAP_EXT, GL_MODELVIEW1_MATRIX_EXT, GL_COLOR_ATTACHMENT11_EXT, GL_RENDERBUFFER_RED_SIZE_EXT, GL_RGB_SCALE_EXT, GL_DOUBLE_VEC2_EXT, GL_REDUCE_EXT, GL_NORMAL_ARRAY_STRIDE_EXT, GL_SRGB_ALPHA_EXT, GL_LOCAL_CONSTANT_VALUE_EXT, GL_STENCIL_INDEX16_EXT, GL_COLOR_ATTACHMENT7_EXT, GL_POLYGON_OFFSET_BIAS_EXT, GL_INTENSITY16I_EXT, GL_MAX_CONVOLUTION_HEIGHT_EXT, GL_MIRROR_CLAMP_TO_BORDER_EXT, GL_CURRENT_VERTEX_EXT, GL_CONVOLUTION_WIDTH_EXT, GL_INT_SAMPLER_2D_ARRAY_EXT, GL_X4PASS_3_EXT, GL_CULL_VERTEX_EYE_POSITION_EXT, GL_MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS_EXT, GL_NORMAL_ARRAY_COUNT_EXT, GL_OP_EXP_BASE_2_EXT, GL_MAX_VERTEX_SHADER_INVARIANTS_EXT, GL_LUMINANCE8_ALPHA8_EXT, GL_LUMINANCE8_SNORM, GL_COMPRESSED_RGBA_S3TC_DXT5_EXT, GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE_EXT, GL_IMAGE_BINDING_FORMAT_EXT, GL_INT_IMAGE_2D_ARRAY_EXT, GL_LUMINANCE_ALPHA32UI_EXT, GL_IMAGE_CUBE_EXT, GL_GEOMETRY_INPUT_TYPE_EXT, GL_TEXTURE_BUFFER_DATA_STORE_BINDING_EXT, GL_VERTEX_SHADER_INVARIANTS_EXT, GL_SAMPLER_2D_ARRAY_SHADOW_EXT, GL_PROXY_TEXTURE_3D_EXT, GL_IMAGE_1D_ARRAY_EXT, GL_COLOR_ATTACHMENT15_EXT, GL_LUMINANCE32UI_EXT, GL_CONSTANT_COLOR_EXT, GL_RGB16UI_EXT, GL_FRAMEBUFFER_SRGB_EXT, GL_SKIP_DECODE_EXT, GL_UNSIGNED_INT_SAMPLER_BUFFER_EXT, GL_SINGLE_COLOR_EXT, GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT_EXT, GL_FRAMEBUFFER_INCOMPLETE_DIMENSIONS_EXT, GL_OP_MOV_EXT, GL_LUMINANCE16_SNORM, GL_PIXEL_TRANSFORM_2D_MATRIX_EXT, GL_OP_ADD_EXT, GL_BINORMAL_ARRAY_EXT, GL_CONSTANT_ALPHA_EXT, GL_FRAMEBUFFER_UNSUPPORTED_EXT, GL_VARIANT_ARRAY_STRIDE_EXT, GL_CURRENT_VERTEX_WEIGHT_EXT, GL_RGB9_E5_EXT, GL_ONE_MINUS_CONSTANT_ALPHA_EXT, GL_X1PASS_EXT, GL_HISTOGRAM_RED_SIZE_EXT, GL_LUMINANCE12_EXT, GL_MAX_ARRAY_TEXTURE_LAYERS_EXT, GL_SAMPLE_BUFFERS_EXT, GL_HISTOGRAM_ALPHA_SIZE_EXT, GL_POST_CONVOLUTION_RED_SCALE_EXT, GL_FRAGMENT_MATERIAL_EXT, GL_PACK_CMYK_HINT_EXT, GL_IMAGE_BINDING_NAME_EXT, GL_INT_IMAGE_1D_EXT, GL_PREVIOUS_EXT, GL_POST_CONVOLUTION_ALPHA_SCALE_EXT, GL_RASTERIZER_DISCARD_EXT, GL_EDGE_FLAG_ARRAY_COUNT_EXT, GL_PIXEL_UNPACK_BUFFER_BINDING_EXT, GL_ONE_EXT, GL_OP_INDEX_EXT, GL_RENDERBUFFER_STENCIL_SIZE_EXT, GL_MULTISAMPLE_EXT, GL_RENDERBUFFER_BLUE_SIZE_EXT, GL_INDEX_ARRAY_STRIDE_EXT, GL_ALPHA8_EXT, GL_TRANSFORM_FEEDBACK_BARRIER_BIT_EXT, GL_OUTPUT_TEXTURE_COORD26_EXT, GL_RGB10_A2_EXT, GL_LUMINANCE_INTEGER_EXT, GL_OUTPUT_TEXTURE_COORD31_EXT, GL_HISTOGRAM_SINK_EXT, GL_OUTPUT_TEXTURE_COORD10_EXT, GL_BINORMAL_ARRAY_STRIDE_EXT, GL_INT_IMAGE_2D_MULTISAMPLE_ARRAY_EXT, GL_BLEND_COLOR_EXT, GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE_EXT, GL_SCALED_RESOLVE_FASTEST_EXT, GL_MODELVIEW1_STACK_DEPTH_EXT, GL_OUTPUT_TEXTURE_COORD22_EXT, GL_RGBA_SIGNED_COMPONENTS_EXT, GL_RGBA16I_EXT, GL_ALPHA12_EXT, GL_POINT_SIZE_MAX_EXT, GL_X_EXT, GL_SEPARATE_ATTRIBS_EXT, GL_TEXTURE_COORD_ARRAY_STRIDE_EXT, GL_READ_FRAMEBUFFER_EXT, GL_TANGENT_ARRAY_EXT, GL_X4PASS_2_EXT, GL_IMAGE_BINDING_LAYERED_EXT, GL_INTENSITY8I_EXT, GL_LUMINANCE_SNORM, GL_RENDERBUFFER_EXT, GL_DOUBLE_MAT3x4_EXT, GL_COLOR_ATTACHMENT13_EXT, GL_OUTPUT_TEXTURE_COORD4_EXT, GL_COLOR_ATTACHMENT5_EXT, GL_NORMALIZED_RANGE_EXT, GL_HISTOGRAM_WIDTH_EXT, GL_FOG_COORDINATE_ARRAY_TYPE_EXT, GL_TEXTURE_COORD_ARRAY_SIZE_EXT, GL_POST_CONVOLUTION_RED_BIAS_EXT, GL_MAX_GEOMETRY_VARYING_COMPONENTS_EXT, GL_TEXTURE_2D_BINDING_EXT, GL_CMYKA_EXT, GL_UNSIGNED_INT_IMAGE_CUBE_EXT, GL_INDEX_TEST_FUNC_EXT, GL_ELEMENT_ARRAY_BARRIER_BIT_EXT, GL_TEXTURE_BUFFER_EXT, GL_MAX_3D_TEXTURE_SIZE_EXT, GL_LUMINANCE_ALPHA16UI_EXT, GL_OUTPUT_TEXTURE_COORD29_EXT, GL_X422_EXT, GL_PROXY_TEXTURE_1D_EXT, GL_FOG_COORDINATE_ARRAY_STRIDE_EXT, GL_OP_MADD_EXT, GL_OUTPUT_TEXTURE_COORD27_EXT, GL_INT_IMAGE_2D_RECT_EXT, GL_RESCALE_NORMAL_EXT, GL_TEXTURE_WRAP_R_EXT, GL_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH_EXT, GL_UNSIGNED_INT_8_8_8_8_EXT, GL_SHADOW_ATTENUATION_EXT, GL_RENDERBUFFER_INTERNAL_FORMAT_EXT, GL_LUMINANCE16_EXT, GL_VERTEX_SHADER_BINDING_EXT, GL_ALL_BARRIER_BITS_EXT, GL_GEOMETRY_OUTPUT_TYPE_EXT, GL_TEXTURE_BINDING_2D_ARRAY_EXT, GL_TRANSFORM_FEEDBACK_BUFFER_BINDING_EXT, GL_OUTPUT_TEXTURE_COORD28_EXT, GL_OUTPUT_VERTEX_EXT, GL_T2F_IUI_V3F_EXT, GL_LUMINANCE_ALPHA16I_EXT, GL_DOUBLE_VEC4_EXT, GL_DECODE_EXT, GL_UNSIGNED_INT_IMAGE_BUFFER_EXT, GL_COMPRESSED_SIGNED_LUMINANCE_LATC1_EXT, GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS_EXT, GL_INTENSITY16_EXT, GL_MAX_TEXTURE_LOD_BIAS_EXT, GL_MAX_VERTEX_BINDABLE_UNIFORMS_EXT, GL_COMPRESSED_LUMINANCE_ALPHA_LATC2_EXT, GL_LAST_VERTEX_CONVENTION_EXT, GL_PIXEL_CUBIC_WEIGHT_EXT, GL_HISTOGRAM_BLUE_SIZE_EXT, GL_SEPARABLE_2D_EXT, GL_VARIANT_ARRAY_EXT, GL_MAX_SAMPLES_EXT, GL_INT_IMAGE_2D_EXT, GL_FUNC_ADD_EXT, GL_STENCIL_INDEX8_EXT, GL_OUTPUT_TEXTURE_COORD12_EXT, GL_SHADER_IMAGE_ACCESS_BARRIER_BIT_EXT, GL_DEPTH_BOUNDS_TEST_EXT, GL_LOCAL_EXT, GL_SAMPLE_PATTERN_EXT, GL_R11F_G11F_B10F_EXT, GL_FRAMEBUFFER_EXT, GL_VERTEX_ARRAY_EXT, GL_TEXTURE_BINDING_BUFFER_EXT, GL_SEPARATE_SPECULAR_COLOR_EXT, GL_FUNC_SUBTRACT_EXT, GL_POINT_FADE_THRESHOLD_SIZE_EXT, GL_EDGE_FLAG_ARRAY_POINTER_EXT, GL_NEGATIVE_X_EXT, GL_PIXEL_TRANSFORM_2D_STACK_DEPTH_EXT, GL_TEXTURE_CUBE_MAP_POSITIVE_Y_EXT, GL_COLOR_INDEX8_EXT, GL_PERTURB_EXT, GL_ALPHA8_SNORM, GL_POST_CONVOLUTION_ALPHA_BIAS_EXT, GL_IMAGE_1D_EXT, GL_FRAMEBUFFER_BARRIER_BIT_EXT, GL_COMPRESSED_SRGB_EXT, GL_TEXTURE_SHARED_SIZE_EXT, GL_IUI_N3F_V3F_EXT, GL_MODELVIEW0_STACK_DEPTH_EXT, GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT5_EXT, GL_OUTPUT_TEXTURE_COORD20_EXT, GL_TEXTURE_RESIDENT_EXT, GL_PROVOKING_VERTEX_EXT, GL_OP_MUL_EXT, GL_INDEX_ARRAY_POINTER_EXT, GL_LUMINANCE_ALPHA8I_EXT, GL_UNIFORM_BUFFER_BINDING_EXT, GL_OUTPUT_TEXTURE_COORD13_EXT, GL_ARRAY_ELEMENT_LOCK_FIRST_EXT, GL_FRAMEBUFFER_INCOMPLETE_READ_BUFFER_EXT, GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS_EXT, GL_MINMAX_SINK_EXT, GL_CULL_VERTEX_OBJECT_POSITION_EXT, GL_CONVOLUTION_1D_EXT, GL_BLEND_SRC_RGB_EXT, GL_INTENSITY8UI_EXT, GL_INT_SAMPLER_2D_RECT_EXT, GL_VERTEX_SHADER_EXT, GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN_EXT, GL_UNSIGNED_BYTE_3_3_2_EXT, GL_COLOR_INDEX12_EXT, GL_IMAGE_2D_MULTISAMPLE_EXT, GL_MAX_BINDABLE_UNIFORM_SIZE_EXT, GL_T2F_IUI_N3F_V2F_EXT, GL_RGBA32UI_EXT, GL_COLOR_ATTACHMENT0_EXT, GL_POST_CONVOLUTION_BLUE_SCALE_EXT, GL_BGRA_EXT, GL_IUI_V2F_EXT, GL_INT_SAMPLER_3D_EXT, GL_ZERO_EXT, GL_LUMINANCE16_ALPHA16_SNORM, GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS_EXT, GL_MAP2_TANGENT_EXT, GL_POLYGON_OFFSET_FACTOR_EXT, GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT1_EXT, GL_IMAGE_BINDING_LEVEL_EXT, GL_VARIANT_ARRAY_TYPE_EXT, GL_POINT_SIZE_MIN_EXT, GL_ATOMIC_COUNTER_BARRIER_BIT_EXT, GL_LUMINANCE_ALPHA_SNORM, GL_FRAMEBUFFER_INCOMPLETE_FORMATS_EXT, GL_ALPHA8I_EXT, GL_TEXTURE_3D_EXT, GL_DRAW_FRAMEBUFFER_BINDING_EXT, GL_SHARED_TEXTURE_PALETTE_EXT, GL_TEXTURE_INTENSITY_SIZE_EXT, GL_READ_FRAMEBUFFER_BINDING_EXT, GL_RGBA16_SNORM, GL_MAX_VERTEX_VARYING_COMPONENTS_EXT, GL_MODELVIEW1_EXT, GL_TEXTURE_SWIZZLE_B_EXT, GL_MAX_FRAGMENT_BINDABLE_UNIFORMS_EXT, GL_UNSIGNED_INT_IMAGE_2D_RECT_EXT, GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS_EXT, GL_UNSIGNED_INT_SAMPLER_2D_RECT_EXT, GL_TANGENT_ARRAY_TYPE_EXT, GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT3_EXT, GL_BGRA_INTEGER_EXT, GL_UNSIGNED_INT_SAMPLER_1D_EXT, GL_COMPRESSED_SIGNED_RED_RGTC1_EXT, GL_UNSIGNED_SHORT_4_4_4_4_EXT, GL_PIXEL_PACK_BUFFER_BINDING_EXT, GL_ALPHA16_EXT, GL_X4PASS_0_EXT, GL_OP_SET_LT_EXT, GL_FRAGMENT_NORMAL_EXT, GL_PIXEL_BUFFER_BARRIER_BIT_EXT, GL_MAX_EXT, GL_RENDERBUFFER_DEPTH_SIZE_EXT, GL_GEOMETRY_SHADER_EXT, GL_SAMPLE_MASK_VALUE_EXT, GL_UNSIGNED_INT_IMAGE_2D_EXT, GL_OUTPUT_TEXTURE_COORD19_EXT, GL_LUMINANCE4_ALPHA4_EXT, GL_CONSTANT_EXT, GL_RG8_SNORM, GL_VERTEX_WEIGHT_ARRAY_POINTER_EXT, GL_OUTPUT_TEXTURE_COORD8_EXT, GL_LOCAL_CONSTANT_DATATYPE_EXT, GL_OUTPUT_TEXTURE_COORD0_EXT, GL_DOT3_RGBA_EXT, GL_MAX_TEXTURE_BUFFER_SIZE_EXT, GL_SLUMINANCE_ALPHA_EXT, GL_UNSIGNED_INT_SAMPLER_CUBE_EXT, GL_TEXTURE_COORD_ARRAY_POINTER_EXT, GL_INTENSITY8_SNORM, GL_RGBA12_EXT, GL_TEXTURE_FILTER_CONTROL_EXT, GL_SAMPLER_BUFFER_EXT, GL_COLOR_ARRAY_COUNT_EXT, GL_LUMINANCE_ALPHA_INTEGER_EXT, GL_TEXTURE_NORMAL_EXT, GL_FOG_COORDINATE_EXT, GL_INCR_WRAP_EXT, GL_VERTEX_SHADER_INSTRUCTIONS_EXT, GL_DOUBLE_MAT2x4_EXT, GL_TEXTURE_LOD_BIAS_EXT, GL_TEXTURE_DEPTH_EXT, GL_VECTOR_EXT, GL_TANGENT_ARRAY_POINTER_EXT, GL_MAX_CUBE_MAP_TEXTURE_SIZE_EXT, GL_RGBA8_SNORM, GL_DOUBLE_VEC3_EXT, GL_SAMPLER_1D_ARRAY_SHADOW_EXT, GL_MIRROR_CLAMP_EXT, GL_OP_MIN_EXT, GL_NEGATIVE_ONE_EXT, GL_INDEX_MATERIAL_FACE_EXT, GL_STENCIL_TAG_BITS_EXT, GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_3D_ZOFFSET_EXT, GL_INT_SAMPLER_1D_EXT, GL_RENDERBUFFER_ALPHA_SIZE_EXT, GL_VERTEX_ARRAY_STRIDE_EXT, GL_COMPARE_REF_DEPTH_TO_TEXTURE_EXT, GL_PROXY_HISTOGRAM_EXT, GL_IMAGE_2D_ARRAY_EXT, GL_CURRENT_TANGENT_EXT, GL_IUI_N3F_V2F_EXT, GL_MINMAX_EXT, GL_OP_FLOOR_EXT, GL_SIGNED_NORMALIZED, GL_OUTPUT_FOG_EXT, GL_NEGATIVE_Y_EXT, GL_NORMAL_ARRAY_TYPE_EXT, GL_SAMPLER_2D_ARRAY_EXT, GL_OP_LOG_BASE_2_EXT, GL_COLOR_ATTACHMENT3_EXT, GL_BGR_EXT, GL_TEXTURE_MATERIAL_FACE_EXT, GL_SAMPLE_ALPHA_TO_ONE_EXT, GL_INDEX_ARRAY_EXT, GL_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION_EXT, GL_PIXEL_TRANSFORM_2D_EXT, GL_MAP1_BINORMAL_EXT, GL_TRANSFORM_FEEDBACK_BUFFER_START_EXT, GL_MAX_ELEMENTS_INDICES_EXT, GL_OP_CLAMP_EXT, GL_DEPTH_STENCIL_EXT, GL_DOUBLE_MAT4x3_EXT, GL_CLIP_VOLUME_CLIPPING_HINT_EXT, GL_RGBA_INTEGER_MODE_EXT, GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME_EXT, GL_OP_FRAC_EXT, GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_EXT, GL_R8_SNORM, GL_DEPTH_ATTACHMENT_EXT, GL_MAX_ELEMENTS_VERTICES_EXT, GL_INDEX_MATERIAL_EXT, GL_OUTPUT_TEXTURE_COORD25_EXT, GL_ACTIVE_PROGRAM_EXT, GL_ATTENUATION_EXT, GL_RGB5_A1_EXT, GL_ALPHA32UI_EXT, GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT_EXT, GL_INT_SAMPLER_2D_EXT, GL_TEXTURE_MATERIAL_PARAMETER_EXT, GL_TRANSFORM_FEEDBACK_BUFFER_EXT, GL_UNSIGNED_INT_VEC4_EXT, GL_SAMPLE_MASK_EXT, GL_HISTOGRAM_GREEN_SIZE_EXT, GL_FRAMEBUFFER_BINDING_EXT, GL_SLUMINANCE8_ALPHA8_EXT, GL_OUTPUT_COLOR1_EXT, GL_POST_CONVOLUTION_GREEN_SCALE_EXT, GL_BGRA, GL_FIRST_VERTEX_CONVENTION_EXT, GL_OUTPUT_TEXTURE_COORD7_EXT, GL_RGBA16_EXT, GL_OUTPUT_TEXTURE_COORD15_EXT, GL_UNSIGNED_INT_VEC3_EXT, GL_MAX_VERTEX_SHADER_LOCAL_CONSTANTS_EXT, GL_CURRENT_FOG_COORDINATE_EXT, GL_INTENSITY16_SNORM, GL_DOUBLE_MAT4_EXT, GL_IMAGE_2D_EXT, GL_COLOR_ARRAY_EXT, GL_SOURCE0_RGB_EXT, GL_OUTPUT_COLOR0_EXT, GL_CONVOLUTION_FORMAT_EXT, GL_RGBA32I_EXT, GL_COLOR_ATTACHMENT8_EXT, GL_TEXTURE_BINDING_1D_ARRAY_EXT, GL_RGBA8I_EXT, GL_RGB_INTEGER_EXT, GL_RENDERBUFFER_BINDING_EXT, GL_MATRIX_EXT, GL_SOURCE1_RGB_EXT, GL_COMPRESSED_RGB_S3TC_DXT1_EXT, GL_STENCIL_CLEAR_TAG_VALUE_EXT, GL_OPERAND1_RGB_EXT, GL_VARIANT_VALUE_EXT, GL_TEXTURE_BINDING_CUBE_MAP_EXT, GL_TIME_ELAPSED_EXT, GL_TABLE_TOO_LARGE_EXT, GL_INDEX_ARRAY_COUNT_EXT, GL_RGB8I_EXT, GL_DEPTH_BOUNDS_EXT, GL_VERTEX_ARRAY_SIZE_EXT, GL_DEPTH24_STENCIL8_EXT, GL_UNSIGNED_INT_IMAGE_2D_ARRAY_EXT, GL_MAX_GEOMETRY_OUTPUT_VERTICES_EXT, GL_PIXEL_UNPACK_BUFFER_EXT, GL_LUMINANCE16UI_EXT, GL_RG16_SNORM, GL_RGB8_SNORM, GL_IMAGE_3D_EXT, GL_COMPRESSED_RED_GREEN_RGTC2_EXT, GL_INT_IMAGE_CUBE_MAP_ARRAY_EXT, GL_UNPACK_SKIP_IMAGES_EXT, GL_UNSIGNED_INT_10_10_10_2_EXT, GL_COMBINE_EXT, GL_BINORMAL_ARRAY_TYPE_EXT, GL_SECONDARY_COLOR_ARRAY_EXT, GL_VERTEX_SHADER_LOCALS_EXT, GL_IMAGE_BUFFER_EXT, GL_BLEND_EQUATION_ALPHA_EXT, GL_INTENSITY_SNORM, GL_INT_SAMPLER_BUFFER_EXT, GL_TEXTURE_APPLICATION_MODE_EXT, GL_ABGR_EXT, GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY_EXT, GL_RGBA8UI_EXT, GL_VARIANT_EXT, GL_RENDERBUFFER_SAMPLES_EXT, GL_CONVOLUTION_FILTER_SCALE_EXT, GL_TEXTURE_MAX_ANISOTROPY_EXT, GL_RGB_SNORM, GL_UNIFORM_BUFFER_EXT, GL_MAX_VERTEX_SHADER_LOCALS_EXT, GL_RGBA_SNORM, GL_X2PASS_1_EXT, GL_SRGB8_ALPHA8_EXT, GL_INTENSITY32I_EXT, GL_TEXTURE_SWIZZLE_A_EXT, GL_DOUBLE_MAT3_EXT, GL_MAP2_BINORMAL_EXT, GL_HISTOGRAM_EXT, GL_INDEX_ARRAY_TYPE_EXT, GL_ACTIVE_STENCIL_FACE_EXT, GL_RGBA2_EXT, GL_OPERAND0_ALPHA_EXT, GL_COLOR_INDEX2_EXT, GL_LUMINANCE_ALPHA8UI_EXT, GL_TRANSFORM_FEEDBACK_BUFFER_MODE_EXT, GL_CULL_VERTEX_EXT, GL_MAX_CONVOLUTION_WIDTH_EXT, GL_SRGB_EXT, GL_OUTPUT_TEXTURE_COORD30_EXT, GL_TEXTURE_ALPHA_SIZE_EXT, GL_TEXTURE_GREEN_SIZE_EXT, GL_ARRAY_ELEMENT_LOCK_COUNT_EXT, GL_STENCIL_INDEX1_EXT, GL_RGB16_EXT, GL_RGB32I_EXT, GL_MAX_VERTEX_SHADER_VARIANTS_EXT, GL_CONVOLUTION_2D_EXT, GL_COMPRESSED_SLUMINANCE_ALPHA_EXT, GL_CURRENT_SECONDARY_COLOR_EXT, GL_MAX_COLOR_ATTACHMENTS_EXT, GL_ALPHA16I_EXT, GL_IUI_V3F_EXT, GL_LUMINANCE16_ALPHA16_EXT, GL_LUMINANCE8UI_EXT, GL_TEXTURE_CUBE_MAP_NEGATIVE_Y_EXT, GL_OPERAND0_RGB_EXT, GL_RGB32UI_EXT, GL_TANGENT_ARRAY_STRIDE_EXT, GL_MAX_RENDERBUFFER_SIZE_EXT, GL_COMPRESSED_SIGNED_LUMINANCE_ALPHA_LATC2_EXT, GL_VERTEX_WEIGHT_ARRAY_SIZE_EXT, GL_OUTPUT_TEXTURE_COORD1_EXT, GL_MODELVIEW0_MATRIX_EXT, GL_VERTEX_ARRAY_TYPE_EXT, GL_ALPHA32I_EXT, GL_UNSIGNED_INT_10F_11F_11F_REV_EXT, GL_BGR_INTEGER_EXT, GL_Z_EXT, GL_COLOR_ARRAY_TYPE_EXT, GL_POST_CONVOLUTION_GREEN_BIAS_EXT, GL_EDGE_FLAG_ARRAY_STRIDE_EXT, GL_TEXTURE_1D_BINDING_EXT, GL_TEXTURE_CUBE_MAP_EXT, GL_UNSIGNED_INT_SAMPLER_2D_EXT
