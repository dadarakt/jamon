#function bodies
@createOpenGLFun glProgramEnvParameterI4uiNV(target::GLenum, index::GLuint, x::GLuint, y::GLuint, z::GLuint, w::GLuint)::Void
@createOpenGLFun glMakeBufferNonResidentNV(target::GLenum)::Void
@createOpenGLFun glPathParameterfvNV(path::GLuint, pname::GLenum, value::Ptr{GLfloat})::Void
@createOpenGLFun glCoverFillPathNV(path::GLuint, coverMode::GLenum)::Void
@createOpenGLFun glEvalMapsNV(target::GLenum, mode::GLenum)::Void
@createOpenGLFun glGetUniformui64vNV(program::GLuint, location::GLint, params::Ptr{GLuint64EXT})::Void
@createOpenGLFun glVertexAttribL1ui64vNV(index::GLuint, v::Ptr{GLuint64EXT})::Void
@createOpenGLFun glUniformui64vNV(location::GLint, count::GLsizei, value::Ptr{GLuint64EXT})::Void
@createOpenGLFun glVertexAttribL4i64NV(index::GLuint, x::GLint64EXT, y::GLint64EXT, z::GLint64EXT, w::GLint64EXT)::Void
@createOpenGLFun glProgramNamedParameter4dvNV(id::GLuint, len::GLsizei, name::Ptr{GLubyte}, v::Ptr{GLdouble})::Void
@createOpenGLFun glExecuteProgramNV(target::GLenum, id::GLuint, params::Ptr{GLfloat})::Void
@createOpenGLFun glUniform3ui64vNV(location::GLint, count::GLsizei, value::Ptr{GLuint64EXT})::Void
@createOpenGLFun glBufferAddressRangeNV(pname::GLenum, index::GLuint, address::GLuint64EXT, length::GLsizeiptr)::Void
@createOpenGLFun glVertexAttrib1svNV(index::GLuint, v::Ptr{GLshort})::Void
@createOpenGLFun glTextureImage3DMultisampleCoverageNV(texture::GLuint, target::GLenum, coverageSamples::GLsizei, colorSamples::GLsizei, internalFormat::GLint, width::GLsizei, height::GLsizei, depth::GLsizei, fixedSampleLocations::GLboolean)::Void
@createOpenGLFun glPauseTransformFeedbackNV()::Void
@createOpenGLFun glGetVideouivNV(video_slot::GLuint, pname::GLenum, params::Ptr{GLuint})::Void
@createOpenGLFun glUniform3ui64NV(location::GLint, x::GLuint64EXT, y::GLuint64EXT, z::GLuint64EXT)::Void
@createOpenGLFun glTexCoord4hNV(s::GLhalfNV, t::GLhalfNV, r::GLhalfNV, q::GLhalfNV)::Void
@createOpenGLFun glPathParameterfNV(path::GLuint, pname::GLenum, value::GLfloat)::Void
@createOpenGLFun glGetPathTexGenfvNV(texCoordSet::GLenum, pname::GLenum, value::Ptr{GLfloat})::Void
@createOpenGLFun glUniform4i64NV(location::GLint, x::GLint64EXT, y::GLint64EXT, z::GLint64EXT, w::GLint64EXT)::Void
@createOpenGLFun glGetOcclusionQueryivNV(id::GLuint, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glVertexAttribI1iEXT(index::GLuint, x::GLint)::Void
@createOpenGLFun glProgramEnvParameterI4iNV(target::GLenum, index::GLuint, x::GLint, y::GLint, z::GLint, w::GLint)::Void
@createOpenGLFun glCombinerParameterfvNV(pname::GLenum, params::Ptr{GLfloat})::Void
@createOpenGLFun glIndexFormatNV(type_::GLenum, stride::GLsizei)::Void
@createOpenGLFun glGetProgramParameterdvNV(target::GLenum, index::GLuint, pname::GLenum, params::Ptr{GLdouble})::Void
@createOpenGLFun glPathTexGenNV(texCoordSet::GLenum, genMode::GLenum, components::GLint, coeffs::Ptr{GLfloat})::Void
@createOpenGLFun glPathGlyphRangeNV(firstPathName::GLuint, fontTarget::GLenum, fontName::Ptr{Void}, fontStyle::GLbitfield, firstGlyph::GLuint, numGlyphs::GLsizei, handleMissingGlyphs::GLenum, pathParameterTemplate::GLuint, emScale::GLfloat)::Void
@createOpenGLFun glGetPathParameterfvNV(path::GLuint, pname::GLenum, value::Ptr{GLfloat})::Void
@createOpenGLFun glVertexAttrib4ubvNV(index::GLuint, v::Ptr{GLubyte})::Void
@createOpenGLFun glVertexAttrib4fvNV(index::GLuint, v::Ptr{GLfloat})::Void
@createOpenGLFun glVertexAttribI1uiEXT(index::GLuint, x::GLuint)::Void
@createOpenGLFun glVertexAttribI4uiEXT(index::GLuint, x::GLuint, y::GLuint, z::GLuint, w::GLuint)::Void
@createOpenGLFun glVertexAttrib3hNV(index::GLuint, x::GLhalfNV, y::GLhalfNV, z::GLhalfNV)::Void
@createOpenGLFun glSecondaryColorFormatNV(size::GLint, type_::GLenum, stride::GLsizei)::Void
@createOpenGLFun glGetPathParameterivNV(path::GLuint, pname::GLenum, value::Ptr{GLint})::Void
@createOpenGLFun glBindBufferBaseNV(target::GLenum, index::GLuint, buffer::GLuint)::Void
@createOpenGLFun glGetVideoi64vNV(video_slot::GLuint, pname::GLenum, params::Ptr{GLint64EXT})::Void
@createOpenGLFun glVertexAttribL3i64NV(index::GLuint, x::GLint64EXT, y::GLint64EXT, z::GLint64EXT)::Void
@createOpenGLFun glMultiTexCoord2hvNV(target::GLenum, v::Ptr{GLhalfNV})::Void
@createOpenGLFun glVertexAttrib4svNV(index::GLuint, v::Ptr{GLshort})::Void
@createOpenGLFun glProgramUniformui64vNV(program::GLuint, location::GLint, count::GLsizei, value::Ptr{GLuint64EXT})::Void
@createOpenGLFun glVertexAttribI4svEXT(index::GLuint, v::Ptr{GLshort})::Void
@createOpenGLFun glGetProgramEnvParameterIivNV(target::GLenum, index::GLuint, params::Ptr{GLint})::Void
@createOpenGLFun glEndConditionalRenderNV()::Void
@createOpenGLFun glStencilFillPathNV(path::GLuint, fillMode::GLenum, mask::GLuint)::Void
@createOpenGLFun glVertexAttribIPointerEXT(index::GLuint, size::GLint, type_::GLenum, stride::GLsizei, pointer::Ptr{Void})::Void
@createOpenGLFun glCoverStrokePathNV(path::GLuint, coverMode::GLenum)::Void
@createOpenGLFun glPathGlyphsNV(firstPathName::GLuint, fontTarget::GLenum, fontName::Ptr{Void}, fontStyle::GLbitfield, numGlyphs::GLsizei, type_::GLenum, charcodes::Ptr{Void}, handleMissingGlyphs::GLenum, pathParameterTemplate::GLuint, emScale::GLfloat)::Void
@createOpenGLFun glVertex2hvNV(v::Ptr{GLhalfNV})::Void
@createOpenGLFun glGetIntegerui64vNV(value::GLenum, result::Ptr{GLuint64EXT})::Void
@createOpenGLFun glVertexAttrib2sNV(index::GLuint, x::GLshort, y::GLshort)::Void
@createOpenGLFun glIsOcclusionQueryNV(id::GLuint)::Bool
@createOpenGLFun glMapParameterivNV(target::GLenum, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glGetProgramNamedParameterdvNV(id::GLuint, len::GLsizei, name::Ptr{GLubyte}, params::Ptr{GLdouble})::Void
@createOpenGLFun glEndTransformFeedbackNV()::Void
@createOpenGLFun glVDPAUUnmapSurfacesNV(numSurface::GLsizei, surfaces::Ptr{GLvdpauSurfaceNV})::Void
@createOpenGLFun glVDPAUInitNV(vdpDevice::Ptr{Void}, getProcAddress::Ptr{Void})::Void
@createOpenGLFun glIsTransformFeedbackNV(id::GLuint)::Bool
@createOpenGLFun glVertexAttrib3sNV(index::GLuint, x::GLshort, y::GLshort, z::GLshort)::Void
@createOpenGLFun glProgramUniform1i64NV(program::GLuint, location::GLint, x::GLint64EXT)::Void
@createOpenGLFun glCombinerParameterfNV(pname::GLenum, param::GLfloat)::Void
@createOpenGLFun glGetProgramSubroutineParameteruivNV(target::GLenum, index::GLuint, param::Ptr{GLuint})::Void
@createOpenGLFun glProgramUniform3i64vNV(program::GLuint, location::GLint, count::GLsizei, value::Ptr{GLint64EXT})::Void
@createOpenGLFun glVertexAttribI2uiEXT(index::GLuint, x::GLuint, y::GLuint)::Void
@createOpenGLFun glDeletePathsNV(path::GLuint, range_::GLsizei)::Void
@createOpenGLFun glProgramUniform3ui64NV(program::GLuint, location::GLint, x::GLuint64EXT, y::GLuint64EXT, z::GLuint64EXT)::Void
@createOpenGLFun glVertexAttribI3iEXT(index::GLuint, x::GLint, y::GLint, z::GLint)::Void
@createOpenGLFun glGenTransformFeedbacksNV(n::GLsizei, ids::Ptr{GLuint})::Void
@createOpenGLFun glProgramUniform1ui64vNV(program::GLuint, location::GLint, count::GLsizei, value::Ptr{GLuint64EXT})::Void
@createOpenGLFun glFinalCombinerInputNV(variable::GLenum, input::GLenum, mapping::GLenum, componentUsage::GLenum)::Void
@createOpenGLFun glUniform3i64vNV(location::GLint, count::GLsizei, value::Ptr{GLint64EXT})::Void
@createOpenGLFun glCombinerStageParameterfvNV(stage::GLenum, pname::GLenum, params::Ptr{GLfloat})::Void
@createOpenGLFun glVertexAttribI4ivEXT(index::GLuint, v::Ptr{GLint})::Void
@createOpenGLFun glVertexAttribL3ui64NV(index::GLuint, x::GLuint64EXT, y::GLuint64EXT, z::GLuint64EXT)::Void
@createOpenGLFun glVertexWeighthNV(weight::GLhalfNV)::Void
@createOpenGLFun glGetPathMetricsNV(metricQueryMask::GLbitfield, numPaths::GLsizei, pathNameType::GLenum, paths::Ptr{Void}, pathBase::GLuint, stride::GLsizei, metrics::Ptr{GLfloat})::Void
@createOpenGLFun glVertexAttribI3ivEXT(index::GLuint, v::Ptr{GLint})::Void
@createOpenGLFun glTexRenderbufferNV(target::GLenum, renderbuffer::GLuint)::Void
@createOpenGLFun glBindTransformFeedbackNV(target::GLenum, id::GLuint)::Void
@createOpenGLFun glVDPAUGetSurfaceivNV(surface::GLvdpauSurfaceNV, pname::GLenum, bufSize::GLsizei, length::Ptr{GLsizei}, values::Ptr{GLint})::Void
@createOpenGLFun glTexCoord2hvNV(v::Ptr{GLhalfNV})::Void
@createOpenGLFun glGetVertexAttribivNV(index::GLuint, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glVertexAttribL2i64vNV(index::GLuint, v::Ptr{GLint64EXT})::Void
@createOpenGLFun glMakeImageHandleResidentNV(handle::GLuint64, access::GLenum)::Void
@createOpenGLFun glGetIntegerui64i_vNV(value::GLenum, index::GLuint, result::Ptr{GLuint64EXT})::Void
@createOpenGLFun glUniform3i64NV(location::GLint, x::GLint64EXT, y::GLint64EXT, z::GLint64EXT)::Void
@createOpenGLFun glGetCombinerInputParameterivNV(stage::GLenum, portion::GLenum, variable::GLenum, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glGetTextureHandleNV(texture::GLuint)::CuClonglong
@createOpenGLFun glBeginConditionalRenderNV(id::GLuint, mode::GLenum)::Void
@createOpenGLFun glBeginOcclusionQueryNV(id::GLuint)::Void
@createOpenGLFun glPointAlongPathNV(path::GLuint, startSegment::GLsizei, numSegments::GLsizei, distance::GLfloat, x::Ptr{GLfloat}, y::Ptr{GLfloat}, tangentX::Ptr{GLfloat}, tangentY::Ptr{GLfloat})::Bool
@createOpenGLFun glBeginTransformFeedbackNV(primitiveMode::GLenum)::Void
@createOpenGLFun glGetCombinerStageParameterfvNV(stage::GLenum, pname::GLenum, params::Ptr{GLfloat})::Void
@createOpenGLFun glVDPAURegisterOutputSurfaceNV(vdpSurface::Ptr{Void}, target::GLenum, numTextureNames::GLsizei, textureNames::Ptr{GLuint})::Cintptr
@createOpenGLFun glVDPAUSurfaceAccessNV(surface::GLvdpauSurfaceNV, access::GLenum)::Void
@createOpenGLFun glMultiTexCoord4hvNV(target::GLenum, v::Ptr{GLhalfNV})::Void
@createOpenGLFun glVertexAttribs2hvNV(index::GLuint, n::GLsizei, v::Ptr{GLhalfNV})::Void
@createOpenGLFun glProgramParameter4dvNV(target::GLenum, index::GLuint, v::Ptr{GLdouble})::Void
@createOpenGLFun glProgramParameter4fvNV(target::GLenum, index::GLuint, v::Ptr{GLfloat})::Void
@createOpenGLFun glGetVertexAttribdvNV(index::GLuint, pname::GLenum, params::Ptr{GLdouble})::Void
@createOpenGLFun glGetBufferParameterui64vNV(target::GLenum, pname::GLenum, params::Ptr{GLuint64EXT})::Void
@createOpenGLFun glActiveVaryingNV(program::GLuint, name::Ptr{GLchar})::Void
@createOpenGLFun glVertexAttrib4ubNV(index::GLuint, x::GLubyte, y::GLubyte, z::GLubyte, w::GLubyte)::Void
@createOpenGLFun glFramebufferTextureFaceEXT(target::GLenum, attachment::GLenum, texture::GLuint, level::GLint, face::GLenum)::Void
@createOpenGLFun glMakeTextureHandleResidentNV(handle::GLuint64)::Void
@createOpenGLFun glGetPathColorGenivNV(color::GLenum, pname::GLenum, value::Ptr{GLint})::Void
@createOpenGLFun glResumeTransformFeedbackNV()::Void
@createOpenGLFun glGetVertexAttribfvNV(index::GLuint, pname::GLenum, params::Ptr{GLfloat})::Void
@createOpenGLFun glUniformHandleui64vNV(location::GLint, count::GLsizei, value::Ptr{GLuint64})::Void
@createOpenGLFun glIsImageHandleResidentNV(handle::GLuClonglong)::Bool
@createOpenGLFun glProgramLocalParametersI4uivNV(target::GLenum, index::GLuint, count::GLsizei, params::Ptr{GLuint})::Void
@createOpenGLFun glProgramUniform4i64vNV(program::GLuint, location::GLint, count::GLsizei, value::Ptr{GLint64EXT})::Void
@createOpenGLFun glDrawTransformFeedbackNV(mode::GLenum, id::GLuint)::Void
@createOpenGLFun glSecondaryColor3hNV(red::GLhalfNV, green::GLhalfNV, blue::GLhalfNV)::Void
@createOpenGLFun glPointParameteriNV(pname::GLenum, param::GLint)::Void
@createOpenGLFun glGetMapControlPointsNV(target::GLenum, index::GLuint, type_::GLenum, ustride::GLsizei, vstride::GLsizei, packed::GLboolean, points::Ptr{Void})::Void
@createOpenGLFun glGetActiveVaryingNV(program::GLuint, index::GLuint, bufSize::GLsizei, length::Ptr{GLsizei}, size::Ptr{GLsizei}, type_::Ptr{GLenum}, name::Ptr{GLchar})::Void
@createOpenGLFun glColorFormatNV(size::GLint, type_::GLenum, stride::GLsizei)::Void
@createOpenGLFun glStencilFillPathInstancedNV(numPaths::GLsizei, pathNameType::GLenum, paths::Ptr{Void}, pathBase::GLuint, fillMode::GLenum, mask::GLuint, transformType::GLenum, transformValues::Ptr{GLfloat})::Void
@createOpenGLFun glPathCoordsNV(path::GLuint, numCoords::GLsizei, coordType::GLenum, coords::Ptr{Void})::Void
@createOpenGLFun glUniform1ui64NV(location::GLint, x::GLuint64EXT)::Void
@createOpenGLFun glPresentFrameKeyedNV(video_slot::GLuint, minPresentTime::GLuint64EXT, beginPresentTimeId::GLuint, presentDurationId::GLuint, type_::GLenum, target0::GLenum, fill0::GLuint, key0::GLuint, target1::GLenum, fill1::GLuint, key1::GLuint)::Void
@createOpenGLFun glVDPAUFiniNV()::Void
@createOpenGLFun glVertexAttribI4usvEXT(index::GLuint, v::Ptr{GLushort})::Void
@createOpenGLFun glVDPAUMapSurfacesNV(numSurfaces::GLsizei, surfaces::Ptr{GLvdpauSurfaceNV})::Void
@createOpenGLFun glVertexAttribs2svNV(index::GLuint, count::GLsizei, v::Ptr{GLshort})::Void
@createOpenGLFun glCopyPathNV(resultPath::GLuint, srcPath::GLuint)::Void
@createOpenGLFun glSampleMaskIndexedNV(index::GLuint, mask::GLbitfield)::Void
@createOpenGLFun glMakeImageHandleNonResidentNV(handle::GLuint64)::Void
@createOpenGLFun glUniformHandleui64NV(location::GLint, value::GLuint64)::Void
@createOpenGLFun glVertexAttrib4sNV(index::GLuint, x::GLshort, y::GLshort, z::GLshort, w::GLshort)::Void
@createOpenGLFun glFlushPixelDataRangeNV(target::GLenum)::Void
@createOpenGLFun glVertexAttribI2ivEXT(index::GLuint, v::Ptr{GLint})::Void
@createOpenGLFun glGetPathDashArrayNV(path::GLuint, dashArray::Ptr{GLfloat})::Void
@createOpenGLFun glTexCoord4hvNV(v::Ptr{GLhalfNV})::Void
@createOpenGLFun glMultiTexCoord2hNV(target::GLenum, s::GLhalfNV, t::GLhalfNV)::Void
@createOpenGLFun glVDPAUIsSurfaceNV(surface::GLvdpauSurfaceNV)::Void
@createOpenGLFun glDeleteFencesNV(n::GLsizei, fences::Ptr{GLuint})::Void
@createOpenGLFun glVertexAttrib2hNV(index::GLuint, x::GLhalfNV, y::GLhalfNV)::Void
@createOpenGLFun glPathStencilDepthOffsetNV(factor::GLfloat, units::GLfloat)::Void
@createOpenGLFun glVertexAttribI1uivEXT(index::GLuint, v::Ptr{GLuint})::Void
@createOpenGLFun glGetMapParameterivNV(target::GLenum, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glVideoCaptureStreamParameterfvNV(video_capture_slot::GLuint, stream::GLuint, pname::GLenum, params::Ptr{GLfloat})::Void
@createOpenGLFun glGetMapAttribParameterivNV(target::GLenum, index::GLuint, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glGetMultisamplefvNV(pname::GLenum, index::GLuint, val::Ptr{GLfloat})::Void
@createOpenGLFun glProgramLocalParameterI4uivNV(target::GLenum, index::GLuint, params::Ptr{GLuint})::Void
@createOpenGLFun glUniform4ui64vNV(location::GLint, count::GLsizei, value::Ptr{GLuint64EXT})::Void
@createOpenGLFun glPathSubCommandsNV(path::GLuint, commandStart::GLsizei, commandsToDelete::GLsizei, numCommands::GLsizei, commands::Ptr{GLubyte}, numCoords::GLsizei, coordType::GLenum, coords::Ptr{Void})::Void
@createOpenGLFun glProgramSubroutineParametersuivNV(target::GLenum, count::GLsizei, params::Ptr{GLuint})::Void
@createOpenGLFun glVertexAttribIFormatNV(index::GLuint, size::GLint, type_::GLenum, stride::GLsizei)::Void
@createOpenGLFun glVertexAttrib2dvNV(index::GLuint, v::Ptr{GLdouble})::Void
@createOpenGLFun glIsTextureHandleResidentNV(handle::GLuClonglong)::Bool
@createOpenGLFun glVertex3hNV(x::GLhalfNV, y::GLhalfNV, z::GLhalfNV)::Void
@createOpenGLFun glTexCoord3hvNV(v::Ptr{GLhalfNV})::Void
@createOpenGLFun glGetProgramStringNV(id::GLuint, pname::GLenum, program::Ptr{GLubyte})::Void
@createOpenGLFun glVertexAttrib3svNV(index::GLuint, v::Ptr{GLshort})::Void
@createOpenGLFun glRenderbufferStorageMultisampleCoverageNV(target::GLenum, coverageSamples::GLsizei, colorSamples::GLsizei, internalformat::GLenum, width::GLsizei, height::GLsizei)::Void
@createOpenGLFun glVertexAttribI3uiEXT(index::GLuint, x::GLuint, y::GLuint, z::GLuint)::Void
@createOpenGLFun glGetVertexAttribIuivEXT(index::GLuint, pname::GLenum, params::Ptr{GLuint})::Void
@createOpenGLFun glVertexAttribs4hvNV(index::GLuint, n::GLsizei, v::Ptr{GLhalfNV})::Void
@createOpenGLFun glVertexAttrib4hNV(index::GLuint, x::GLhalfNV, y::GLhalfNV, z::GLhalfNV, w::GLhalfNV)::Void
@createOpenGLFun glGetVideoCaptureStreamivNV(video_capture_slot::GLuint, stream::GLuint, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glVertexWeighthvNV(weight::Ptr{GLhalfNV})::Void
@createOpenGLFun glGetTrackMatrixivNV(target::GLenum, address::GLuint, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glTexCoord3hNV(s::GLhalfNV, t::GLhalfNV, r::GLhalfNV)::Void
@createOpenGLFun glGetTextureSamplerHandleNV(texture::GLuint, sampler::GLuint)::CuClonglong
@createOpenGLFun glMakeNamedBufferNonResidentNV(buffer::GLuint)::Void
@createOpenGLFun glTexCoord1hNV(s::GLhalfNV)::Void
@createOpenGLFun glGetOcclusionQueryuivNV(id::GLuint, pname::GLenum, params::Ptr{GLuint})::Void
@createOpenGLFun glVertexAttribL1ui64NV(index::GLuint, x::GLuint64EXT)::Void
@createOpenGLFun glPathFogGenNV(genMode::GLenum)::Void
@createOpenGLFun glIsPointInFillPathNV(path::GLuint, mask::GLuint, x::GLfloat, y::GLfloat)::Bool
@createOpenGLFun glVertexAttribL2ui64NV(index::GLuint, x::GLuint64EXT, y::GLuint64EXT)::Void
@createOpenGLFun glPixelDataRangeNV(target::GLenum, length::GLsizei, pointer::Ptr{Void})::Void
@createOpenGLFun glGetMapParameterfvNV(target::GLenum, pname::GLenum, params::Ptr{GLfloat})::Void
@createOpenGLFun glGenFencesNV(n::GLsizei, fences::Ptr{GLuint})::Void
@createOpenGLFun glGetPathLengthNV(path::GLuint, startSegment::GLsizei, numSegments::GLsizei)::Float
@createOpenGLFun glGetVertexAttribLui64vNV(index::GLuint, pname::GLenum, params::Ptr{GLuint64EXT})::Void
@createOpenGLFun glVertexAttribI4uivEXT(index::GLuint, v::Ptr{GLuint})::Void
@createOpenGLFun glProgramUniform2ui64vNV(program::GLuint, location::GLint, count::GLsizei, value::Ptr{GLuint64EXT})::Void
@createOpenGLFun glVertexAttrib4fNV(index::GLuint, x::GLfloat, y::GLfloat, z::GLfloat, w::GLfloat)::Void
@createOpenGLFun glProgramParameters4fvNV(target::GLenum, index::GLuint, count::GLsizei, v::Ptr{GLfloat})::Void
@createOpenGLFun glCombinerOutputNV(stage::GLenum, portion::GLenum, abOutput::GLenum, cdOutput::GLenum, sumOutput::GLenum, scale::GLenum, bias::GLenum, abDotProduct::GLboolean, cdDotProduct::GLboolean, muxSum::GLboolean)::Void
@createOpenGLFun glVertexAttrib4dNV(index::GLuint, x::GLdouble, y::GLdouble, z::GLdouble, w::GLdouble)::Void
@createOpenGLFun glFlushVertexArrayRangeNV()::Void
@createOpenGLFun glGetProgramEnvParameterIuivNV(target::GLenum, index::GLuint, params::Ptr{GLuint})::Void
@createOpenGLFun glProgramUniformHandleui64NV(program::GLuint, location::GLint, value::GLuint64)::Void
@createOpenGLFun glProgramEnvParametersI4ivNV(target::GLenum, index::GLuint, count::GLsizei, params::Ptr{GLint})::Void
@createOpenGLFun glPathParameterivNV(path::GLuint, pname::GLenum, value::Ptr{GLint})::Void
@createOpenGLFun glUniform4i64vNV(location::GLint, count::GLsizei, value::Ptr{GLint64EXT})::Void
@createOpenGLFun glTransformFeedbackStreamAttribsNV(count::GLsizei, attribs::Ptr{GLint}, nbuffers::GLsizei, bufstreams::Ptr{GLint}, bufferMode::GLenum)::Void
@createOpenGLFun glVertexArrayRangeNV(length::GLsizei, pointer::Ptr{Void})::Void
@createOpenGLFun glVertexAttrib2svNV(index::GLuint, v::Ptr{GLshort})::Void
@createOpenGLFun glMultiTexCoord3hNV(target::GLenum, s::GLhalfNV, t::GLhalfNV, r::GLhalfNV)::Void
@createOpenGLFun glVertexAttrib4dvNV(index::GLuint, v::Ptr{GLdouble})::Void
@createOpenGLFun glVertexAttrib1hNV(index::GLuint, x::GLhalfNV)::Void
@createOpenGLFun glVertex3hvNV(v::Ptr{GLhalfNV})::Void
@createOpenGLFun glSecondaryColor3hvNV(v::Ptr{GLhalfNV})::Void
@createOpenGLFun glProgramParameter4fNV(target::GLenum, index::GLuint, x::GLfloat, y::GLfloat, z::GLfloat, w::GLfloat)::Void
@createOpenGLFun glBindBufferOffsetNV(target::GLenum, index::GLuint, buffer::GLuint, offset::GLintptr)::Void
@createOpenGLFun glGetProgramParameterfvNV(target::GLenum, index::GLuint, pname::GLenum, params::Ptr{GLfloat})::Void
@createOpenGLFun glGetVideoCaptureStreamfvNV(video_capture_slot::GLuint, stream::GLuint, pname::GLenum, params::Ptr{GLfloat})::Void
@createOpenGLFun glProgramLocalParametersI4ivNV(target::GLenum, index::GLuint, count::GLsizei, params::Ptr{GLint})::Void
@createOpenGLFun glVertexAttribs3hvNV(index::GLuint, n::GLsizei, v::Ptr{GLhalfNV})::Void
@createOpenGLFun glGetVaryingLocationNV(program::GLuint, name::Ptr{GLchar})::Cint
@createOpenGLFun glUniform4ui64NV(location::GLint, x::GLuint64EXT, y::GLuint64EXT, z::GLuint64EXT, w::GLuint64EXT)::Void
@createOpenGLFun glGetNamedBufferParameterui64vNV(buffer::GLuint, pname::GLenum, params::Ptr{GLuint64EXT})::Void
@createOpenGLFun glVertexAttribs4dvNV(index::GLuint, count::GLsizei, v::Ptr{GLdouble})::Void
@createOpenGLFun glUniform2ui64vNV(location::GLint, count::GLsizei, value::Ptr{GLuint64EXT})::Void
@createOpenGLFun glGetProgramivNV(id::GLuint, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glTexCoord1hvNV(v::Ptr{GLhalfNV})::Void
@createOpenGLFun glVertexAttribL3i64vNV(index::GLuint, v::Ptr{GLint64EXT})::Void
@createOpenGLFun glVertexAttribs1hvNV(index::GLuint, n::GLsizei, v::Ptr{GLhalfNV})::Void
@createOpenGLFun glDeleteProgramsNV(n::GLsizei, programs::Ptr{GLuint})::Void
@createOpenGLFun glVertexAttribI4iEXT(index::GLuint, x::GLint, y::GLint, z::GLint, w::GLint)::Void
@createOpenGLFun glVertexAttrib1fNV(index::GLuint, x::GLfloat)::Void
@createOpenGLFun glVertexAttribs1fvNV(index::GLuint, count::GLsizei, v::Ptr{GLfloat})::Void
@createOpenGLFun glProgramLocalParameterI4iNV(target::GLenum, index::GLuint, x::GLint, y::GLint, z::GLint, w::GLint)::Void
@createOpenGLFun glVideoCaptureNV(video_capture_slot::GLuint, sequence_num::Ptr{GLuint}, capture_time::Ptr{GLuClonglongEXT})::Cint
@createOpenGLFun glProgramParameter4dNV(target::GLenum, index::GLuint, x::GLdouble, y::GLdouble, z::GLdouble, w::GLdouble)::Void
@createOpenGLFun glVertexFormatNV(size::GLint, type_::GLenum, stride::GLsizei)::Void
@createOpenGLFun glVertexAttribI1ivEXT(index::GLuint, v::Ptr{GLint})::Void
@createOpenGLFun glProgramParameters4dvNV(target::GLenum, index::GLuint, count::GLsizei, v::Ptr{GLdouble})::Void
@createOpenGLFun glVertexAttribL4ui64vNV(index::GLuint, v::Ptr{GLuint64EXT})::Void
@createOpenGLFun glGetUniformi64vNV(program::GLuint, location::GLint, params::Ptr{GLint64EXT})::Void
@createOpenGLFun glProgramUniform4i64NV(program::GLuint, location::GLint, x::GLint64EXT, y::GLint64EXT, z::GLint64EXT, w::GLint64EXT)::Void
@createOpenGLFun glVDPAURegisterVideoSurfaceNV(vdpSurface::Ptr{Void}, target::GLenum, numTextureNames::GLsizei, textureNames::Ptr{GLuint})::Cintptr
@createOpenGLFun glUniform1i64vNV(location::GLint, count::GLsizei, value::Ptr{GLint64EXT})::Void
@createOpenGLFun glMultiTexCoord4hNV(target::GLenum, s::GLhalfNV, t::GLhalfNV, r::GLhalfNV, q::GLhalfNV)::Void
@createOpenGLFun glProgramLocalParameterI4uiNV(target::GLenum, index::GLuint, x::GLuint, y::GLuint, z::GLuint, w::GLuint)::Void
@createOpenGLFun glColor4hvNV(v::Ptr{GLhalfNV})::Void
@createOpenGLFun glGetFinalCombinerInputParameterivNV(variable::GLenum, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glProgramBufferParametersIivNV(target::GLenum, buffer::GLuint, index::GLuint, count::GLsizei, params::Ptr{GLint})::Void
@createOpenGLFun glGetPathColorGenfvNV(color::GLenum, pname::GLenum, value::Ptr{GLfloat})::Void
@createOpenGLFun glGenProgramsNV(n::GLsizei, programs::Ptr{GLuint})::Void
@createOpenGLFun glGetCombinerOutputParameterfvNV(stage::GLenum, portion::GLenum, pname::GLenum, params::Ptr{GLfloat})::Void
@createOpenGLFun glMakeTextureHandleNonResidentNV(handle::GLuint64)::Void
@createOpenGLFun glColor3hNV(red::GLhalfNV, green::GLhalfNV, blue::GLhalfNV)::Void
@createOpenGLFun glVertexAttrib3hvNV(index::GLuint, v::Ptr{GLhalfNV})::Void
@createOpenGLFun glCopyImageSubDataNV(srcName::GLuint, srcTarget::GLenum, srcLevel::GLint, srcX::GLint, srcY::GLint, srcZ::GLint, dstName::GLuint, dstTarget::GLenum, dstLevel::GLint, dstX::GLint, dstY::GLint, dstZ::GLint, width::GLsizei, height::GLsizei, depth::GLsizei)::Void
@createOpenGLFun glGetImageHandleNV(texture::GLuint, level::GLint, layered::GLboolean, layer::GLint, format::GLenum)::CuClonglong
@createOpenGLFun glProgramBufferParametersIuivNV(target::GLenum, buffer::GLuint, index::GLuint, count::GLsizei, params::Ptr{GLuint})::Void
@createOpenGLFun glVertexAttribs4fvNV(index::GLuint, count::GLsizei, v::Ptr{GLfloat})::Void
@createOpenGLFun glTextureImage2DMultisampleCoverageNV(texture::GLuint, target::GLenum, coverageSamples::GLsizei, colorSamples::GLsizei, internalFormat::GLint, width::GLsizei, height::GLsizei, fixedSampleLocations::GLboolean)::Void
@createOpenGLFun glBindVideoCaptureStreamTextureNV(video_capture_slot::GLuint, stream::GLuint, frame_region::GLenum, target::GLenum, texture::GLuint)::Void
@createOpenGLFun glFogCoordFormatNV(type_::GLenum, stride::GLsizei)::Void
@createOpenGLFun glTexImage3DMultisampleCoverageNV(target::GLenum, coverageSamples::GLsizei, colorSamples::GLsizei, internalFormat::GLint, width::GLsizei, height::GLsizei, depth::GLsizei, fixedSampleLocations::GLboolean)::Void
@createOpenGLFun glVertexAttribL3ui64vNV(index::GLuint, v::Ptr{GLuint64EXT})::Void
@createOpenGLFun glEdgeFlagFormatNV(stride::GLsizei)::Void
@createOpenGLFun glVertexAttribI2iEXT(index::GLuint, x::GLint, y::GLint)::Void
@createOpenGLFun glPrimitiveRestartIndexNV(index::GLuint)::Void
@createOpenGLFun glClearDepthdNV(depth::GLdouble)::Void
@createOpenGLFun glUniform1i64NV(location::GLint, x::GLint64EXT)::Void
@createOpenGLFun glVertexAttrib3fNV(index::GLuint, x::GLfloat, y::GLfloat, z::GLfloat)::Void
@createOpenGLFun glProgramNamedParameter4fNV(id::GLuint, len::GLsizei, name::Ptr{GLubyte}, x::GLfloat, y::GLfloat, z::GLfloat, w::GLfloat)::Void
@createOpenGLFun glGenPathsNV(range_::GLsizei)::Cuint
@createOpenGLFun glBindVideoCaptureStreamBufferNV(video_capture_slot::GLuint, stream::GLuint, frame_region::GLenum, offset::GLintptrARB)::Void
@createOpenGLFun glVertexAttribs3svNV(index::GLuint, count::GLsizei, v::Ptr{GLshort})::Void
@createOpenGLFun glVertexAttribs2fvNV(index::GLuint, count::GLsizei, v::Ptr{GLfloat})::Void
@createOpenGLFun glProgramEnvParametersI4uivNV(target::GLenum, index::GLuint, count::GLsizei, params::Ptr{GLuint})::Void
@createOpenGLFun glEndVideoCaptureNV(video_capture_slot::GLuint)::Void
@createOpenGLFun glPathDashArrayNV(path::GLuint, dashCount::GLsizei, dashArray::Ptr{GLfloat})::Void
@createOpenGLFun glLoadProgramNV(target::GLenum, id::GLuint, len::GLsizei, program::Ptr{GLubyte})::Void
@createOpenGLFun glUniform1ui64vNV(location::GLint, count::GLsizei, value::Ptr{GLuint64EXT})::Void
@createOpenGLFun glProgramUniform3ui64vNV(program::GLuint, location::GLint, count::GLsizei, value::Ptr{GLuint64EXT})::Void
@createOpenGLFun glMakeNamedBufferResidentNV(buffer::GLuint, access::GLenum)::Void
@createOpenGLFun glProgramUniform4ui64vNV(program::GLuint, location::GLint, count::GLsizei, value::Ptr{GLuint64EXT})::Void
@createOpenGLFun glVertexAttrib1hvNV(index::GLuint, v::Ptr{GLhalfNV})::Void
@createOpenGLFun glTexImage2DMultisampleCoverageNV(target::GLenum, coverageSamples::GLsizei, colorSamples::GLsizei, internalFormat::GLint, width::GLsizei, height::GLsizei, fixedSampleLocations::GLboolean)::Void
@createOpenGLFun glCoverFillPathInstancedNV(numPaths::GLsizei, pathNameType::GLenum, paths::Ptr{Void}, pathBase::GLuint, coverMode::GLenum, transformType::GLenum, transformValues::Ptr{GLfloat})::Void
@createOpenGLFun glBindProgramNV(target::GLenum, id::GLuint)::Void
@createOpenGLFun glGetMapAttribParameterfvNV(target::GLenum, index::GLuint, pname::GLenum, params::Ptr{GLfloat})::Void
@createOpenGLFun glGetFenceivNV(fence::GLuint, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glPathStringNV(path::GLuint, format::GLenum, length::GLsizei, pathString::Ptr{Void})::Void
@createOpenGLFun glCoverStrokePathInstancedNV(numPaths::GLsizei, pathNameType::GLenum, paths::Ptr{Void}, pathBase::GLuint, coverMode::GLenum, transformType::GLenum, transformValues::Ptr{GLfloat})::Void
@createOpenGLFun glCombinerParameterivNV(pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glVertexAttrib1dNV(index::GLuint, x::GLdouble)::Void
@createOpenGLFun glVertexAttrib2fNV(index::GLuint, x::GLfloat, y::GLfloat)::Void
@createOpenGLFun glVertexAttrib1fvNV(index::GLuint, v::Ptr{GLfloat})::Void
@createOpenGLFun glVertexAttrib2fvNV(index::GLuint, v::Ptr{GLfloat})::Void
@createOpenGLFun glGetVideoCaptureStreamdvNV(video_capture_slot::GLuint, stream::GLuint, pname::GLenum, params::Ptr{GLdouble})::Void
@createOpenGLFun glColor3hvNV(v::Ptr{GLhalfNV})::Void
@createOpenGLFun glProgramNamedParameter4dNV(id::GLuint, len::GLsizei, name::Ptr{GLubyte}, x::GLdouble, y::GLdouble, z::GLdouble, w::GLdouble)::Void
@createOpenGLFun glPresentFrameDualFillNV(video_slot::GLuint, minPresentTime::GLuint64EXT, beginPresentTimeId::GLuint, presentDurationId::GLuint, type_::GLenum, target0::GLenum, fill0::GLuint, target1::GLenum, fill1::GLuint, target2::GLenum, fill2::GLuint, target3::GLenum, fill3::GLuint)::Void
@createOpenGLFun glTextureBarrierNV()::Void
@createOpenGLFun glVertexAttribI3uivEXT(index::GLuint, v::Ptr{GLuint})::Void
@createOpenGLFun glProgramVertexLimitNV(target::GLenum, limit::GLint)::Void
@createOpenGLFun glIsNamedBufferResidentNV(buffer::GLuint)::Bool
@createOpenGLFun glProgramUniform1i64vNV(program::GLuint, location::GLint, count::GLsizei, value::Ptr{GLint64EXT})::Void
@createOpenGLFun glProgramLocalParameterI4ivNV(target::GLenum, index::GLuint, params::Ptr{GLint})::Void
@createOpenGLFun glProgramUniform2i64vNV(program::GLuint, location::GLint, count::GLsizei, value::Ptr{GLint64EXT})::Void
@createOpenGLFun glVideoCaptureStreamParameterivNV(video_capture_slot::GLuint, stream::GLuint, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glPointParameterivNV(pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glGetVideoui64vNV(video_slot::GLuint, pname::GLenum, params::Ptr{GLuint64EXT})::Void
@createOpenGLFun glVertexAttribL4ui64NV(index::GLuint, x::GLuint64EXT, y::GLuint64EXT, z::GLuint64EXT, w::GLuint64EXT)::Void
@createOpenGLFun glFogCoordhvNV(fog::Ptr{GLhalfNV})::Void
@createOpenGLFun glDeleteOcclusionQueriesNV(n::GLsizei, ids::Ptr{GLuint})::Void
@createOpenGLFun glGetVertexAttribPointervNV(index::GLuint, pname::GLenum, pointer::Ptr{Ptr{Void}})::Void
@createOpenGLFun glGetProgramNamedParameterfvNV(id::GLuint, len::GLsizei, name::Ptr{GLubyte}, params::Ptr{GLfloat})::Void
@createOpenGLFun glVertexAttribLFormatNV(index::GLuint, size::GLint, type_::GLenum, stride::GLsizei)::Void
@createOpenGLFun glGetPathSpacingNV(pathListMode::GLenum, numPaths::GLsizei, pathNameType::GLenum, paths::Ptr{Void}, pathBase::GLuint, advanceScale::GLfloat, kerningScale::GLfloat, transformType::GLenum, returnedSpacing::Ptr{GLfloat})::Void
@createOpenGLFun glVertexAttrib1sNV(index::GLuint, x::GLshort)::Void
@createOpenGLFun glVertexAttribI2uivEXT(index::GLuint, v::Ptr{GLuint})::Void
@createOpenGLFun glPathCommandsNV(path::GLuint, numCommands::GLsizei, commands::Ptr{GLubyte}, numCoords::GLsizei, coordType::GLenum, coords::Ptr{Void})::Void
@createOpenGLFun glVertexAttrib2hvNV(index::GLuint, v::Ptr{GLhalfNV})::Void
@createOpenGLFun glFinishFenceNV(fence::GLuint)::Void
@createOpenGLFun glFogCoordhNV(fog::GLhalfNV)::Void
@createOpenGLFun glGetCombinerOutputParameterivNV(stage::GLenum, portion::GLenum, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glVertexAttribL1i64NV(index::GLuint, x::GLint64EXT)::Void
@createOpenGLFun glNormal3hNV(nx::GLhalfNV, ny::GLhalfNV, nz::GLhalfNV)::Void
@createOpenGLFun glVertexAttrib3dvNV(index::GLuint, v::Ptr{GLdouble})::Void
@createOpenGLFun glIsFenceNV(fence::GLuint)::Bool
@createOpenGLFun glPathSubCoordsNV(path::GLuint, coordStart::GLsizei, numCoords::GLsizei, coordType::GLenum, coords::Ptr{Void})::Void
@createOpenGLFun glTrackMatrixNV(target::GLenum, address::GLuint, matrix::GLenum, transform::GLenum)::Void
@createOpenGLFun glVertexAttrib3fvNV(index::GLuint, v::Ptr{GLfloat})::Void
@createOpenGLFun glVertexAttrib2dNV(index::GLuint, x::GLdouble, y::GLdouble)::Void
@createOpenGLFun glUniformui64NV(location::GLint, value::GLuint64EXT)::Void
@createOpenGLFun glUniform2i64vNV(location::GLint, count::GLsizei, value::Ptr{GLint64EXT})::Void
@createOpenGLFun glGetVertexAttribIivEXT(index::GLuint, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glVertexAttribI4ubvEXT(index::GLuint, v::Ptr{GLubyte})::Void
@createOpenGLFun glStencilStrokePathInstancedNV(numPaths::GLsizei, pathNameType::GLenum, paths::Ptr{Void}, pathBase::GLuint, reference::GLint, mask::GLuint, transformType::GLenum, transformValues::Ptr{GLfloat})::Void
@createOpenGLFun glVertex4hNV(x::GLhalfNV, y::GLhalfNV, z::GLhalfNV, w::GLhalfNV)::Void
@createOpenGLFun glMapParameterfvNV(target::GLenum, pname::GLenum, params::Ptr{GLfloat})::Void
@createOpenGLFun glNormal3hvNV(v::Ptr{GLhalfNV})::Void
@createOpenGLFun glProgramNamedParameter4fvNV(id::GLuint, len::GLsizei, name::Ptr{GLubyte}, v::Ptr{GLfloat})::Void
@createOpenGLFun glGetProgramLocalParameterIuivNV(target::GLenum, index::GLuint, params::Ptr{GLuint})::Void
@createOpenGLFun glProgramBufferParametersfvNV(target::GLenum, buffer::GLuint, index::GLuint, count::GLsizei, params::Ptr{GLfloat})::Void
@createOpenGLFun glVertexAttribL2i64NV(index::GLuint, x::GLint64EXT, y::GLint64EXT)::Void
@createOpenGLFun glGetVertexAttribLi64vNV(index::GLuint, pname::GLenum, params::Ptr{GLint64EXT})::Void
@createOpenGLFun glTexCoordFormatNV(size::GLint, type_::GLenum, stride::GLsizei)::Void
@createOpenGLFun glProgramUniformHandleui64vNV(program::GLuint, location::GLint, count::GLsizei, values::Ptr{GLuint64})::Void
@createOpenGLFun glVertexAttribL2ui64vNV(index::GLuint, v::Ptr{GLuint64EXT})::Void
@createOpenGLFun glGetVideoCaptureivNV(video_capture_slot::GLuint, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glProgramUniform2i64NV(program::GLuint, location::GLint, x::GLint64EXT, y::GLint64EXT)::Void
@createOpenGLFun glCombinerInputNV(stage::GLenum, portion::GLenum, variable::GLenum, input::GLenum, mapping::GLenum, componentUsage::GLenum)::Void
@createOpenGLFun glProgramEnvParameterI4uivNV(target::GLenum, index::GLuint, params::Ptr{GLuint})::Void
@createOpenGLFun glPathParameteriNV(path::GLuint, pname::GLenum, value::GLint)::Void
@createOpenGLFun glAreProgramsResidentNV(n::GLsizei, programs::Ptr{GLuint}, residences::Ptr{GLboolean})::Bool
@createOpenGLFun glVertexAttribs4ubvNV(index::GLuint, count::GLsizei, v::Ptr{GLubyte})::Void
@createOpenGLFun glTransformFeedbackVaryingsNV(program::GLuint, count::GLsizei, locations::Ptr{GLint}, bufferMode::GLenum)::Void
@createOpenGLFun glVertexAttrib3dNV(index::GLuint, x::GLdouble, y::GLdouble, z::GLdouble)::Void
@createOpenGLFun glWeightPathsNV(resultPath::GLuint, numPaths::GLsizei, paths::Ptr{GLuint}, weights::Ptr{GLfloat})::Void
@createOpenGLFun glUniform2ui64NV(location::GLint, x::GLuint64EXT, y::GLuint64EXT)::Void
@createOpenGLFun glTransformFeedbackAttribsNV(count::GLsizei, attribs::Ptr{GLint}, bufferMode::GLenum)::Void
@createOpenGLFun glMapControlPointsNV(target::GLenum, index::GLuint, type_::GLenum, ustride::GLsizei, vstride::GLsizei, uorder::GLint, vorder::GLint, packed::GLboolean, points::Ptr{Void})::Void
@createOpenGLFun glVertexAttribs1dvNV(index::GLuint, count::GLsizei, v::Ptr{GLdouble})::Void
@createOpenGLFun glBeginVideoCaptureNV(video_capture_slot::GLuint)::Void
@createOpenGLFun glVDPAUUnregisterSurfaceNV(surface::GLvdpauSurfaceNV)::Void
@createOpenGLFun glVertexAttribs4svNV(index::GLuint, count::GLsizei, v::Ptr{GLshort})::Void
@createOpenGLFun glMakeBufferResidentNV(target::GLenum, access::GLenum)::Void
@createOpenGLFun glProgramUniform1ui64NV(program::GLuint, location::GLint, x::GLuint64EXT)::Void
@createOpenGLFun glProgramEnvParameterI4ivNV(target::GLenum, index::GLuint, params::Ptr{GLint})::Void
@createOpenGLFun glMultiTexCoord3hvNV(target::GLenum, v::Ptr{GLhalfNV})::Void
@createOpenGLFun glMultiTexCoord1hNV(target::GLenum, s::GLhalfNV)::Void
@createOpenGLFun glGetVideoivNV(video_slot::GLuint, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glProgramUniform3i64NV(program::GLuint, location::GLint, x::GLint64EXT, y::GLint64EXT, z::GLint64EXT)::Void
@createOpenGLFun glVideoCaptureStreamParameterdvNV(video_capture_slot::GLuint, stream::GLuint, pname::GLenum, params::Ptr{GLdouble})::Void
@createOpenGLFun glGetCombinerInputParameterfvNV(stage::GLenum, portion::GLenum, variable::GLenum, pname::GLenum, params::Ptr{GLfloat})::Void
@createOpenGLFun glEndOcclusionQueryNV()::Void
@createOpenGLFun glTransformPathNV(resultPath::GLuint, srcPath::GLuint, transformType::GLenum, transformValues::Ptr{GLfloat})::Void
@createOpenGLFun glGetProgramLocalParameterIivNV(target::GLenum, index::GLuint, params::Ptr{GLint})::Void
@createOpenGLFun glUniform2i64NV(location::GLint, x::GLint64EXT, y::GLint64EXT)::Void
@createOpenGLFun glVertex4hvNV(v::Ptr{GLhalfNV})::Void
@createOpenGLFun glTextureImage2DMultisampleNV(texture::GLuint, target::GLenum, samples::GLsizei, internalFormat::GLint, width::GLsizei, height::GLsizei, fixedSampleLocations::GLboolean)::Void
@createOpenGLFun glVertexAttribL4i64vNV(index::GLuint, v::Ptr{GLint64EXT})::Void
@createOpenGLFun glProgramUniformui64NV(program::GLuint, location::GLint, value::GLuint64EXT)::Void
@createOpenGLFun glGenOcclusionQueriesNV(n::GLsizei, ids::Ptr{GLuint})::Void
@createOpenGLFun glTexCoord2hNV(s::GLhalfNV, t::GLhalfNV)::Void
@createOpenGLFun glVertexAttribs3fvNV(index::GLuint, count::GLsizei, v::Ptr{GLfloat})::Void
@createOpenGLFun glVertexAttribs3dvNV(index::GLuint, count::GLsizei, v::Ptr{GLdouble})::Void
@createOpenGLFun glNormalFormatNV(type_::GLenum, stride::GLsizei)::Void
@createOpenGLFun glIsPathNV(path::GLuint)::Bool
@createOpenGLFun glCombinerParameteriNV(pname::GLenum, param::GLint)::Void
@createOpenGLFun glProgramUniform2ui64NV(program::GLuint, location::GLint, x::GLuint64EXT, y::GLuint64EXT)::Void
@createOpenGLFun glGetPathCoordsNV(path::GLuint, coords::Ptr{GLfloat})::Void
@createOpenGLFun glTextureImage3DMultisampleNV(texture::GLuint, target::GLenum, samples::GLsizei, internalFormat::GLint, width::GLsizei, height::GLsizei, depth::GLsizei, fixedSampleLocations::GLboolean)::Void
@createOpenGLFun glVertexAttribL1i64vNV(index::GLuint, v::Ptr{GLint64EXT})::Void
@createOpenGLFun glGetTransformFeedbackVaryingNV(program::GLuint, index::GLuint, location::Ptr{GLint})::Void
@createOpenGLFun glGetPathTexGenivNV(texCoordSet::GLenum, pname::GLenum, value::Ptr{GLint})::Void
@createOpenGLFun glPathColorGenNV(color::GLenum, genMode::GLenum, colorFormat::GLenum, coeffs::Ptr{GLfloat})::Void
@createOpenGLFun glGetPathMetricRangeNV(metricQueryMask::GLbitfield, firstPathName::GLuint, numPaths::GLsizei, stride::GLsizei, metrics::Ptr{GLfloat})::Void
@createOpenGLFun glVertexAttribPointerNV(index::GLuint, fsize::GLint, type_::GLenum, stride::GLsizei, pointer::Ptr{Void})::Void
@createOpenGLFun glStencilStrokePathNV(path::GLuint, reference::GLint, mask::GLuint)::Void
@createOpenGLFun glFramebufferTextureLayerEXT(target::GLenum, attachment::GLenum, texture::GLuint, level::GLint, layer::GLint)::Void
@createOpenGLFun glBindBufferRangeNV(target::GLenum, index::GLuint, buffer::GLuint, offset::GLintptr, size::GLsizeiptr)::Void
@createOpenGLFun glSetFenceNV(fence::GLuint, condition::GLenum)::Void
@createOpenGLFun glDeleteTransformFeedbacksNV(n::GLsizei, ids::Ptr{GLuint})::Void
@createOpenGLFun glPathStencilFuncNV(func_::GLenum, ref::GLint, mask::GLuint)::Void
@createOpenGLFun glVertexAttribs2dvNV(index::GLuint, count::GLsizei, v::Ptr{GLdouble})::Void
@createOpenGLFun glVertexAttribs1svNV(index::GLuint, count::GLsizei, v::Ptr{GLshort})::Void
@createOpenGLFun glDepthRangedNV(zNear::GLdouble, zFar::GLdouble)::Void
@createOpenGLFun glDepthBoundsdNV(zmin::GLdouble, zmax::GLdouble)::Void
@createOpenGLFun glVertexAttrib1dvNV(index::GLuint, v::Ptr{GLdouble})::Void
@createOpenGLFun glGetPathCommandsNV(path::GLuint, commands::Ptr{GLubyte})::Void
@createOpenGLFun glColor4hNV(red::GLhalfNV, green::GLhalfNV, blue::GLhalfNV, alpha::GLhalfNV)::Void
@createOpenGLFun glVertexAttrib4hvNV(index::GLuint, v::Ptr{GLhalfNV})::Void
@createOpenGLFun glPathCoverDepthFuncNV(func_::GLenum)::Void
@createOpenGLFun glMultiTexCoord1hvNV(target::GLenum, v::Ptr{GLhalfNV})::Void
@createOpenGLFun glRequestResidentProgramsNV(n::GLsizei, programs::Ptr{GLuint})::Void
@createOpenGLFun glVertexAttribI4bvEXT(index::GLuint, v::Ptr{GLbyte})::Void
@createOpenGLFun glIsPointInStrokePathNV(path::GLuint, x::GLfloat, y::GLfloat)::Bool
@createOpenGLFun glIsBufferResidentNV(target::GLenum)::Bool
@createOpenGLFun glInterpolatePathsNV(resultPath::GLuint, pathA::GLuint, pathB::GLuint, weight::GLfloat)::Void
@createOpenGLFun glTestFenceNV(fence::GLuint)::Bool
@createOpenGLFun glFramebufferTextureEXT(target::GLenum, attachment::GLenum, texture::GLuint, level::GLint)::Void
@createOpenGLFun glIsProgramNV(id::GLuint)::Bool
@createOpenGLFun glProgramUniform4ui64NV(program::GLuint, location::GLint, x::GLuint64EXT, y::GLuint64EXT, z::GLuint64EXT, w::GLuint64EXT)::Void
@createOpenGLFun glGetFinalCombinerInputParameterfvNV(variable::GLenum, pname::GLenum, params::Ptr{GLfloat})::Void
@createOpenGLFun glPrimitiveRestartNV()::Void
@createOpenGLFun glVertexAttribFormatNV(index::GLuint, size::GLint, type_::GLenum, normalized::GLboolean, stride::GLsizei)::Void
@createOpenGLFun glVertex2hNV(x::GLhalfNV, y::GLhalfNV)::Void
#constants
const GL_DEPENDENT_RGB_TEXTURE_CUBE_MAP_NV                            = 0x885A
const GL_RENDERBUFFER_COVERAGE_SAMPLES_NV                             = 0x8CAB
const GL_EVAL_VERTEX_ATTRIB1_NV                                       = 0x86C7
const GL_NORMAL_MAP_NV                                                = 0x8511
const GL_TRANSPOSE_NV                                                 = 0x862C
const GL_VIDEO_BUFFER_NV                                              = 0x9020
const GL_FLOAT_32_UNSIGNED_INT_24_8_REV_NV                            = 0x8DAD
const GL_MATRIX1_NV                                                   = 0x8631
const GL_MAX_MULTISAMPLE_COVERAGE_MODES_NV                            = 0x8E11
const GL_COMBINER_CD_OUTPUT_NV                                        = 0x854B
const GL_MATRIX6_NV                                                   = 0x8636
const GL_OFFSET_HILO_PROJECTIVE_TEXTURE_RECTANGLE_NV                  = 0x8857
const GL_DOT_PRODUCT_AFFINE_DEPTH_REPLACE_NV                          = 0x885D
const GL_EVAL_VERTEX_ATTRIB15_NV                                      = 0x86D5
const GL_YCBYCR8_422_NV                                               = 0x9031
const GL_FONT_Y_MAX_BOUNDS_NV                                         = 0x00080000
const GL_EVAL_VERTEX_ATTRIB9_NV                                       = 0x86CF
const GL_E_TIMES_F_NV                                                 = 0x8531
const GL_PATH_COMMAND_COUNT_NV                                        = 0x909D
const GL_STANDARD_FONT_NAME_NV                                        = 0x9072
const GL_RELATIVE_ARC_TO_NV                                           = 0xFF
const GL_INT64_VEC2_NV                                                = 0x8FE9
const GL_PIXEL_COUNTER_BITS_NV                                        = 0x8864
const GL_CURRENT_OCCLUSION_QUERY_ID_NV                                = 0x8865
const GL_FILE_NAME_NV                                                 = 0x9074
const GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS_ARB                           = 0x8B4C
const GL_DRAW_INDIRECT_LENGTH_NV                                      = 0x8F42
const GL_DEPENDENT_RGB_TEXTURE_3D_NV                                  = 0x8859
const GL_HALF_BIAS_NORMAL_NV                                          = 0x853A
const GL_PATH_END_CAPS_NV                                             = 0x9076
const GL_POINT_SPRITE_R_MODE_NV                                       = 0x8863
const GL_TRANSLATE_X_NV                                               = 0x908E
const GL_MAP2_VERTEX_ATTRIB2_4_NV                                     = 0x8672
const GL_EXPAND_NEGATE_NV                                             = 0x8539
const GL_PROGRAM_PARAMETER_NV                                         = 0x8644
const GL_COMBINER_SUM_OUTPUT_NV                                       = 0x854C
const GL_MAP2_VERTEX_ATTRIB9_4_NV                                     = 0x8679
const GL_MATRIX2_NV                                                   = 0x8632
const GL_DISCARD_NV                                                   = 0x8530
const GL_RELATIVE_QUADRATIC_CURVE_TO_NV                               = 0x0B
const GL_UNSIGNED_INVERT_NV                                           = 0x8537
const GL_EVAL_TRIANGULAR_2D_NV                                        = 0x86C1
const GL_FRAME_NV                                                     = 0x8E26
const GL_PIXEL_COUNT_AVAILABLE_NV                                     = 0x8867
const GL_MATRIX3_NV                                                   = 0x8633
const GL_ATTRIB_ARRAY_SIZE_NV                                         = 0x8623
const GL_COMBINE4_NV                                                  = 0x8503
const GL_SIGNED_RGBA_NV                                               = 0x86FB
const GL_UNSIGNED_INT8_VEC3_NV                                        = 0x8FEE
const GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET_NV                         = 0x8E5F
const GL_EVAL_FRACTIONAL_TESSELLATION_NV                              = 0x86C5
const GL_PROJECTIVE_3D_NV                                             = 0x9095
const GL_GEOMETRY_VERTICES_OUT_EXT                                    = 0x8DDA
const GL_INT64_VEC3_NV                                                = 0x8FEA
const GL_VIDEO_COLOR_CONVERSION_MAX_NV                                = 0x902A
const GL_VERTEX_ATTRIB_ARRAY_UNIFIED_NV                               = 0x8F1E
const GL_PROGRAM_ERROR_POSITION_NV                                    = 0x864B
const GL_PRIMITIVE_RESTART_INDEX_NV                                   = 0x8559
const GL_DEPTH_STENCIL_TO_BGRA_NV                                     = 0x886F
const GL_RELATIVE_CUBIC_CURVE_TO_NV                                   = 0x0D
const GL_MAX_PROGRAM_IF_DEPTH_NV                                      = 0x88F6
const GL_MAX_RECTANGLE_TEXTURE_SIZE_NV                                = 0x84F8
const GL_RELATIVE_HORIZONTAL_LINE_TO_NV                               = 0x07
const GL_UNSIGNED_INT64_VEC3_NV                                       = 0x8FF6
const GL_COVERAGE_SAMPLES_NV                                          = 0x80A9
const GL_MAP_ATTRIB_V_ORDER_NV                                        = 0x86C4
const GL_FONT_X_MIN_BOUNDS_NV                                         = 0x00010000
const GL_TEXTURE_RENDERBUFFER_DATA_STORE_BINDING_NV                   = 0x8E54
const GL_TRANSFORM_FEEDBACK_BUFFER_ACTIVE_NV                          = 0x8E24
const GL_EDGE_FLAG_ARRAY_ADDRESS_NV                                   = 0x8F26
const GL_FIELD_LOWER_NV                                               = 0x9023
const GL_PATH_STROKE_COVER_MODE_NV                                    = 0x9083
const GL_COMBINER0_NV                                                 = 0x8550
const GL_TEXTURE_RENDERBUFFER_NV                                      = 0x8E55
const GL_BUFFER_GPU_ADDRESS_NV                                        = 0x8F1D
const GL_HALF_BIAS_NEGATE_NV                                          = 0x853B
const GL_VERTEX_ATTRIB_ARRAY5_NV                                      = 0x8655
const GL_PATH_COORD_COUNT_NV                                          = 0x909E
const GL_VERTEX_ARRAY_RANGE_POINTER_NV                                = 0x8521
const GL_MAX_FRAGMENT_PROGRAM_LOCAL_PARAMETERS_NV                     = 0x8868
const GL_TEXTURE1_ARB                                                 = 0x84C1
const GL_MAP2_VERTEX_ATTRIB12_4_NV                                    = 0x867C
const GL_DOT_PRODUCT_DIFFUSE_CUBE_MAP_NV                              = 0x86F1
const GL_LARGE_CCW_ARC_TO_NV                                          = 0x16
const GL_TEXTURE_UNSIGNED_REMAP_MODE_NV                               = 0x888F
const GL_SIGNED_RGB8_UNSIGNED_ALPHA8_NV                               = 0x870D
const GL_ATTRIB_ARRAY_STRIDE_NV                                       = 0x8624
const GL_EVAL_2D_NV                                                   = 0x86C0
const GL_FENCE_STATUS_NV                                              = 0x84F3
const GL_EVAL_VERTEX_ATTRIB4_NV                                       = 0x86CA
const GL_RECT_NV                                                      = 0xF6
const GL_SHADER_GLOBAL_ACCESS_BARRIER_BIT_NV                          = 0x00000010
const GL_PROXY_TEXTURE_RECTANGLE_NV                                   = 0x84F7
const GL_FONT_MAX_ADVANCE_WIDTH_NV                                    = 0x01000000
const GL_PATH_COMPUTED_LENGTH_NV                                      = 0x90A0
const GL_TEXTURE_BORDER_VALUES_NV                                     = 0x871A
const GL_FOG_COORD_ARRAY_LENGTH_NV                                    = 0x8F32
const GL_FLOAT_RGB16_NV                                               = 0x8888
const GL_HI_SCALE_NV                                                  = 0x870E
const GL_QUERY_BY_REGION_WAIT_NV                                      = 0x8E15
const GL_COMBINER_CD_DOT_PRODUCT_NV                                   = 0x8546
const GL_MULTISAMPLE_FILTER_HINT_NV                                   = 0x8534
const GL_PATH_GEN_COLOR_FORMAT_NV                                     = 0x90B2
const GL_TRIANGLE_STRIP_ADJACENCY_EXT                                 = 0x000D
const GL_VIDEO_CAPTURE_TO_422_SUPPORTED_NV                            = 0x9026
const GL_PATH_GEN_COEFF_NV                                            = 0x90B1
const GL_SMALL_CCW_ARC_TO_NV                                          = 0x12
const GL_CURRENT_MATRIX_NV                                            = 0x8641
const GL_DEPENDENT_AR_TEXTURE_2D_NV                                   = 0x86E9
const GL_SCALE_BY_TWO_NV                                              = 0x853E
const GL_VERTEX_ATTRIB_ARRAY8_NV                                      = 0x8658
const GL_TEXTURE_COORD_ARRAY_ADDRESS_NV                               = 0x8F25
const GL_OFFSET_TEXTURE_2D_SCALE_NV                                   = 0x86E2
const GL_FONT_MAX_ADVANCE_HEIGHT_NV                                   = 0x02000000
const GL_FIRST_TO_REST_NV                                             = 0x90AF
const GL_TRANSFORM_FEEDBACK_BUFFER_PAUSED_NV                          = 0x8E23
const GL_FRAMEBUFFER_ATTACHMENT_LAYERED_EXT                           = 0x8DA7
const GL_VERTEX_ARRAY_RANGE_WITHOUT_FLUSH_NV                          = 0x8533
const GL_MITER_REVERT_NV                                              = 0x90A7
const GL_VARIABLE_E_NV                                                = 0x8527
const GL_MAX_PROGRAM_GENERIC_RESULTS_NV                               = 0x8DA6
const GL_PATH_STENCIL_FUNC_NV                                         = 0x90B7
const GL_LINE_STRIP_ADJACENCY_EXT                                     = 0x000B
const GL_PATH_FILL_MASK_NV                                            = 0x9081
const GL_GEOMETRY_PROGRAM_PARAMETER_BUFFER_NV                         = 0x8DA3
const GL_SKIP_COMPONENTS3_NV                                          = -4
const GL_MAX_SAMPLE_MASK_WORDS_NV                                     = 0x8E59
const GL_ELEMENT_ARRAY_LENGTH_NV                                      = 0x8F33
const GL_SAMPLE_MASK_NV                                               = 0x8E51
const GL_MAP1_VERTEX_ATTRIB1_4_NV                                     = 0x8661
const GL_TEXTURE_SHADER_NV                                            = 0x86DE
const GL_VERTEX_ATTRIB_ARRAY_ADDRESS_NV                               = 0x8F20
const GL_TRANSFORM_FEEDBACK_VARYINGS_NV                               = 0x8C83
const GL_PATH_DASH_OFFSET_NV                                          = 0x907E
const GL_PRIMITIVES_GENERATED_NV                                      = 0x8C87
const GL_MAX_PROGRAM_ATTRIB_COMPONENTS_NV                             = 0x8908
const GL_SAMPLE_POSITION_NV                                           = 0x8E50
const GL_YCBAYCR8A_4224_NV                                            = 0x9032
const GL_VERTEX_STATE_PROGRAM_NV                                      = 0x8621
const GL_TRIANGLES_ADJACENCY_EXT                                      = 0x000C
const GL_PATH_FILL_MODE_NV                                            = 0x9080
const GL_PROGRAM_ATTRIB_COMPONENTS_NV                                 = 0x8906
const GL_BEVEL_NV                                                     = 0x90A6
const GL_MITER_TRUNCATE_NV                                            = 0x90A8
const GL_FORCE_BLUE_TO_ONE_NV                                         = 0x8860
const GL_SURFACE_REGISTERED_NV                                        = 0x86FD
const GL_MAP1_VERTEX_ATTRIB9_4_NV                                     = 0x8669
const GL_VIDEO_BUFFER_PITCH_NV                                        = 0x9028
const GL_TRANSFORM_FEEDBACK_BUFFER_MODE_NV                            = 0x8C7F
const GL_RGBA_UNSIGNED_DOT_PRODUCT_MAPPING_NV                         = 0x86D9
const GL_VERTEX_ATTRIB_ARRAY9_NV                                      = 0x8659
const GL_PATH_STROKE_MASK_NV                                          = 0x9084
const GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET_NV                         = 0x8E5E
const GL_EXPAND_NORMAL_NV                                             = 0x8538
const GL_DEPTH_STENCIL_TO_RGBA_NV                                     = 0x886E
const GL_SKIP_MISSING_GLYPH_NV                                        = 0x90A9
const GL_COMBINER1_NV                                                 = 0x8551
const GL_TEXTURE_FLOAT_COMPONENTS_NV                                  = 0x888C
const GL_UNSIGNED_INT8_NV                                             = 0x8FEC
const GL_INDEX_ARRAY_LENGTH_NV                                        = 0x8F2E
const GL_MAP1_VERTEX_ATTRIB0_4_NV                                     = 0x8660
const GL_VERTEX_ATTRIB_ARRAY13_NV                                     = 0x865D
const GL_FRAMEBUFFER_INCOMPLETE_LAYER_COUNT_EXT                       = 0x8DA9
const GL_PATH_TERMINAL_DASH_CAP_NV                                    = 0x907D
const GL_PROGRAM_ERROR_STRING_NV                                      = 0x8874
const GL_MAP1_VERTEX_ATTRIB4_4_NV                                     = 0x8664
const GL_EVAL_VERTEX_ATTRIB13_NV                                      = 0x86D3
const GL_TESS_EVALUATION_PROGRAM_PARAMETER_BUFFER_NV                  = 0x8C75
const GL_SIGNED_RGB8_NV                                               = 0x86FF
const GL_DSDT_MAG_VIB_NV                                              = 0x86F7
const GL_OFFSET_TEXTURE_BIAS_NV                                       = 0x86E3
const GL_WRITE_ONLY                                                   = 0x88B9
const GL_FONT_X_MAX_BOUNDS_NV                                         = 0x00040000
const GL_SQUARE_NV                                                    = 0x90A3
const GL_CIRCULAR_CCW_ARC_TO_NV                                       = 0xF8
const GL_SPARE0_NV                                                    = 0x852E
const GL_DOT_PRODUCT_TEXTURE_3D_NV                                    = 0x86EF
const GL_VIDEO_BUFFER_INTERNAL_FORMAT_NV                              = 0x902D
const GL_DOT_PRODUCT_TEXTURE_1D_NV                                    = 0x885C
const GL_PROJECTIVE_2D_NV                                             = 0x9093
const GL_NUM_VIDEO_CAPTURE_STREAMS_NV                                 = 0x9024
const GL_SMOOTH_QUADRATIC_CURVE_TO_NV                                 = 0x0E
const GL_QUERY_NO_WAIT_NV                                             = 0x8E14
const GL_INT16_VEC3_NV                                                = 0x8FE6
const GL_INT8_NV                                                      = 0x8FE0
const GL_MAP2_VERTEX_ATTRIB8_4_NV                                     = 0x8678
const GL_FIELDS_NV                                                    = 0x8E27
const GL_UNSIGNED_INT64_VEC2_NV                                       = 0x8FF5
const GL_TRANSFORM_FEEDBACK_NV                                        = 0x8E22
const GL_MAP2_VERTEX_ATTRIB4_4_NV                                     = 0x8674
const GL_UNSIGNED_INT16_NV                                            = 0x8FF0
const GL_RELATIVE_SMALL_CCW_ARC_TO_NV                                 = 0x13
const GL_FLOAT_RGBA_MODE_NV                                           = 0x888E
const GL_RELATIVE_LINE_TO_NV                                          = 0x05
const GL_OFFSET_TEXTURE_2D_MATRIX_NV                                  = 0x86E1
const GL_VARIABLE_D_NV                                                = 0x8526
const GL_PRIMARY_COLOR_NV                                             = 0x852C
const GL_DEPENDENT_HILO_TEXTURE_2D_NV                                 = 0x8858
const GL_HALF_FLOAT_NV                                                = 0x140B
const GL_DT_SCALE_NV                                                  = 0x8711
const GL_CONST_EYE_NV                                                 = 0x86E5
const GL_TRANSPOSE_AFFINE_2D_NV                                       = 0x9096
const GL_SIGNED_RGB_UNSIGNED_ALPHA_NV                                 = 0x870C
const GL_SPARE1_NV                                                    = 0x852F
const GL_PROGRAM_LENGTH_NV                                            = 0x8627
const GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS_EXT                         = 0x8C29
const GL_VERTEX_ATTRIB_ARRAY7_NV                                      = 0x8657
const GL_MAX_TRACK_MATRICES_NV                                        = 0x862F
const GL_PATH_STENCIL_REF_NV                                          = 0x90B8
const GL_GPU_ADDRESS_NV                                               = 0x8F34
const GL_QUERY_BY_REGION_NO_WAIT_NV                                   = 0x8E16
const GL_TEXTURE_MAG_SIZE_NV                                          = 0x871F
const GL_CUBIC_CURVE_TO_NV                                            = 0x0C
const GL_CONSTANT_COLOR1_NV                                           = 0x852B
const GL_MAX_GEOMETRY_PROGRAM_INVOCATIONS_NV                          = 0x8E5A
const GL_MAX_SPOT_EXPONENT_NV                                         = 0x8505
const GL_RELATIVE_SMOOTH_QUADRATIC_CURVE_TO_NV                        = 0x0F
const GL_READ_PIXEL_DATA_RANGE_POINTER_NV                             = 0x887D
const GL_CULL_MODES_NV                                                = 0x86E0
const GL_MATRIX5_NV                                                   = 0x8635
const GL_EVAL_VERTEX_ATTRIB12_NV                                      = 0x86D2
const GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER_EXT                     = 0x8CD4
const GL_FRAGMENT_PROGRAM_INTERPOLATION_OFFSET_BITS_NV                = 0x8E5D
const GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS_NV                   = 0x8C8B
const GL_SURFACE_STATE_NV                                             = 0x86EB
const GL_Z6Y10Z6CB10Z6Y10Z6CR10_422_NV                                = 0x9033
const GL_RELATIVE_SMOOTH_CUBIC_CURVE_TO_NV                            = 0x11
const GL_COUNT_DOWN_NV                                                = 0x9089
const GL_PATH_INITIAL_DASH_CAP_NV                                     = 0x907C
const GL_COMBINER3_NV                                                 = 0x8553
const GL_PATH_GEN_COMPONENTS_NV                                       = 0x90B3
const GL_TRANSFORM_FEEDBACK_ATTRIBS_NV                                = 0x8C7E
const GL_Z4Y12Z4CB12Z4CR12_444_NV                                     = 0x9037
const GL_MOVE_TO_NV                                                   = 0x02
const GL_DOT_PRODUCT_CONST_EYE_REFLECT_CUBE_MAP_NV                    = 0x86F3
const GL_POINT_SPRITE_NV                                              = 0x8861
const GL_PATH_STROKE_OVERSAMPLE_COUNT_NV                              = 0x9087
const GL_RELATIVE_LARGE_CCW_ARC_TO_NV                                 = 0x17
const GL_LINES_ADJACENCY_EXT                                          = 0x000A
const GL_VERTEX_ATTRIB_ARRAY3_NV                                      = 0x8653
const GL_PATH_STENCIL_DEPTH_OFFSET_FACTOR_NV                          = 0x90BD
const GL_PRIMITIVE_ID_NV                                              = 0x8C7C
const GL_HI_BIAS_NV                                                   = 0x8714
const GL_VERTEX_ARRAY_RANGE_VALID_NV                                  = 0x851F
const GL_COMBINER7_NV                                                 = 0x8557
const GL_GEOMETRY_PROGRAM_NV                                          = 0x8C26
const GL_EVAL_VERTEX_ATTRIB5_NV                                       = 0x86CB
const GL_PROGRAM_POINT_SIZE_EXT                                       = 0x8642
const GL_MAP1_VERTEX_ATTRIB8_4_NV                                     = 0x8668
const GL_GENERIC_ATTRIB_NV                                            = 0x8C7D
const GL_FLOAT_RGB_NV                                                 = 0x8882
const GL_MULTISAMPLE_COVERAGE_MODES_NV                                = 0x8E12
const GL_EMBOSS_MAP_NV                                                = 0x855F
const GL_HILO8_NV                                                     = 0x885E
const GL_ACTIVE_VARYINGS_NV                                           = 0x8C81
const GL_VARIABLE_B_NV                                                = 0x8524
const GL_DEPTH_STENCIL_NV                                             = 0x84F9
const GL_TEXTURE0_ARB                                                 = 0x84C0
const GL_SIGNED_IDENTITY_NV                                           = 0x853C
const GL_VIDEO_COLOR_CONVERSION_MATRIX_NV                             = 0x9029
const GL_PATH_STROKE_WIDTH_NV                                         = 0x9075
const GL_COLOR_SAMPLES_NV                                             = 0x8E20
const GL_PATH_MITER_LIMIT_NV                                          = 0x907A
const GL_COLOR_ARRAY_LENGTH_NV                                        = 0x8F2D
const GL_INVERSE_TRANSPOSE_NV                                         = 0x862D
const GL_MAGNITUDE_SCALE_NV                                           = 0x8712
const GL_DEPTH_BUFFER_FLOAT_MODE_NV                                   = 0x8DAF
const GL_VIDEO_COLOR_CONVERSION_OFFSET_NV                             = 0x902C
const GL_DSDT_MAG_NV                                                  = 0x86F6
const GL_TRANSFORM_FEEDBACK_BUFFER_START_NV                           = 0x8C84
const GL_EVAL_VERTEX_ATTRIB2_NV                                       = 0x86C8
const GL_VARIABLE_F_NV                                                = 0x8528
const GL_PROGRAM_STRING_NV                                            = 0x8628
const GL_OFFSET_TEXTURE_RECTANGLE_NV                                  = 0x864C
const GL_LO_SCALE_NV                                                  = 0x870F
const GL_SIGNED_ALPHA8_NV                                             = 0x8706
const GL_SKIP_COMPONENTS2_NV                                          = -5
const GL_MAP2_VERTEX_ATTRIB0_4_NV                                     = 0x8670
const GL_VERTEX_ATTRIB_ARRAY_INTEGER_NV                               = 0x88FD
const GL_LAST_VIDEO_CAPTURE_STATUS_NV                                 = 0x9027
const GL_DRAW_INDIRECT_UNIFIED_NV                                     = 0x8F40
const GL_Z4Y12Z4CB12Z4A12Z4Y12Z4CR12Z4A12_4224_NV                     = 0x9036
const GL_FONT_UNDERLINE_THICKNESS_NV                                  = 0x08000000
const GL_COORD_REPLACE_NV                                             = 0x8862
const GL_DOT_PRODUCT_DEPTH_REPLACE_NV                                 = 0x86ED
const GL_OFFSET_TEXTURE_2D_BIAS_NV                                    = 0x86E3
const GL_MAP1_VERTEX_ATTRIB3_4_NV                                     = 0x8663
const GL_TEXTURE_BINDING_RENDERBUFFER_NV                              = 0x8E53
const GL_VERTEX_PROGRAM_POINT_SIZE_NV                                 = 0x8642
const GL_COMBINER_AB_OUTPUT_NV                                        = 0x854A
const GL_PROGRAM_RESULT_COMPONENTS_NV                                 = 0x8907
const GL_FONT_Y_MIN_BOUNDS_NV                                         = 0x00020000
const GL_COMBINER2_NV                                                 = 0x8552
const GL_GEOMETRY_INPUT_TYPE_EXT                                      = 0x8DDB
const GL_SEPARATE_ATTRIBS_NV                                          = 0x8C8D
const GL_SIGNED_RGBA8_NV                                              = 0x86FC
const GL_SUCCESS_NV                                                   = 0x902F
const GL_RELATIVE_MOVE_TO_NV                                          = 0x03
const GL_WRITE_PIXEL_DATA_RANGE_NV                                    = 0x8878
const GL_ACTIVE_VARYING_MAX_LENGTH_NV                                 = 0x8C82
const GL_COMBINER_MAPPING_NV                                          = 0x8543
const GL_SAMPLER_RENDERBUFFER_NV                                      = 0x8E56
const GL_COUNT_UP_NV                                                  = 0x9088
const GL_FLOAT16_NV                                                   = 0x8FF8
const GL_INT8_VEC4_NV                                                 = 0x8FE3
const GL_SYSTEM_FONT_NAME_NV                                          = 0x9073
const GL_VERTICAL_LINE_TO_NV                                          = 0x08
const GL_TRACK_MATRIX_TRANSFORM_NV                                    = 0x8649
const GL_PATH_FORMAT_SVG_NV                                           = 0x9070
const GL_AFFINE_2D_NV                                                 = 0x9092
const GL_MIN_PROGRAM_TEXEL_OFFSET_NV                                  = 0x8904
const GL_CULL_FRAGMENT_NV                                             = 0x86E7
const GL_VERTEX_ARRAY_LENGTH_NV                                       = 0x8F2B
const GL_UNSIGNED_INT_SAMPLER_RENDERBUFFER_NV                         = 0x8E58
const GL_ATTRIB_ARRAY_POINTER_NV                                      = 0x8645
const GL_FLOAT_RG_NV                                                  = 0x8881
const GL_TRANSFORM_FEEDBACK_BUFFER_NV                                 = 0x8C8E
const GL_VERTEX_ARRAY_RANGE_NV                                        = 0x851D
const GL_VERTEX_ATTRIB_ARRAY4_NV                                      = 0x8654
const GL_PATH_JOIN_STYLE_NV                                           = 0x9079
const GL_SHADER_OPERATION_NV                                          = 0x86DF
const GL_INT8_VEC3_NV                                                 = 0x8FE2
const GL_VERTEX_ATTRIB_ARRAY11_NV                                     = 0x865B
const GL_FLOAT_R32_NV                                                 = 0x8885
const GL_MAX_PROGRAM_TEXEL_OFFSET_NV                                  = 0x8905
const GL_SECONDARY_COLOR_ARRAY_LENGTH_NV                              = 0x8F31
const GL_REGISTER_COMBINERS_NV                                        = 0x8522
const GL_FLOAT_RGB32_NV                                               = 0x8889
const GL_PATH_STENCIL_DEPTH_OFFSET_UNITS_NV                           = 0x90BE
const GL_FONT_HEIGHT_NV                                               = 0x00800000
const GL_MAP2_VERTEX_ATTRIB11_4_NV                                    = 0x867B
const GL_MATRIX0_NV                                                   = 0x8630
const GL_OFFSET_PROJECTIVE_TEXTURE_RECTANGLE_SCALE_NV                 = 0x8853
const GL_FLOAT16_VEC4_NV                                              = 0x8FFB
const GL_MAX_PROGRAM_SUBROUTINE_PARAMETERS_NV                         = 0x8F44
const GL_FRAGMENT_PROGRAM_NV                                          = 0x8870
const GL_OFFSET_TEXTURE_2D_NV                                         = 0x86E8
const GL_PRESENT_DURATION_NV                                          = 0x8E2B
const GL_MAX_PROGRAM_TOTAL_OUTPUT_COMPONENTS_NV                       = 0x8C28
const GL_OFFSET_TEXTURE_SCALE_NV                                      = 0x86E2
const GL_NEXT_VIDEO_CAPTURE_BUFFER_STATUS_NV                          = 0x9025
const GL_DT_BIAS_NV                                                   = 0x8717
const GL_SHADER_CONSISTENT_NV                                         = 0x86DD
const GL_TESS_EVALUATION_PROGRAM_NV                                   = 0x891F
const GL_CLOSE_PATH_NV                                                = 0x00
const GL_COMBINER5_NV                                                 = 0x8555
const GL_FLOAT_R16_NV                                                 = 0x8884
const GL_PATH_SAMPLE_QUALITY_NV                                       = 0x9085
const GL_VERTEX_PROGRAM_BINDING_NV                                    = 0x864A
const GL_BOUNDING_BOX_OF_BOUNDING_BOXES_NV                            = 0x909C
const GL_VIDEO_COLOR_CONVERSION_MIN_NV                                = 0x902B
const GL_GLYPH_HORIZONTAL_BEARING_X_BIT_NV                            = 0x04
const GL_EDGE_FLAG_ARRAY_LENGTH_NV                                    = 0x8F30
const GL_PATH_FILL_COVER_MODE_NV                                      = 0x9082
const GL_SIGNED_INTENSITY8_NV                                         = 0x8708
const GL_SIGNED_LUMINANCE_NV                                          = 0x8701
const GL_SIGNED_LUMINANCE_ALPHA_NV                                    = 0x8703
const GL_RELATIVE_VERTICAL_LINE_TO_NV                                 = 0x09
const GL_MAP1_VERTEX_ATTRIB14_4_NV                                    = 0x866E
const GL_FLOAT_RG16_NV                                                = 0x8886
const GL_GEOMETRY_OUTPUT_TYPE_EXT                                     = 0x8DDC
const GL_VARIABLE_A_NV                                                = 0x8523
const GL_UTF8_NV                                                      = 0x909A
const GL_MAX_PROGRAM_OUTPUT_VERTICES_NV                               = 0x8C27
const GL_COLOR_SUM_CLAMP_NV                                           = 0x854F
const GL_INT16_NV                                                     = 0x8FE4
const GL_TRANSLATE_Y_NV                                               = 0x908F
const GL_MULTI_HULLS_NV                                               = 0x908C
const GL_FLOAT16_VEC3_NV                                              = 0x8FFA
const GL_VERTEX_ARRAY_ADDRESS_NV                                      = 0x8F21
const GL_SAMPLE_MASK_VALUE_NV                                         = 0x8E52
const GL_PRESENT_TIME_NV                                              = 0x8E2A
const GL_TESS_CONTROL_PROGRAM_NV                                      = 0x891E
const GL_ALL_COMPLETED_NV                                             = 0x84F2
const GL_GLYPH_HAS_KERNING_NV                                         = 0x100
const GL_MAX_PROGRAM_PARAMETER_BUFFER_BINDINGS_NV                     = 0x8DA0
const GL_PATH_STENCIL_VALUE_MASK_NV                                   = 0x90B9
const GL_CONSTANT_COLOR0_NV                                           = 0x852A
const GL_PATH_ERROR_POSITION_NV                                       = 0x90AB
const GL_VERTEX_ATTRIB_ARRAY1_NV                                      = 0x8651
const GL_MAX_SHADER_BUFFER_ADDRESS_NV                                 = 0x8F35
const GL_FENCE_CONDITION_NV                                           = 0x84F4
const GL_VERTEX_PROGRAM_TWO_SIDE_NV                                   = 0x8643
const GL_FOG_DISTANCE_MODE_NV                                         = 0x855A
const GL_BOUNDING_BOX_NV                                              = 0x908D
const GL_FLOAT_CLEAR_COLOR_VALUE_NV                                   = 0x888D
const GL_TRACK_MATRIX_NV                                              = 0x8648
const GL_DSDT8_NV                                                     = 0x8709
const GL_IDENTITY_NV                                                  = 0x862A
const GL_WRITE_PIXEL_DATA_RANGE_POINTER_NV                            = 0x887C
const GL_MAX_PROGRAM_RESULT_COMPONENTS_NV                             = 0x8909
const GL_USE_MISSING_GLYPH_NV                                         = 0x90AA
const GL_VIDEO_CAPTURE_FRAME_WIDTH_NV                                 = 0x9038
const GL_MAX_PROGRAM_LOOP_DEPTH_NV                                    = 0x88F7
const GL_UNSIGNED_INT8_VEC2_NV                                        = 0x8FED
const GL_MAP_TESSELLATION_NV                                          = 0x86C2
const GL_OFFSET_TEXTURE_RECTANGLE_SCALE_NV                            = 0x864D
const GL_NORMAL_ARRAY_LENGTH_NV                                       = 0x8F2C
const GL_UNSIGNED_INT_S8_S8_8_8_NV                                    = 0x86DA
const GL_PER_STAGE_CONSTANTS_NV                                       = 0x8535
const GL_FLOAT_RGBA_NV                                                = 0x8883
const GL_TRANSPOSE_PROJECTIVE_2D_NV                                   = 0x9097
const GL_EVAL_VERTEX_ATTRIB0_NV                                       = 0x86C6
const GL_OPERAND3_ALPHA_NV                                            = 0x859B
const GL_MAGNITUDE_BIAS_NV                                            = 0x8718
const GL_MAP1_VERTEX_ATTRIB6_4_NV                                     = 0x8666
const GL_VERTEX_ATTRIB_ARRAY12_NV                                     = 0x865C
const GL_PREVIOUS_TEXTURE_INPUT_NV                                    = 0x86E4
const GL_INDEX_ARRAY_ADDRESS_NV                                       = 0x8F24
const GL_VERTEX_ATTRIB_ARRAY6_NV                                      = 0x8656
const GL_GLYPH_WIDTH_BIT_NV                                           = 0x01
const GL_DOT_PRODUCT_TEXTURE_CUBE_MAP_NV                              = 0x86F0
const GL_FONT_UNDERLINE_POSITION_NV                                   = 0x04000000
const GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS_EXT                     = 0x8DA8
const GL_MAP_ATTRIB_U_ORDER_NV                                        = 0x86C3
const GL_MAP2_VERTEX_ATTRIB7_4_NV                                     = 0x8677
const GL_CURRENT_TIME_NV                                              = 0x8E28
const GL_COMBINER_AB_DOT_PRODUCT_NV                                   = 0x8545
const GL_PASS_THROUGH_NV                                              = 0x86E6
const GL_INVERSE_NV                                                   = 0x862B
const GL_MAP1_VERTEX_ATTRIB10_4_NV                                    = 0x866A
const GL_OFFSET_PROJECTIVE_TEXTURE_2D_NV                              = 0x8850
const GL_TEXTURE_RECTANGLE_NV                                         = 0x84F5
const GL_VERTEX_ATTRIB_ARRAY14_NV                                     = 0x865E
const GL_DOT_PRODUCT_TEXTURE_2D_NV                                    = 0x86EE
const GL_VIDEO_BUFFER_BINDING_NV                                      = 0x9021
const GL_PATH_FILL_BOUNDING_BOX_NV                                    = 0x90A1
const GL_MAP1_VERTEX_ATTRIB15_4_NV                                    = 0x866F
const GL_MAP1_VERTEX_ATTRIB5_4_NV                                     = 0x8665
const GL_COMBINER_MUX_SUM_NV                                          = 0x8547
const GL_CURRENT_ATTRIB_NV                                            = 0x8626
const GL_MAX_GENERAL_COMBINERS_NV                                     = 0x854D
const GL_FIELD_UPPER_NV                                               = 0x9022
const GL_FAILURE_NV                                                   = 0x9030
const GL_DOT_PRODUCT_NV                                               = 0x86EC
const GL_TEXTURE_HI_SIZE_NV                                           = 0x871B
const GL_CIRCULAR_CW_ARC_TO_NV                                        = 0xFA
const GL_GLYPH_VERTICAL_BEARING_ADVANCE_BIT_NV                        = 0x80
const GL_INT64_VEC4_NV                                                = 0x8FEB
const GL_VERTEX_PROGRAM_PARAMETER_BUFFER_NV                           = 0x8DA2
const GL_MATRIX4_NV                                                   = 0x8634
const GL_TRANSPOSE_AFFINE_3D_NV                                       = 0x9098
const GL_SECONDARY_COLOR_NV                                           = 0x852D
const GL_MAP2_VERTEX_ATTRIB6_4_NV                                     = 0x8676
const GL_MAX_PROGRAM_SUBROUTINE_NUM_NV                                = 0x8F45
const GL_DEPTH_COMPONENT32F_NV                                        = 0x8DAB
const GL_PATH_INITIAL_END_CAP_NV                                      = 0x9077
const GL_COMBINER4_NV                                                 = 0x8554
const GL_COMBINER_BIAS_NV                                             = 0x8549
const GL_READ_WRITE                                                   = 0x88BA
const GL_SECONDARY_COLOR_ARRAY_ADDRESS_NV                             = 0x8F27
const GL_DSDT_NV                                                      = 0x86F5
const GL_EVAL_VERTEX_ATTRIB8_NV                                       = 0x86CE
const GL_OFFSET_HILO_PROJECTIVE_TEXTURE_2D_NV                         = 0x8856
const GL_DOT_PRODUCT_TEXTURE_RECTANGLE_NV                             = 0x864E
const GL_VARIABLE_G_NV                                                = 0x8529
const GL_TRANSFORM_FEEDBACK_BUFFER_BINDING_NV                         = 0x8C8F
const GL_TRANSFORM_FEEDBACK_BINDING_NV                                = 0x8E25
const GL_MAX_TEXTURE_IMAGE_UNITS_NV                                   = 0x8872
const GL_COMBINER_INPUT_NV                                            = 0x8542
const GL_FONT_HAS_KERNING_NV                                          = 0x10000000
const GL_EVAL_VERTEX_ATTRIB11_NV                                      = 0x86D1
const GL_Z6Y10Z6CB10Z6A10Z6Y10Z6CR10Z6A10_4224_NV                     = 0x9034
const GL_MAX_PROGRAM_GENERIC_ATTRIBS_NV                               = 0x8DA5
const GL_VIDEO_CAPTURE_FIELD_UPPER_HEIGHT_NV                          = 0x903A
const GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS_NV             = 0x8C8A
const GL_UNSIGNED_INT16_VEC3_NV                                       = 0x8FF2
const GL_GLYPH_VERTICAL_BEARING_Y_BIT_NV                              = 0x40
const GL_SCALE_BY_FOUR_NV                                             = 0x853F
const GL_GLYPH_VERTICAL_BEARING_X_BIT_NV                              = 0x20
const GL_READ_PIXEL_DATA_RANGE_NV                                     = 0x8879
const GL_HILO_NV                                                      = 0x86F4
const GL_GLYPH_HORIZONTAL_BEARING_Y_BIT_NV                            = 0x08
const GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS_NV                = 0x8C80
const GL_CONVEX_HULL_NV                                               = 0x908B
const GL_GLYPH_HORIZONTAL_BEARING_ADVANCE_BIT_NV                      = 0x10
const GL_GLYPH_HEIGHT_BIT_NV                                          = 0x02
const GL_MAX_RATIONAL_EVAL_ORDER_NV                                   = 0x86D7
const GL_ELEMENT_ARRAY_ADDRESS_NV                                     = 0x8F29
const GL_NUM_GENERAL_COMBINERS_NV                                     = 0x854E
const GL_VIDEO_CAPTURE_FRAME_HEIGHT_NV                                = 0x9039
const GL_PATH_TERMINAL_END_CAP_NV                                     = 0x9078
const GL_LAYER_NV                                                     = 0x8DAA
const GL_CLIP_DISTANCE_NV                                             = 0x8C7A
const GL_PATCHES                                                      = 0x000E
const GL_PROGRAM_TARGET_NV                                            = 0x8646
const GL_MAP2_VERTEX_ATTRIB1_4_NV                                     = 0x8671
const GL_SKIP_COMPONENTS4_NV                                          = -3
const GL_VIBRANCE_BIAS_NV                                             = 0x8719
const GL_MAP1_VERTEX_ATTRIB7_4_NV                                     = 0x8667
const GL_UNSIGNED_INT_8_8_S8_S8_REV_NV                                = 0x86DB
const GL_SIGNED_NEGATE_NV                                             = 0x853D
const GL_EVAL_VERTEX_ATTRIB3_NV                                       = 0x86C9
const GL_PATH_OBJECT_BOUNDING_BOX_NV                                  = 0x908A
const GL_QUERY_WAIT_NV                                                = 0x8E13
const GL_VERTEX_ATTRIB_ARRAY15_NV                                     = 0x865F
const GL_PARTIAL_SUCCESS_NV                                           = 0x902E
const GL_HORIZONTAL_LINE_TO_NV                                        = 0x06
const GL_EVAL_VERTEX_ATTRIB6_NV                                       = 0x86CC
const GL_FRAGMENT_PROGRAM_PARAMETER_BUFFER_NV                         = 0x8DA4
const GL_SKIP_COMPONENTS1_NV                                          = -6
const GL_MAP1_VERTEX_ATTRIB2_4_NV                                     = 0x8662
const GL_HILO16_NV                                                    = 0x86F8
const GL_OFFSET_TEXTURE_MATRIX_NV                                     = 0x86E1
const GL_UNSIGNED_INT_24_8_NV                                         = 0x84FA
const GL_TRANSLATE_2D_NV                                              = 0x9090
const GL_LINE_TO_NV                                                   = 0x04
const GL_VERTEX_ATTRIB_ARRAY_LENGTH_NV                                = 0x8F2A
const GL_BIAS_BY_NEGATIVE_ONE_HALF_NV                                 = 0x8541
const GL_MOVE_TO_CONTINUES_NV                                         = 0x90B6
const GL_COLOR_ARRAY_ADDRESS_NV                                       = 0x8F23
const GL_EVAL_VERTEX_ATTRIB14_NV                                      = 0x86D4
const GL_NUM_FILL_STREAMS_NV                                          = 0x8E29
const GL_DEPENDENT_GB_TEXTURE_2D_NV                                   = 0x86EA
const GL_MAX_FRAGMENT_INTERPOLATION_OFFSET_NV                         = 0x8E5C
const GL_AFFINE_3D_NV                                                 = 0x9094
const GL_LO_BIAS_NV                                                   = 0x8715
const GL_VERTEX_PROGRAM_NV                                            = 0x8620
const GL_TRIANGULAR_NV                                                = 0x90A5
const GL_PATH_COVER_DEPTH_FUNC_NV                                     = 0x90BF
const GL_ROUND_NV                                                     = 0x90A4
const GL_RELATIVE_SMALL_CW_ARC_TO_NV                                  = 0x15
const GL_PATH_DASH_ARRAY_COUNT_NV                                     = 0x909F
const GL_MIN_FRAGMENT_INTERPOLATION_OFFSET_NV                         = 0x8E5B
const GL_UTF16_NV                                                     = 0x909B
const GL_FONT_ASCENDER_NV                                             = 0x00200000
const GL_TEXTURE_DS_SIZE_NV                                           = 0x871D
const GL_DOT_PRODUCT_PASS_THROUGH_NV                                  = 0x885B
const GL_MAX_TRACK_MATRIX_STACK_DEPTH_NV                              = 0x862E
const GL_MAX_MAP_TESSELLATION_NV                                      = 0x86D6
const GL_WRITE_PIXEL_DATA_RANGE_LENGTH_NV                             = 0x887A
const GL_BOLD_BIT_NV                                                  = 0x01
const GL_EYE_PLANE_ABSOLUTE_NV                                        = 0x855C
const GL_TEXTURE_COORD_ARRAY_LENGTH_NV                                = 0x8F2F
const GL_FONT_UNITS_PER_EM_NV                                         = 0x00100000
const GL_MAX_SHININESS_NV                                             = 0x8504
const GL_EMBOSS_CONSTANT_NV                                           = 0x855E
const GL_NORMAL_ARRAY_ADDRESS_NV                                      = 0x8F22
const GL_SMALL_CW_ARC_TO_NV                                           = 0x14
const GL_EVAL_VERTEX_ATTRIB7_NV                                       = 0x86CD
const GL_SCALE_BY_ONE_HALF_NV                                         = 0x8540
const GL_FLOAT16_VEC2_NV                                              = 0x8FF9
const GL_SIGNED_HILO8_NV                                              = 0x885F
const GL_DUP_LAST_CUBIC_CURVE_TO_NV                                   = 0xF4
const GL_SMOOTH_CUBIC_CURVE_TO_NV                                     = 0x10
const GL_MOVE_TO_RESETS_NV                                            = 0x90B5
const GL_MAX_VERTEX_ARRAY_RANGE_ELEMENT_NV                            = 0x8520
const GL_MAP2_VERTEX_ATTRIB5_4_NV                                     = 0x8675
const GL_RENDERBUFFER_COLOR_SAMPLES_NV                                = 0x8E10
const GL_DEPTH_CLAMP_NV                                               = 0x864F
const GL_ELEMENT_ARRAY_UNIFIED_NV                                     = 0x8F1F
const GL_COMBINER_SCALE_NV                                            = 0x8548
const GL_VARIABLE_C_NV                                                = 0x8525
const GL_OFFSET_PROJECTIVE_TEXTURE_2D_SCALE_NV                        = 0x8851
const GL_SIGNED_HILO16_NV                                             = 0x86FA
const GL_EMBOSS_LIGHT_NV                                              = 0x855D
const GL_MAP2_VERTEX_ATTRIB14_4_NV                                    = 0x867E
const GL_ADJACENT_PAIRS_NV                                            = 0x90AE
const GL_TEXTURE_DT_SIZE_NV                                           = 0x871E
const GL_TEXTURE_COORD_NV                                             = 0x8C79
const GL_UNSIGNED_INT64_VEC4_NV                                       = 0x8FF7
const GL_PROGRAM_RESIDENT_NV                                          = 0x8647
const GL_FLOAT_R_NV                                                   = 0x8880
const GL_FLOAT_RGBA16_NV                                              = 0x888A
const GL_TEXTURE_COVERAGE_SAMPLES_NV                                  = 0x9045
const GL_EVAL_VERTEX_ATTRIB10_NV                                      = 0x86D0
const GL_SIGNED_LUMINANCE8_ALPHA8_NV                                  = 0x8704
const GL_PATH_DASH_OFFSET_RESET_NV                                    = 0x90B4
const GL_TRANSFORM_FEEDBACK_BUFFER_SIZE_NV                            = 0x8C85
const GL_MAP1_VERTEX_ATTRIB11_4_NV                                    = 0x866B
const GL_FOG_COORD_ARRAY_ADDRESS_NV                                   = 0x8F28
const GL_MAP2_VERTEX_ATTRIB13_4_NV                                    = 0x867D
const GL_PATH_CLIENT_LENGTH_NV                                        = 0x907F
const GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN_NV                     = 0x8C88
const GL_DSDT8_MAG8_INTENSITY8_NV                                     = 0x870B
const GL_VERTEX_ATTRIB_ARRAY2_NV                                      = 0x8652
const GL_DS_SCALE_NV                                                  = 0x8710
const GL_OFFSET_HILO_TEXTURE_RECTANGLE_NV                             = 0x8855
const GL_FONT_DESCENDER_NV                                            = 0x00400000
const GL_REFLECTION_MAP_NV                                            = 0x8512
const GL_PATH_FOG_GEN_MODE_NV                                         = 0x90AC
const GL_VIDEO_CAPTURE_FIELD_LOWER_HEIGHT_NV                          = 0x903B
const GL_FRAGMENT_PROGRAM_BINDING_NV                                  = 0x8873
const GL_SIGNED_RGB_NV                                                = 0x86FE
const GL_RELATIVE_LARGE_CW_ARC_TO_NV                                  = 0x19
const GL_SIGNED_HILO_NV                                               = 0x86F9
const GL_SIGNED_LUMINANCE8_NV                                         = 0x8702
const GL_VERTEX_ID_NV                                                 = 0x8C7B
const GL_EYE_RADIAL_NV                                                = 0x855B
const GL_SIGNED_INTENSITY_NV                                          = 0x8707
const GL_INTERLEAVED_ATTRIBS_NV                                       = 0x8C8C
const GL_PATH_STROKE_BOUND_NV                                         = 0x9086
const GL_COMBINER6_NV                                                 = 0x8556
const GL_TRANSFORM_FEEDBACK_RECORD_NV                                 = 0x8C86
const GL_DSDT_MAG_INTENSITY_NV                                        = 0x86DC
const GL_VERTEX_ATTRIB_ARRAY10_NV                                     = 0x865A
const GL_SOURCE3_ALPHA_NV                                             = 0x858B
const GL_READ_PIXEL_DATA_RANGE_LENGTH_NV                              = 0x887B
const GL_VERTEX_ATTRIB_ARRAY0_NV                                      = 0x8650
const GL_LARGE_CW_ARC_TO_NV                                           = 0x18
const GL_SPARE0_PLUS_SECONDARY_COLOR_NV                               = 0x8532
const GL_UNSIGNED_INT16_VEC4_NV                                       = 0x8FF3
const GL_RASTERIZER_DISCARD_NV                                        = 0x8C89
const GL_UNSIGNED_INT16_VEC2_NV                                       = 0x8FF1
const GL_UNSIGNED_IDENTITY_NV                                         = 0x8536
const GL_BACK_SECONDARY_COLOR_NV                                      = 0x8C78
const GL_OFFSET_PROJECTIVE_TEXTURE_RECTANGLE_NV                       = 0x8852
const GL_FLOAT_RGBA32_NV                                              = 0x888B
const GL_INT16_VEC4_NV                                                = 0x8FE7
const GL_FLOAT_RG32_NV                                                = 0x8887
const GL_PATH_FORMAT_PS_NV                                            = 0x9071
const GL_UNSIGNED_INT8_VEC4_NV                                        = 0x8FEF
const GL_PATH_STROKE_BOUNDING_BOX_NV                                  = 0x90A2
const GL_TEXTURE_LO_SIZE_NV                                           = 0x871C
const GL_TRANSLATE_3D_NV                                              = 0x9091
const GL_DS_BIAS_NV                                                   = 0x8716
const GL_MAP2_VERTEX_ATTRIB3_4_NV                                     = 0x8673
const GL_SIGNED_ALPHA_NV                                              = 0x8705
const GL_TESS_CONTROL_PROGRAM_PARAMETER_BUFFER_NV                     = 0x8C74
const GL_PATH_DASH_CAPS_NV                                            = 0x907B
const GL_MAX_TEXTURE_COORDS_NV                                        = 0x8871
const GL_RESTART_PATH_NV                                              = 0xF0
const GL_DRAW_INDIRECT_ADDRESS_NV                                     = 0x8F41
const GL_CURRENT_MATRIX_STACK_DEPTH_NV                                = 0x8640
const GL_MATRIX7_NV                                                   = 0x8637
const GL_MAP1_VERTEX_ATTRIB12_4_NV                                    = 0x866C
const GL_BACK_PRIMARY_COLOR_NV                                        = 0x8C77
const GL_PIXEL_COUNT_NV                                               = 0x8866
const GL_TEXTURE_COLOR_SAMPLES_NV                                     = 0x9046
const GL_TRANSPOSE_PROJECTIVE_3D_NV                                   = 0x9099
const GL_SURFACE_MAPPED_NV                                            = 0x8700
const GL_DUP_FIRST_CUBIC_CURVE_TO_NV                                  = 0xF2
const GL_ARC_TO_NV                                                    = 0xFE
const GL_PRIMITIVE_RESTART_NV                                         = 0x8558
const GL_MAP1_VERTEX_ATTRIB13_4_NV                                    = 0x866D
const GL_SOURCE3_RGB_NV                                               = 0x8583
const GL_VERTEX_ARRAY_RANGE_LENGTH_NV                                 = 0x851E
const GL_MODELVIEW_PROJECTION_NV                                      = 0x8629
const GL_Z4Y12Z4CB12Z4Y12Z4CR12_422_NV                                = 0x9035
const GL_ATTRIB_ARRAY_TYPE_NV                                         = 0x8625
const GL_MAX_PROGRAM_PARAMETER_BUFFER_SIZE_NV                         = 0x8DA1
const GL_WRITE_DISCARD_NV                                             = 0x88BE
const GL_NEXT_BUFFER_NV                                               = -2
const GL_MAP2_VERTEX_ATTRIB15_4_NV                                    = 0x867F
const GL_MAX_PROGRAM_LOOP_COUNT_NV                                    = 0x88F8
const GL_DSDT8_MAG8_NV                                                = 0x870A
const GL_VIBRANCE_SCALE_NV                                            = 0x8713
const GL_CIRCULAR_TANGENT_ARC_TO_NV                                   = 0xFC
const GL_INT_SAMPLER_RENDERBUFFER_NV                                  = 0x8E57
const GL_VIDEO_CAPTURE_SURFACE_ORIGIN_NV                              = 0x903C
const GL_TEXTURE_BINDING_RECTANGLE_NV                                 = 0x84F6
const GL_ACCUM_ADJACENT_PAIRS_NV                                      = 0x90AD
const GL_INT16_VEC2_NV                                                = 0x8FE5
const GL_PATH_GEN_MODE_NV                                             = 0x90B0
const GL_COMBINER_COMPONENT_USAGE_NV                                  = 0x8544
const GL_OPERAND3_RGB_NV                                              = 0x8593
const GL_INT8_VEC2_NV                                                 = 0x8FE1
const GL_MAP2_VERTEX_ATTRIB10_4_NV                                    = 0x867A
const GL_ITALIC_BIT_NV                                                = 0x02
const GL_QUADRATIC_CURVE_TO_NV                                        = 0x0A
const GL_MAX_PROGRAM_PATCH_ATTRIBS_NV                                 = 0x86D8
const GL_OFFSET_HILO_TEXTURE_2D_NV                                    = 0x8854
const GL_DEPTH32F_STENCIL8_NV                                         = 0x8DAC
const GL_DOT_PRODUCT_REFLECT_CUBE_MAP_NV                              = 0x86F2
# Export everything!
export glProgramEnvParameterI4uiNV, glMakeBufferNonResidentNV, glPathParameterfvNV, glCoverFillPathNV, glEvalMapsNV, glGetUniformui64vNV, glVertexAttribL1ui64vNV, glUniformui64vNV, glVertexAttribL4i64NV, glProgramNamedParameter4dvNV, glExecuteProgramNV, glUniform3ui64vNV, glBufferAddressRangeNV, glVertexAttrib1svNV, glTextureImage3DMultisampleCoverageNV, glPauseTransformFeedbackNV, glGetVideouivNV, glUniform3ui64NV, glTexCoord4hNV, glPathParameterfNV, glGetPathTexGenfvNV, glUniform4i64NV, glGetOcclusionQueryivNV, glVertexAttribI1iEXT, glProgramEnvParameterI4iNV, glCombinerParameterfvNV, glIndexFormatNV, glGetProgramParameterdvNV, glPathTexGenNV, glPathGlyphRangeNV, glGetPathParameterfvNV, glVertexAttrib4ubvNV, glVertexAttrib4fvNV, glVertexAttribI1uiEXT, glVertexAttribI4uiEXT, glVertexAttrib3hNV, glSecondaryColorFormatNV, glGetPathParameterivNV, glBindBufferBaseNV, glGetVideoi64vNV, glVertexAttribL3i64NV, glMultiTexCoord2hvNV, glVertexAttrib4svNV, glProgramUniformui64vNV, glVertexAttribI4svEXT, glGetProgramEnvParameterIivNV, glEndConditionalRenderNV, glStencilFillPathNV, glVertexAttribIPointerEXT, glCoverStrokePathNV, glPathGlyphsNV, glVertex2hvNV, glGetIntegerui64vNV, glVertexAttrib2sNV, glIsOcclusionQueryNV, glMapParameterivNV, glGetProgramNamedParameterdvNV, glEndTransformFeedbackNV, glVDPAUUnmapSurfacesNV, glVDPAUInitNV, glIsTransformFeedbackNV, glVertexAttrib3sNV, glProgramUniform1i64NV, glCombinerParameterfNV, glGetProgramSubroutineParameteruivNV, glProgramUniform3i64vNV, glVertexAttribI2uiEXT, glDeletePathsNV, glProgramUniform3ui64NV, glVertexAttribI3iEXT, glGenTransformFeedbacksNV, glProgramUniform1ui64vNV, glFinalCombinerInputNV, glUniform3i64vNV, glCombinerStageParameterfvNV, glVertexAttribI4ivEXT, glVertexAttribL3ui64NV, glVertexWeighthNV, glGetPathMetricsNV, glVertexAttribI3ivEXT, glTexRenderbufferNV, glBindTransformFeedbackNV, glVDPAUGetSurfaceivNV, glTexCoord2hvNV, glGetVertexAttribivNV, glVertexAttribL2i64vNV, glMakeImageHandleResidentNV, glGetIntegerui64i_vNV, glUniform3i64NV, glGetCombinerInputParameterivNV, glGetTextureHandleNV, glBeginConditionalRenderNV, glBeginOcclusionQueryNV, glPointAlongPathNV, glBeginTransformFeedbackNV, glGetCombinerStageParameterfvNV, glVDPAURegisterOutputSurfaceNV, glVDPAUSurfaceAccessNV, glMultiTexCoord4hvNV, glVertexAttribs2hvNV, glProgramParameter4dvNV, glProgramParameter4fvNV, glGetVertexAttribdvNV, glGetBufferParameterui64vNV, glActiveVaryingNV, glVertexAttrib4ubNV, glFramebufferTextureFaceEXT, glMakeTextureHandleResidentNV, glGetPathColorGenivNV, glResumeTransformFeedbackNV, glGetVertexAttribfvNV, glUniformHandleui64vNV, glIsImageHandleResidentNV, glProgramLocalParametersI4uivNV, glProgramUniform4i64vNV, glDrawTransformFeedbackNV, glSecondaryColor3hNV, glPointParameteriNV, glGetMapControlPointsNV, glGetActiveVaryingNV, glColorFormatNV, glStencilFillPathInstancedNV, glPathCoordsNV, glUniform1ui64NV, glPresentFrameKeyedNV, glVDPAUFiniNV, glVertexAttribI4usvEXT, glVDPAUMapSurfacesNV, glVertexAttribs2svNV, glCopyPathNV, glSampleMaskIndexedNV, glMakeImageHandleNonResidentNV, glUniformHandleui64NV, glVertexAttrib4sNV, glFlushPixelDataRangeNV, glVertexAttribI2ivEXT, glGetPathDashArrayNV, glTexCoord4hvNV, glMultiTexCoord2hNV, glVDPAUIsSurfaceNV, glDeleteFencesNV, glVertexAttrib2hNV, glPathStencilDepthOffsetNV, glVertexAttribI1uivEXT, glGetMapParameterivNV, glVideoCaptureStreamParameterfvNV, glGetMapAttribParameterivNV, glGetMultisamplefvNV, glProgramLocalParameterI4uivNV, glUniform4ui64vNV, glPathSubCommandsNV, glProgramSubroutineParametersuivNV, glVertexAttribIFormatNV, glVertexAttrib2dvNV, glIsTextureHandleResidentNV, glVertex3hNV, glTexCoord3hvNV, glGetProgramStringNV, glVertexAttrib3svNV, glRenderbufferStorageMultisampleCoverageNV, glVertexAttribI3uiEXT, glGetVertexAttribIuivEXT, glVertexAttribs4hvNV, glVertexAttrib4hNV, glGetVideoCaptureStreamivNV, glVertexWeighthvNV, glGetTrackMatrixivNV, glTexCoord3hNV, glGetTextureSamplerHandleNV, glMakeNamedBufferNonResidentNV, glTexCoord1hNV, glGetOcclusionQueryuivNV, glVertexAttribL1ui64NV, glPathFogGenNV, glIsPointInFillPathNV, glVertexAttribL2ui64NV, glPixelDataRangeNV, glGetMapParameterfvNV, glGenFencesNV, glGetPathLengthNV, glGetVertexAttribLui64vNV, glVertexAttribI4uivEXT, glProgramUniform2ui64vNV, glVertexAttrib4fNV, glProgramParameters4fvNV, glCombinerOutputNV, glVertexAttrib4dNV, glFlushVertexArrayRangeNV, glGetProgramEnvParameterIuivNV, glProgramUniformHandleui64NV, glProgramEnvParametersI4ivNV, glPathParameterivNV, glUniform4i64vNV, glTransformFeedbackStreamAttribsNV, glVertexArrayRangeNV, glVertexAttrib2svNV, glMultiTexCoord3hNV, glVertexAttrib4dvNV, glVertexAttrib1hNV, glVertex3hvNV, glSecondaryColor3hvNV, glProgramParameter4fNV, glBindBufferOffsetNV, glGetProgramParameterfvNV, glGetVideoCaptureStreamfvNV, glProgramLocalParametersI4ivNV, glVertexAttribs3hvNV, glGetVaryingLocationNV, glUniform4ui64NV, glGetNamedBufferParameterui64vNV, glVertexAttribs4dvNV, glUniform2ui64vNV, glGetProgramivNV, glTexCoord1hvNV, glVertexAttribL3i64vNV, glVertexAttribs1hvNV, glDeleteProgramsNV, glVertexAttribI4iEXT, glVertexAttrib1fNV, glVertexAttribs1fvNV, glProgramLocalParameterI4iNV, glVideoCaptureNV, glProgramParameter4dNV, glVertexFormatNV, glVertexAttribI1ivEXT, glProgramParameters4dvNV, glVertexAttribL4ui64vNV, glGetUniformi64vNV, glProgramUniform4i64NV, glVDPAURegisterVideoSurfaceNV, glUniform1i64vNV, glMultiTexCoord4hNV, glProgramLocalParameterI4uiNV, glColor4hvNV, glGetFinalCombinerInputParameterivNV, glProgramBufferParametersIivNV, glGetPathColorGenfvNV, glGenProgramsNV, glGetCombinerOutputParameterfvNV, glMakeTextureHandleNonResidentNV, glColor3hNV, glVertexAttrib3hvNV, glCopyImageSubDataNV, glGetImageHandleNV, glProgramBufferParametersIuivNV, glVertexAttribs4fvNV, glTextureImage2DMultisampleCoverageNV, glBindVideoCaptureStreamTextureNV, glFogCoordFormatNV, glTexImage3DMultisampleCoverageNV, glVertexAttribL3ui64vNV, glEdgeFlagFormatNV, glVertexAttribI2iEXT, glPrimitiveRestartIndexNV, glClearDepthdNV, glUniform1i64NV, glVertexAttrib3fNV, glProgramNamedParameter4fNV, glGenPathsNV, glBindVideoCaptureStreamBufferNV, glVertexAttribs3svNV, glVertexAttribs2fvNV, glProgramEnvParametersI4uivNV, glEndVideoCaptureNV, glPathDashArrayNV, glLoadProgramNV, glUniform1ui64vNV, glProgramUniform3ui64vNV, glMakeNamedBufferResidentNV, glProgramUniform4ui64vNV, glVertexAttrib1hvNV, glTexImage2DMultisampleCoverageNV, glCoverFillPathInstancedNV, glBindProgramNV, glGetMapAttribParameterfvNV, glGetFenceivNV, glPathStringNV, glCoverStrokePathInstancedNV, glCombinerParameterivNV, glVertexAttrib1dNV, glVertexAttrib2fNV, glVertexAttrib1fvNV, glVertexAttrib2fvNV, glGetVideoCaptureStreamdvNV, glColor3hvNV, glProgramNamedParameter4dNV, glPresentFrameDualFillNV, glTextureBarrierNV, glVertexAttribI3uivEXT, glProgramVertexLimitNV, glIsNamedBufferResidentNV, glProgramUniform1i64vNV, glProgramLocalParameterI4ivNV, glProgramUniform2i64vNV, glVideoCaptureStreamParameterivNV, glPointParameterivNV, glGetVideoui64vNV, glVertexAttribL4ui64NV, glFogCoordhvNV, glDeleteOcclusionQueriesNV, glGetVertexAttribPointervNV, glGetProgramNamedParameterfvNV, glVertexAttribLFormatNV, glGetPathSpacingNV, glVertexAttrib1sNV, glVertexAttribI2uivEXT, glPathCommandsNV, glVertexAttrib2hvNV, glFinishFenceNV, glFogCoordhNV, glGetCombinerOutputParameterivNV, glVertexAttribL1i64NV, glNormal3hNV, glVertexAttrib3dvNV, glIsFenceNV, glPathSubCoordsNV, glTrackMatrixNV, glVertexAttrib3fvNV, glVertexAttrib2dNV, glUniformui64NV, glUniform2i64vNV, glGetVertexAttribIivEXT, glVertexAttribI4ubvEXT, glStencilStrokePathInstancedNV, glVertex4hNV, glMapParameterfvNV, glNormal3hvNV, glProgramNamedParameter4fvNV, glGetProgramLocalParameterIuivNV, glProgramBufferParametersfvNV, glVertexAttribL2i64NV, glGetVertexAttribLi64vNV, glTexCoordFormatNV, glProgramUniformHandleui64vNV, glVertexAttribL2ui64vNV, glGetVideoCaptureivNV, glProgramUniform2i64NV, glCombinerInputNV, glProgramEnvParameterI4uivNV, glPathParameteriNV, glAreProgramsResidentNV, glVertexAttribs4ubvNV, glTransformFeedbackVaryingsNV, glVertexAttrib3dNV, glWeightPathsNV, glUniform2ui64NV, glTransformFeedbackAttribsNV, glMapControlPointsNV, glVertexAttribs1dvNV, glBeginVideoCaptureNV, glVDPAUUnregisterSurfaceNV, glVertexAttribs4svNV, glMakeBufferResidentNV, glProgramUniform1ui64NV, glProgramEnvParameterI4ivNV, glMultiTexCoord3hvNV, glMultiTexCoord1hNV, glGetVideoivNV, glProgramUniform3i64NV, glVideoCaptureStreamParameterdvNV, glGetCombinerInputParameterfvNV, glEndOcclusionQueryNV, glTransformPathNV, glGetProgramLocalParameterIivNV, glUniform2i64NV, glVertex4hvNV, glTextureImage2DMultisampleNV, glVertexAttribL4i64vNV, glProgramUniformui64NV, glGenOcclusionQueriesNV, glTexCoord2hNV, glVertexAttribs3fvNV, glVertexAttribs3dvNV, glNormalFormatNV, glIsPathNV, glCombinerParameteriNV, glProgramUniform2ui64NV, glGetPathCoordsNV, glTextureImage3DMultisampleNV, glVertexAttribL1i64vNV, glGetTransformFeedbackVaryingNV, glGetPathTexGenivNV, glPathColorGenNV, glGetPathMetricRangeNV, glVertexAttribPointerNV, glStencilStrokePathNV, glFramebufferTextureLayerEXT, glBindBufferRangeNV, glSetFenceNV, glDeleteTransformFeedbacksNV, glPathStencilFuncNV, glVertexAttribs2dvNV, glVertexAttribs1svNV, glDepthRangedNV, glDepthBoundsdNV, glVertexAttrib1dvNV, glGetPathCommandsNV, glColor4hNV, glVertexAttrib4hvNV, glPathCoverDepthFuncNV, glMultiTexCoord1hvNV, glRequestResidentProgramsNV, glVertexAttribI4bvEXT, glIsPointInStrokePathNV, glIsBufferResidentNV, glInterpolatePathsNV, glTestFenceNV, glFramebufferTextureEXT, glIsProgramNV, glProgramUniform4ui64NV, glGetFinalCombinerInputParameterfvNV, glPrimitiveRestartNV, glVertexAttribFormatNV, glVertex2hNV, GL_DEPENDENT_RGB_TEXTURE_CUBE_MAP_NV, GL_RENDERBUFFER_COVERAGE_SAMPLES_NV, GL_EVAL_VERTEX_ATTRIB1_NV, GL_NORMAL_MAP_NV, GL_TRANSPOSE_NV, GL_VIDEO_BUFFER_NV, GL_FLOAT_32_UNSIGNED_INT_24_8_REV_NV, GL_MATRIX1_NV, GL_MAX_MULTISAMPLE_COVERAGE_MODES_NV, GL_COMBINER_CD_OUTPUT_NV, GL_MATRIX6_NV, GL_OFFSET_HILO_PROJECTIVE_TEXTURE_RECTANGLE_NV, GL_DOT_PRODUCT_AFFINE_DEPTH_REPLACE_NV, GL_EVAL_VERTEX_ATTRIB15_NV, GL_YCBYCR8_422_NV, GL_FONT_Y_MAX_BOUNDS_NV, GL_EVAL_VERTEX_ATTRIB9_NV, GL_E_TIMES_F_NV, GL_PATH_COMMAND_COUNT_NV, GL_STANDARD_FONT_NAME_NV, GL_RELATIVE_ARC_TO_NV, GL_INT64_VEC2_NV, GL_PIXEL_COUNTER_BITS_NV, GL_CURRENT_OCCLUSION_QUERY_ID_NV, GL_FILE_NAME_NV, GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS_ARB, GL_DRAW_INDIRECT_LENGTH_NV, GL_DEPENDENT_RGB_TEXTURE_3D_NV, GL_HALF_BIAS_NORMAL_NV, GL_PATH_END_CAPS_NV, GL_POINT_SPRITE_R_MODE_NV, GL_TRANSLATE_X_NV, GL_MAP2_VERTEX_ATTRIB2_4_NV, GL_EXPAND_NEGATE_NV, GL_PROGRAM_PARAMETER_NV, GL_COMBINER_SUM_OUTPUT_NV, GL_MAP2_VERTEX_ATTRIB9_4_NV, GL_MATRIX2_NV, GL_DISCARD_NV, GL_RELATIVE_QUADRATIC_CURVE_TO_NV, GL_UNSIGNED_INVERT_NV, GL_EVAL_TRIANGULAR_2D_NV, GL_FRAME_NV, GL_PIXEL_COUNT_AVAILABLE_NV, GL_MATRIX3_NV, GL_ATTRIB_ARRAY_SIZE_NV, GL_COMBINE4_NV, GL_SIGNED_RGBA_NV, GL_UNSIGNED_INT8_VEC3_NV, GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET_NV, GL_EVAL_FRACTIONAL_TESSELLATION_NV, GL_PROJECTIVE_3D_NV, GL_GEOMETRY_VERTICES_OUT_EXT, GL_INT64_VEC3_NV, GL_VIDEO_COLOR_CONVERSION_MAX_NV, GL_VERTEX_ATTRIB_ARRAY_UNIFIED_NV, GL_PROGRAM_ERROR_POSITION_NV, GL_PRIMITIVE_RESTART_INDEX_NV, GL_DEPTH_STENCIL_TO_BGRA_NV, GL_RELATIVE_CUBIC_CURVE_TO_NV, GL_MAX_PROGRAM_IF_DEPTH_NV, GL_MAX_RECTANGLE_TEXTURE_SIZE_NV, GL_RELATIVE_HORIZONTAL_LINE_TO_NV, GL_UNSIGNED_INT64_VEC3_NV, GL_COVERAGE_SAMPLES_NV, GL_MAP_ATTRIB_V_ORDER_NV, GL_FONT_X_MIN_BOUNDS_NV, GL_TEXTURE_RENDERBUFFER_DATA_STORE_BINDING_NV, GL_TRANSFORM_FEEDBACK_BUFFER_ACTIVE_NV, GL_EDGE_FLAG_ARRAY_ADDRESS_NV, GL_FIELD_LOWER_NV, GL_PATH_STROKE_COVER_MODE_NV, GL_COMBINER0_NV, GL_TEXTURE_RENDERBUFFER_NV, GL_BUFFER_GPU_ADDRESS_NV, GL_HALF_BIAS_NEGATE_NV, GL_VERTEX_ATTRIB_ARRAY5_NV, GL_PATH_COORD_COUNT_NV, GL_VERTEX_ARRAY_RANGE_POINTER_NV, GL_MAX_FRAGMENT_PROGRAM_LOCAL_PARAMETERS_NV, GL_TEXTURE1_ARB, GL_MAP2_VERTEX_ATTRIB12_4_NV, GL_DOT_PRODUCT_DIFFUSE_CUBE_MAP_NV, GL_LARGE_CCW_ARC_TO_NV, GL_TEXTURE_UNSIGNED_REMAP_MODE_NV, GL_SIGNED_RGB8_UNSIGNED_ALPHA8_NV, GL_ATTRIB_ARRAY_STRIDE_NV, GL_EVAL_2D_NV, GL_FENCE_STATUS_NV, GL_EVAL_VERTEX_ATTRIB4_NV, GL_RECT_NV, GL_SHADER_GLOBAL_ACCESS_BARRIER_BIT_NV, GL_PROXY_TEXTURE_RECTANGLE_NV, GL_FONT_MAX_ADVANCE_WIDTH_NV, GL_PATH_COMPUTED_LENGTH_NV, GL_TEXTURE_BORDER_VALUES_NV, GL_FOG_COORD_ARRAY_LENGTH_NV, GL_FLOAT_RGB16_NV, GL_HI_SCALE_NV, GL_QUERY_BY_REGION_WAIT_NV, GL_COMBINER_CD_DOT_PRODUCT_NV, GL_MULTISAMPLE_FILTER_HINT_NV, GL_PATH_GEN_COLOR_FORMAT_NV, GL_TRIANGLE_STRIP_ADJACENCY_EXT, GL_VIDEO_CAPTURE_TO_422_SUPPORTED_NV, GL_PATH_GEN_COEFF_NV, GL_SMALL_CCW_ARC_TO_NV, GL_CURRENT_MATRIX_NV, GL_DEPENDENT_AR_TEXTURE_2D_NV, GL_SCALE_BY_TWO_NV, GL_VERTEX_ATTRIB_ARRAY8_NV, GL_TEXTURE_COORD_ARRAY_ADDRESS_NV, GL_OFFSET_TEXTURE_2D_SCALE_NV, GL_FONT_MAX_ADVANCE_HEIGHT_NV, GL_FIRST_TO_REST_NV, GL_TRANSFORM_FEEDBACK_BUFFER_PAUSED_NV, GL_FRAMEBUFFER_ATTACHMENT_LAYERED_EXT, GL_VERTEX_ARRAY_RANGE_WITHOUT_FLUSH_NV, GL_MITER_REVERT_NV, GL_VARIABLE_E_NV, GL_MAX_PROGRAM_GENERIC_RESULTS_NV, GL_PATH_STENCIL_FUNC_NV, GL_LINE_STRIP_ADJACENCY_EXT, GL_PATH_FILL_MASK_NV, GL_GEOMETRY_PROGRAM_PARAMETER_BUFFER_NV, GL_SKIP_COMPONENTS3_NV, GL_MAX_SAMPLE_MASK_WORDS_NV, GL_ELEMENT_ARRAY_LENGTH_NV, GL_SAMPLE_MASK_NV, GL_MAP1_VERTEX_ATTRIB1_4_NV, GL_TEXTURE_SHADER_NV, GL_VERTEX_ATTRIB_ARRAY_ADDRESS_NV, GL_TRANSFORM_FEEDBACK_VARYINGS_NV, GL_PATH_DASH_OFFSET_NV, GL_PRIMITIVES_GENERATED_NV, GL_MAX_PROGRAM_ATTRIB_COMPONENTS_NV, GL_SAMPLE_POSITION_NV, GL_YCBAYCR8A_4224_NV, GL_VERTEX_STATE_PROGRAM_NV, GL_TRIANGLES_ADJACENCY_EXT, GL_PATH_FILL_MODE_NV, GL_PROGRAM_ATTRIB_COMPONENTS_NV, GL_BEVEL_NV, GL_MITER_TRUNCATE_NV, GL_FORCE_BLUE_TO_ONE_NV, GL_SURFACE_REGISTERED_NV, GL_MAP1_VERTEX_ATTRIB9_4_NV, GL_VIDEO_BUFFER_PITCH_NV, GL_TRANSFORM_FEEDBACK_BUFFER_MODE_NV, GL_RGBA_UNSIGNED_DOT_PRODUCT_MAPPING_NV, GL_VERTEX_ATTRIB_ARRAY9_NV, GL_PATH_STROKE_MASK_NV, GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET_NV, GL_EXPAND_NORMAL_NV, GL_DEPTH_STENCIL_TO_RGBA_NV, GL_SKIP_MISSING_GLYPH_NV, GL_COMBINER1_NV, GL_TEXTURE_FLOAT_COMPONENTS_NV, GL_UNSIGNED_INT8_NV, GL_INDEX_ARRAY_LENGTH_NV, GL_MAP1_VERTEX_ATTRIB0_4_NV, GL_VERTEX_ATTRIB_ARRAY13_NV, GL_FRAMEBUFFER_INCOMPLETE_LAYER_COUNT_EXT, GL_PATH_TERMINAL_DASH_CAP_NV, GL_PROGRAM_ERROR_STRING_NV, GL_MAP1_VERTEX_ATTRIB4_4_NV, GL_EVAL_VERTEX_ATTRIB13_NV, GL_TESS_EVALUATION_PROGRAM_PARAMETER_BUFFER_NV, GL_SIGNED_RGB8_NV, GL_DSDT_MAG_VIB_NV, GL_OFFSET_TEXTURE_BIAS_NV, GL_WRITE_ONLY, GL_FONT_X_MAX_BOUNDS_NV, GL_SQUARE_NV, GL_CIRCULAR_CCW_ARC_TO_NV, GL_SPARE0_NV, GL_DOT_PRODUCT_TEXTURE_3D_NV, GL_VIDEO_BUFFER_INTERNAL_FORMAT_NV, GL_DOT_PRODUCT_TEXTURE_1D_NV, GL_PROJECTIVE_2D_NV, GL_NUM_VIDEO_CAPTURE_STREAMS_NV, GL_SMOOTH_QUADRATIC_CURVE_TO_NV, GL_QUERY_NO_WAIT_NV, GL_INT16_VEC3_NV, GL_INT8_NV, GL_MAP2_VERTEX_ATTRIB8_4_NV, GL_FIELDS_NV, GL_UNSIGNED_INT64_VEC2_NV, GL_TRANSFORM_FEEDBACK_NV, GL_MAP2_VERTEX_ATTRIB4_4_NV, GL_UNSIGNED_INT16_NV, GL_RELATIVE_SMALL_CCW_ARC_TO_NV, GL_FLOAT_RGBA_MODE_NV, GL_RELATIVE_LINE_TO_NV, GL_OFFSET_TEXTURE_2D_MATRIX_NV, GL_VARIABLE_D_NV, GL_PRIMARY_COLOR_NV, GL_DEPENDENT_HILO_TEXTURE_2D_NV, GL_HALF_FLOAT_NV, GL_DT_SCALE_NV, GL_CONST_EYE_NV, GL_TRANSPOSE_AFFINE_2D_NV, GL_SIGNED_RGB_UNSIGNED_ALPHA_NV, GL_SPARE1_NV, GL_PROGRAM_LENGTH_NV, GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS_EXT, GL_VERTEX_ATTRIB_ARRAY7_NV, GL_MAX_TRACK_MATRICES_NV, GL_PATH_STENCIL_REF_NV, GL_GPU_ADDRESS_NV, GL_QUERY_BY_REGION_NO_WAIT_NV, GL_TEXTURE_MAG_SIZE_NV, GL_CUBIC_CURVE_TO_NV, GL_CONSTANT_COLOR1_NV, GL_MAX_GEOMETRY_PROGRAM_INVOCATIONS_NV, GL_MAX_SPOT_EXPONENT_NV, GL_RELATIVE_SMOOTH_QUADRATIC_CURVE_TO_NV, GL_READ_PIXEL_DATA_RANGE_POINTER_NV, GL_CULL_MODES_NV, GL_MATRIX5_NV, GL_EVAL_VERTEX_ATTRIB12_NV, GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER_EXT, GL_FRAGMENT_PROGRAM_INTERPOLATION_OFFSET_BITS_NV, GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS_NV, GL_SURFACE_STATE_NV, GL_Z6Y10Z6CB10Z6Y10Z6CR10_422_NV, GL_RELATIVE_SMOOTH_CUBIC_CURVE_TO_NV, GL_COUNT_DOWN_NV, GL_PATH_INITIAL_DASH_CAP_NV, GL_COMBINER3_NV, GL_PATH_GEN_COMPONENTS_NV, GL_TRANSFORM_FEEDBACK_ATTRIBS_NV, GL_Z4Y12Z4CB12Z4CR12_444_NV, GL_MOVE_TO_NV, GL_DOT_PRODUCT_CONST_EYE_REFLECT_CUBE_MAP_NV, GL_POINT_SPRITE_NV, GL_PATH_STROKE_OVERSAMPLE_COUNT_NV, GL_RELATIVE_LARGE_CCW_ARC_TO_NV, GL_LINES_ADJACENCY_EXT, GL_VERTEX_ATTRIB_ARRAY3_NV, GL_PATH_STENCIL_DEPTH_OFFSET_FACTOR_NV, GL_PRIMITIVE_ID_NV, GL_HI_BIAS_NV, GL_VERTEX_ARRAY_RANGE_VALID_NV, GL_COMBINER7_NV, GL_GEOMETRY_PROGRAM_NV, GL_EVAL_VERTEX_ATTRIB5_NV, GL_PROGRAM_POINT_SIZE_EXT, GL_MAP1_VERTEX_ATTRIB8_4_NV, GL_GENERIC_ATTRIB_NV, GL_FLOAT_RGB_NV, GL_MULTISAMPLE_COVERAGE_MODES_NV, GL_EMBOSS_MAP_NV, GL_HILO8_NV, GL_ACTIVE_VARYINGS_NV, GL_VARIABLE_B_NV, GL_DEPTH_STENCIL_NV, GL_TEXTURE0_ARB, GL_SIGNED_IDENTITY_NV, GL_VIDEO_COLOR_CONVERSION_MATRIX_NV, GL_PATH_STROKE_WIDTH_NV, GL_COLOR_SAMPLES_NV, GL_PATH_MITER_LIMIT_NV, GL_COLOR_ARRAY_LENGTH_NV, GL_INVERSE_TRANSPOSE_NV, GL_MAGNITUDE_SCALE_NV, GL_DEPTH_BUFFER_FLOAT_MODE_NV, GL_VIDEO_COLOR_CONVERSION_OFFSET_NV, GL_DSDT_MAG_NV, GL_TRANSFORM_FEEDBACK_BUFFER_START_NV, GL_EVAL_VERTEX_ATTRIB2_NV, GL_VARIABLE_F_NV, GL_PROGRAM_STRING_NV, GL_OFFSET_TEXTURE_RECTANGLE_NV, GL_LO_SCALE_NV, GL_SIGNED_ALPHA8_NV, GL_SKIP_COMPONENTS2_NV, GL_MAP2_VERTEX_ATTRIB0_4_NV, GL_VERTEX_ATTRIB_ARRAY_INTEGER_NV, GL_LAST_VIDEO_CAPTURE_STATUS_NV, GL_DRAW_INDIRECT_UNIFIED_NV, GL_Z4Y12Z4CB12Z4A12Z4Y12Z4CR12Z4A12_4224_NV, GL_FONT_UNDERLINE_THICKNESS_NV, GL_COORD_REPLACE_NV, GL_DOT_PRODUCT_DEPTH_REPLACE_NV, GL_OFFSET_TEXTURE_2D_BIAS_NV, GL_MAP1_VERTEX_ATTRIB3_4_NV, GL_TEXTURE_BINDING_RENDERBUFFER_NV, GL_VERTEX_PROGRAM_POINT_SIZE_NV, GL_COMBINER_AB_OUTPUT_NV, GL_PROGRAM_RESULT_COMPONENTS_NV, GL_FONT_Y_MIN_BOUNDS_NV, GL_COMBINER2_NV, GL_GEOMETRY_INPUT_TYPE_EXT, GL_SEPARATE_ATTRIBS_NV, GL_SIGNED_RGBA8_NV, GL_SUCCESS_NV, GL_RELATIVE_MOVE_TO_NV, GL_WRITE_PIXEL_DATA_RANGE_NV, GL_ACTIVE_VARYING_MAX_LENGTH_NV, GL_COMBINER_MAPPING_NV, GL_SAMPLER_RENDERBUFFER_NV, GL_COUNT_UP_NV, GL_FLOAT16_NV, GL_INT8_VEC4_NV, GL_SYSTEM_FONT_NAME_NV, GL_VERTICAL_LINE_TO_NV, GL_TRACK_MATRIX_TRANSFORM_NV, GL_PATH_FORMAT_SVG_NV, GL_AFFINE_2D_NV, GL_MIN_PROGRAM_TEXEL_OFFSET_NV, GL_CULL_FRAGMENT_NV, GL_VERTEX_ARRAY_LENGTH_NV, GL_UNSIGNED_INT_SAMPLER_RENDERBUFFER_NV, GL_ATTRIB_ARRAY_POINTER_NV, GL_FLOAT_RG_NV, GL_TRANSFORM_FEEDBACK_BUFFER_NV, GL_VERTEX_ARRAY_RANGE_NV, GL_VERTEX_ATTRIB_ARRAY4_NV, GL_PATH_JOIN_STYLE_NV, GL_SHADER_OPERATION_NV, GL_INT8_VEC3_NV, GL_VERTEX_ATTRIB_ARRAY11_NV, GL_FLOAT_R32_NV, GL_MAX_PROGRAM_TEXEL_OFFSET_NV, GL_SECONDARY_COLOR_ARRAY_LENGTH_NV, GL_REGISTER_COMBINERS_NV, GL_FLOAT_RGB32_NV, GL_PATH_STENCIL_DEPTH_OFFSET_UNITS_NV, GL_FONT_HEIGHT_NV, GL_MAP2_VERTEX_ATTRIB11_4_NV, GL_MATRIX0_NV, GL_OFFSET_PROJECTIVE_TEXTURE_RECTANGLE_SCALE_NV, GL_FLOAT16_VEC4_NV, GL_MAX_PROGRAM_SUBROUTINE_PARAMETERS_NV, GL_FRAGMENT_PROGRAM_NV, GL_OFFSET_TEXTURE_2D_NV, GL_PRESENT_DURATION_NV, GL_MAX_PROGRAM_TOTAL_OUTPUT_COMPONENTS_NV, GL_OFFSET_TEXTURE_SCALE_NV, GL_NEXT_VIDEO_CAPTURE_BUFFER_STATUS_NV, GL_DT_BIAS_NV, GL_SHADER_CONSISTENT_NV, GL_TESS_EVALUATION_PROGRAM_NV, GL_CLOSE_PATH_NV, GL_COMBINER5_NV, GL_FLOAT_R16_NV, GL_PATH_SAMPLE_QUALITY_NV, GL_VERTEX_PROGRAM_BINDING_NV, GL_BOUNDING_BOX_OF_BOUNDING_BOXES_NV, GL_VIDEO_COLOR_CONVERSION_MIN_NV, GL_GLYPH_HORIZONTAL_BEARING_X_BIT_NV, GL_EDGE_FLAG_ARRAY_LENGTH_NV, GL_PATH_FILL_COVER_MODE_NV, GL_SIGNED_INTENSITY8_NV, GL_SIGNED_LUMINANCE_NV, GL_SIGNED_LUMINANCE_ALPHA_NV, GL_RELATIVE_VERTICAL_LINE_TO_NV, GL_MAP1_VERTEX_ATTRIB14_4_NV, GL_FLOAT_RG16_NV, GL_GEOMETRY_OUTPUT_TYPE_EXT, GL_VARIABLE_A_NV, GL_UTF8_NV, GL_MAX_PROGRAM_OUTPUT_VERTICES_NV, GL_COLOR_SUM_CLAMP_NV, GL_INT16_NV, GL_TRANSLATE_Y_NV, GL_MULTI_HULLS_NV, GL_FLOAT16_VEC3_NV, GL_VERTEX_ARRAY_ADDRESS_NV, GL_SAMPLE_MASK_VALUE_NV, GL_PRESENT_TIME_NV, GL_TESS_CONTROL_PROGRAM_NV, GL_ALL_COMPLETED_NV, GL_GLYPH_HAS_KERNING_NV, GL_MAX_PROGRAM_PARAMETER_BUFFER_BINDINGS_NV, GL_PATH_STENCIL_VALUE_MASK_NV, GL_CONSTANT_COLOR0_NV, GL_PATH_ERROR_POSITION_NV, GL_VERTEX_ATTRIB_ARRAY1_NV, GL_MAX_SHADER_BUFFER_ADDRESS_NV, GL_FENCE_CONDITION_NV, GL_VERTEX_PROGRAM_TWO_SIDE_NV, GL_FOG_DISTANCE_MODE_NV, GL_BOUNDING_BOX_NV, GL_FLOAT_CLEAR_COLOR_VALUE_NV, GL_TRACK_MATRIX_NV, GL_DSDT8_NV, GL_IDENTITY_NV, GL_WRITE_PIXEL_DATA_RANGE_POINTER_NV, GL_MAX_PROGRAM_RESULT_COMPONENTS_NV, GL_USE_MISSING_GLYPH_NV, GL_VIDEO_CAPTURE_FRAME_WIDTH_NV, GL_MAX_PROGRAM_LOOP_DEPTH_NV, GL_UNSIGNED_INT8_VEC2_NV, GL_MAP_TESSELLATION_NV, GL_OFFSET_TEXTURE_RECTANGLE_SCALE_NV, GL_NORMAL_ARRAY_LENGTH_NV, GL_UNSIGNED_INT_S8_S8_8_8_NV, GL_PER_STAGE_CONSTANTS_NV, GL_FLOAT_RGBA_NV, GL_TRANSPOSE_PROJECTIVE_2D_NV, GL_EVAL_VERTEX_ATTRIB0_NV, GL_OPERAND3_ALPHA_NV, GL_MAGNITUDE_BIAS_NV, GL_MAP1_VERTEX_ATTRIB6_4_NV, GL_VERTEX_ATTRIB_ARRAY12_NV, GL_PREVIOUS_TEXTURE_INPUT_NV, GL_INDEX_ARRAY_ADDRESS_NV, GL_VERTEX_ATTRIB_ARRAY6_NV, GL_GLYPH_WIDTH_BIT_NV, GL_DOT_PRODUCT_TEXTURE_CUBE_MAP_NV, GL_FONT_UNDERLINE_POSITION_NV, GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS_EXT, GL_MAP_ATTRIB_U_ORDER_NV, GL_MAP2_VERTEX_ATTRIB7_4_NV, GL_CURRENT_TIME_NV, GL_COMBINER_AB_DOT_PRODUCT_NV, GL_PASS_THROUGH_NV, GL_INVERSE_NV, GL_MAP1_VERTEX_ATTRIB10_4_NV, GL_OFFSET_PROJECTIVE_TEXTURE_2D_NV, GL_TEXTURE_RECTANGLE_NV, GL_VERTEX_ATTRIB_ARRAY14_NV, GL_DOT_PRODUCT_TEXTURE_2D_NV, GL_VIDEO_BUFFER_BINDING_NV, GL_PATH_FILL_BOUNDING_BOX_NV, GL_MAP1_VERTEX_ATTRIB15_4_NV, GL_MAP1_VERTEX_ATTRIB5_4_NV, GL_COMBINER_MUX_SUM_NV, GL_CURRENT_ATTRIB_NV, GL_MAX_GENERAL_COMBINERS_NV, GL_FIELD_UPPER_NV, GL_FAILURE_NV, GL_DOT_PRODUCT_NV, GL_TEXTURE_HI_SIZE_NV, GL_CIRCULAR_CW_ARC_TO_NV, GL_GLYPH_VERTICAL_BEARING_ADVANCE_BIT_NV, GL_INT64_VEC4_NV, GL_VERTEX_PROGRAM_PARAMETER_BUFFER_NV, GL_MATRIX4_NV, GL_TRANSPOSE_AFFINE_3D_NV, GL_SECONDARY_COLOR_NV, GL_MAP2_VERTEX_ATTRIB6_4_NV, GL_MAX_PROGRAM_SUBROUTINE_NUM_NV, GL_DEPTH_COMPONENT32F_NV, GL_PATH_INITIAL_END_CAP_NV, GL_COMBINER4_NV, GL_COMBINER_BIAS_NV, GL_READ_WRITE, GL_SECONDARY_COLOR_ARRAY_ADDRESS_NV, GL_DSDT_NV, GL_EVAL_VERTEX_ATTRIB8_NV, GL_OFFSET_HILO_PROJECTIVE_TEXTURE_2D_NV, GL_DOT_PRODUCT_TEXTURE_RECTANGLE_NV, GL_VARIABLE_G_NV, GL_TRANSFORM_FEEDBACK_BUFFER_BINDING_NV, GL_TRANSFORM_FEEDBACK_BINDING_NV, GL_MAX_TEXTURE_IMAGE_UNITS_NV, GL_COMBINER_INPUT_NV, GL_FONT_HAS_KERNING_NV, GL_EVAL_VERTEX_ATTRIB11_NV, GL_Z6Y10Z6CB10Z6A10Z6Y10Z6CR10Z6A10_4224_NV, GL_MAX_PROGRAM_GENERIC_ATTRIBS_NV, GL_VIDEO_CAPTURE_FIELD_UPPER_HEIGHT_NV, GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS_NV, GL_UNSIGNED_INT16_VEC3_NV, GL_GLYPH_VERTICAL_BEARING_Y_BIT_NV, GL_SCALE_BY_FOUR_NV, GL_GLYPH_VERTICAL_BEARING_X_BIT_NV, GL_READ_PIXEL_DATA_RANGE_NV, GL_HILO_NV, GL_GLYPH_HORIZONTAL_BEARING_Y_BIT_NV, GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS_NV, GL_CONVEX_HULL_NV, GL_GLYPH_HORIZONTAL_BEARING_ADVANCE_BIT_NV, GL_GLYPH_HEIGHT_BIT_NV, GL_MAX_RATIONAL_EVAL_ORDER_NV, GL_ELEMENT_ARRAY_ADDRESS_NV, GL_NUM_GENERAL_COMBINERS_NV, GL_VIDEO_CAPTURE_FRAME_HEIGHT_NV, GL_PATH_TERMINAL_END_CAP_NV, GL_LAYER_NV, GL_CLIP_DISTANCE_NV, GL_PATCHES, GL_PROGRAM_TARGET_NV, GL_MAP2_VERTEX_ATTRIB1_4_NV, GL_SKIP_COMPONENTS4_NV, GL_VIBRANCE_BIAS_NV, GL_MAP1_VERTEX_ATTRIB7_4_NV, GL_UNSIGNED_INT_8_8_S8_S8_REV_NV, GL_SIGNED_NEGATE_NV, GL_EVAL_VERTEX_ATTRIB3_NV, GL_PATH_OBJECT_BOUNDING_BOX_NV, GL_QUERY_WAIT_NV, GL_VERTEX_ATTRIB_ARRAY15_NV, GL_PARTIAL_SUCCESS_NV, GL_HORIZONTAL_LINE_TO_NV, GL_EVAL_VERTEX_ATTRIB6_NV, GL_FRAGMENT_PROGRAM_PARAMETER_BUFFER_NV, GL_SKIP_COMPONENTS1_NV, GL_MAP1_VERTEX_ATTRIB2_4_NV, GL_HILO16_NV, GL_OFFSET_TEXTURE_MATRIX_NV, GL_UNSIGNED_INT_24_8_NV, GL_TRANSLATE_2D_NV, GL_LINE_TO_NV, GL_VERTEX_ATTRIB_ARRAY_LENGTH_NV, GL_BIAS_BY_NEGATIVE_ONE_HALF_NV, GL_MOVE_TO_CONTINUES_NV, GL_COLOR_ARRAY_ADDRESS_NV, GL_EVAL_VERTEX_ATTRIB14_NV, GL_NUM_FILL_STREAMS_NV, GL_DEPENDENT_GB_TEXTURE_2D_NV, GL_MAX_FRAGMENT_INTERPOLATION_OFFSET_NV, GL_AFFINE_3D_NV, GL_LO_BIAS_NV, GL_VERTEX_PROGRAM_NV, GL_TRIANGULAR_NV, GL_PATH_COVER_DEPTH_FUNC_NV, GL_ROUND_NV, GL_RELATIVE_SMALL_CW_ARC_TO_NV, GL_PATH_DASH_ARRAY_COUNT_NV, GL_MIN_FRAGMENT_INTERPOLATION_OFFSET_NV, GL_UTF16_NV, GL_FONT_ASCENDER_NV, GL_TEXTURE_DS_SIZE_NV, GL_DOT_PRODUCT_PASS_THROUGH_NV, GL_MAX_TRACK_MATRIX_STACK_DEPTH_NV, GL_MAX_MAP_TESSELLATION_NV, GL_WRITE_PIXEL_DATA_RANGE_LENGTH_NV, GL_BOLD_BIT_NV, GL_EYE_PLANE_ABSOLUTE_NV, GL_TEXTURE_COORD_ARRAY_LENGTH_NV, GL_FONT_UNITS_PER_EM_NV, GL_MAX_SHININESS_NV, GL_EMBOSS_CONSTANT_NV, GL_NORMAL_ARRAY_ADDRESS_NV, GL_SMALL_CW_ARC_TO_NV, GL_EVAL_VERTEX_ATTRIB7_NV, GL_SCALE_BY_ONE_HALF_NV, GL_FLOAT16_VEC2_NV, GL_SIGNED_HILO8_NV, GL_DUP_LAST_CUBIC_CURVE_TO_NV, GL_SMOOTH_CUBIC_CURVE_TO_NV, GL_MOVE_TO_RESETS_NV, GL_MAX_VERTEX_ARRAY_RANGE_ELEMENT_NV, GL_MAP2_VERTEX_ATTRIB5_4_NV, GL_RENDERBUFFER_COLOR_SAMPLES_NV, GL_DEPTH_CLAMP_NV, GL_ELEMENT_ARRAY_UNIFIED_NV, GL_COMBINER_SCALE_NV, GL_VARIABLE_C_NV, GL_OFFSET_PROJECTIVE_TEXTURE_2D_SCALE_NV, GL_SIGNED_HILO16_NV, GL_EMBOSS_LIGHT_NV, GL_MAP2_VERTEX_ATTRIB14_4_NV, GL_ADJACENT_PAIRS_NV, GL_TEXTURE_DT_SIZE_NV, GL_TEXTURE_COORD_NV, GL_UNSIGNED_INT64_VEC4_NV, GL_PROGRAM_RESIDENT_NV, GL_FLOAT_R_NV, GL_FLOAT_RGBA16_NV, GL_TEXTURE_COVERAGE_SAMPLES_NV, GL_EVAL_VERTEX_ATTRIB10_NV, GL_SIGNED_LUMINANCE8_ALPHA8_NV, GL_PATH_DASH_OFFSET_RESET_NV, GL_TRANSFORM_FEEDBACK_BUFFER_SIZE_NV, GL_MAP1_VERTEX_ATTRIB11_4_NV, GL_FOG_COORD_ARRAY_ADDRESS_NV, GL_MAP2_VERTEX_ATTRIB13_4_NV, GL_PATH_CLIENT_LENGTH_NV, GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN_NV, GL_DSDT8_MAG8_INTENSITY8_NV, GL_VERTEX_ATTRIB_ARRAY2_NV, GL_DS_SCALE_NV, GL_OFFSET_HILO_TEXTURE_RECTANGLE_NV, GL_FONT_DESCENDER_NV, GL_REFLECTION_MAP_NV, GL_PATH_FOG_GEN_MODE_NV, GL_VIDEO_CAPTURE_FIELD_LOWER_HEIGHT_NV, GL_FRAGMENT_PROGRAM_BINDING_NV, GL_SIGNED_RGB_NV, GL_RELATIVE_LARGE_CW_ARC_TO_NV, GL_SIGNED_HILO_NV, GL_SIGNED_LUMINANCE8_NV, GL_VERTEX_ID_NV, GL_EYE_RADIAL_NV, GL_SIGNED_INTENSITY_NV, GL_INTERLEAVED_ATTRIBS_NV, GL_PATH_STROKE_BOUND_NV, GL_COMBINER6_NV, GL_TRANSFORM_FEEDBACK_RECORD_NV, GL_DSDT_MAG_INTENSITY_NV, GL_VERTEX_ATTRIB_ARRAY10_NV, GL_SOURCE3_ALPHA_NV, GL_READ_PIXEL_DATA_RANGE_LENGTH_NV, GL_VERTEX_ATTRIB_ARRAY0_NV, GL_LARGE_CW_ARC_TO_NV, GL_SPARE0_PLUS_SECONDARY_COLOR_NV, GL_UNSIGNED_INT16_VEC4_NV, GL_RASTERIZER_DISCARD_NV, GL_UNSIGNED_INT16_VEC2_NV, GL_UNSIGNED_IDENTITY_NV, GL_BACK_SECONDARY_COLOR_NV, GL_OFFSET_PROJECTIVE_TEXTURE_RECTANGLE_NV, GL_FLOAT_RGBA32_NV, GL_INT16_VEC4_NV, GL_FLOAT_RG32_NV, GL_PATH_FORMAT_PS_NV, GL_UNSIGNED_INT8_VEC4_NV, GL_PATH_STROKE_BOUNDING_BOX_NV, GL_TEXTURE_LO_SIZE_NV, GL_TRANSLATE_3D_NV, GL_DS_BIAS_NV, GL_MAP2_VERTEX_ATTRIB3_4_NV, GL_SIGNED_ALPHA_NV, GL_TESS_CONTROL_PROGRAM_PARAMETER_BUFFER_NV, GL_PATH_DASH_CAPS_NV, GL_MAX_TEXTURE_COORDS_NV, GL_RESTART_PATH_NV, GL_DRAW_INDIRECT_ADDRESS_NV, GL_CURRENT_MATRIX_STACK_DEPTH_NV, GL_MATRIX7_NV, GL_MAP1_VERTEX_ATTRIB12_4_NV, GL_BACK_PRIMARY_COLOR_NV, GL_PIXEL_COUNT_NV, GL_TEXTURE_COLOR_SAMPLES_NV, GL_TRANSPOSE_PROJECTIVE_3D_NV, GL_SURFACE_MAPPED_NV, GL_DUP_FIRST_CUBIC_CURVE_TO_NV, GL_ARC_TO_NV, GL_PRIMITIVE_RESTART_NV, GL_MAP1_VERTEX_ATTRIB13_4_NV, GL_SOURCE3_RGB_NV, GL_VERTEX_ARRAY_RANGE_LENGTH_NV, GL_MODELVIEW_PROJECTION_NV, GL_Z4Y12Z4CB12Z4Y12Z4CR12_422_NV, GL_ATTRIB_ARRAY_TYPE_NV, GL_MAX_PROGRAM_PARAMETER_BUFFER_SIZE_NV, GL_WRITE_DISCARD_NV, GL_NEXT_BUFFER_NV, GL_MAP2_VERTEX_ATTRIB15_4_NV, GL_MAX_PROGRAM_LOOP_COUNT_NV, GL_DSDT8_MAG8_NV, GL_VIBRANCE_SCALE_NV, GL_CIRCULAR_TANGENT_ARC_TO_NV, GL_INT_SAMPLER_RENDERBUFFER_NV, GL_VIDEO_CAPTURE_SURFACE_ORIGIN_NV, GL_TEXTURE_BINDING_RECTANGLE_NV, GL_ACCUM_ADJACENT_PAIRS_NV, GL_INT16_VEC2_NV, GL_PATH_GEN_MODE_NV, GL_COMBINER_COMPONENT_USAGE_NV, GL_OPERAND3_RGB_NV, GL_INT8_VEC2_NV, GL_MAP2_VERTEX_ATTRIB10_4_NV, GL_ITALIC_BIT_NV, GL_QUADRATIC_CURVE_TO_NV, GL_MAX_PROGRAM_PATCH_ATTRIBS_NV, GL_OFFSET_HILO_TEXTURE_2D_NV, GL_DEPTH32F_STENCIL8_NV, GL_DOT_PRODUCT_REFLECT_CUBE_MAP_NV
