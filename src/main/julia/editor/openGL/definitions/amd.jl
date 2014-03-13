#function bodies
@createOpenGLFun glDebugMessageEnableAMD(category::GLenum, severity::GLenum, count::GLsizei, ids::Ptr{GLuint}, enabled::GLboolean)::Void
@createOpenGLFun glGetPerfMonitorGroupStringAMD(group::GLuint, bufSize::GLsizei, length::Ptr{GLsizei}, groupString::Ptr{GLchar})::Void
@createOpenGLFun glGetPerfMonitorCounterInfoAMD(group::GLuint, counter::GLuint, pname::GLenum, data::Ptr{Void})::Void
@createOpenGLFun glBlendEquationSeparateIndexedAMD(buf::GLuint, modeRGB::GLenum, modeAlpha::GLenum)::Void
@createOpenGLFun glIsNameAMD(identifier::GLenum, name::GLuint)::Bool
@createOpenGLFun glGenNamesAMD(identifier::GLenum, num::GLuint, names::Ptr{GLuint})::Void
@createOpenGLFun glGetPerfMonitorCounterDataAMD(monitor::GLuint, pname::GLenum, dataSize::GLsizei, data::Ptr{GLuint}, bytesWritten::Ptr{GLint})::Void
@createOpenGLFun glBlendFuncSeparateIndexedAMD(buf::GLuint, srcRGB::GLenum, dstRGB::GLenum, srcAlpha::GLenum, dstAlpha::GLenum)::Void
@createOpenGLFun glGenPerfMonitorsAMD(n::GLsizei, monitors::Ptr{GLuint})::Void
@createOpenGLFun glSelectPerfMonitorCountersAMD(monitor::GLuint, enable::GLboolean, group::GLuint, numCounters::GLint, counterList::Ptr{GLuint})::Void
@createOpenGLFun glEndPerfMonitorAMD(monitor::GLuint)::Void
@createOpenGLFun glSetMultisamplefvAMD(pname::GLenum, index::GLuint, val::Ptr{GLfloat})::Void
@createOpenGLFun glBeginPerfMonitorAMD(monitor::GLuint)::Void
@createOpenGLFun glGetPerfMonitorCountersAMD(group::GLuint, numCounters::Ptr{GLint}, maxActiveCounters::Ptr{GLint}, counterSize::GLsizei, counters::Ptr{GLuint})::Void
@createOpenGLFun glGetPerfMonitorCounterStringAMD(group::GLuint, counter::GLuint, bufSize::GLsizei, length::Ptr{GLsizei}, counterString::Ptr{GLchar})::Void
@createOpenGLFun glTexStorageSparseAMD(target::GLenum, internalFormat::GLenum, width::GLsizei, height::GLsizei, depth::GLsizei, layers::GLsizei, flags::GLbitfield)::Void
@createOpenGLFun glMultiDrawArraysIndirectAMD(mode::GLenum, indirect::Ptr{Void}, primcount::GLsizei, stride::GLsizei)::Void
@createOpenGLFun glTessellationFactorAMD(factor::GLfloat)::Void
@createOpenGLFun glBlendEquationIndexedAMD(buf::GLuint, mode::GLenum)::Void
@createOpenGLFun glGetDebugMessageLogAMD(count::GLuint, bufsize::GLsizei, categories::Ptr{GLenum}, severities::Ptr{GLuint}, ids::Ptr{GLuint}, lengths::Ptr{GLsizei}, message::Ptr{GLchar})::Cuint
@createOpenGLFun glTextureStorageSparseAMD(texture::GLuint, target::GLenum, internalFormat::GLenum, width::GLsizei, height::GLsizei, depth::GLsizei, layers::GLsizei, flags::GLbitfield)::Void
@createOpenGLFun glGetPerfMonitorGroupsAMD(numGroups::Ptr{GLint}, groupsSize::GLsizei, groups::Ptr{GLuint})::Void
@createOpenGLFun glDeleteNamesAMD(identifier::GLenum, num::GLuint, names::Ptr{GLuint})::Void
@createOpenGLFun glDeletePerfMonitorsAMD(n::GLsizei, monitors::Ptr{GLuint})::Void
@createOpenGLFun glDebugMessageInsertAMD(category::GLenum, severity::GLenum, id::GLuint, length::GLsizei, buf::Ptr{GLchar})::Void
@createOpenGLFun glDebugMessageCallbackAMD(callback::Ptr{Void}, userParam::Ptr{Void})::Void
@createOpenGLFun glStencilOpValueAMD(face::GLenum, value::GLuint)::Void
@createOpenGLFun glTessellationModeAMD(mode::GLenum)::Void
@createOpenGLFun glBlendFuncIndexedAMD(buf::GLuint, src::GLenum, dst::GLenum)::Void
@createOpenGLFun glMultiDrawElementsIndirectAMD(mode::GLenum, type_::GLenum, indirect::Ptr{Void}, primcount::GLsizei, stride::GLsizei)::Void
#constants
const GL_VIRTUAL_PAGE_SIZE_X_AMD                                      = 0x9195
const GL_PERFMON_RESULT_SIZE_AMD                                      = 0x8BC5
const GL_TEXTURE_STORAGE_SPARSE_BIT_AMD                               = 0x00000001
const GL_MAX_DEBUG_LOGGED_MESSAGES_AMD                                = 0x9144
const GL_PERFORMANCE_MONITOR_AMD                                      = 0x9152
const GL_DEBUG_CATEGORY_OTHER_AMD                                     = 0x9150
const GL_PERFMON_RESULT_AMD                                           = 0x8BC6
const GL_TESSELLATION_FACTOR_AMD                                      = 0x9005
const GL_MIN_LOD_WARNING_AMD                                          = 0x919C
const GL_SUBSAMPLE_DISTANCE_AMD                                       = 0x883F
const GL_CONTINUOUS_AMD                                               = 0x9007
const GL_QUERY_BUFFER_BINDING_AMD                                     = 0x9193
const GL_COUNTER_TYPE_AMD                                             = 0x8BC0
const GL_MAX_DEBUG_MESSAGE_LENGTH_AMD                                 = 0x9143
const GL_VIRTUAL_PAGE_SIZE_Y_AMD                                      = 0x9196
const GL_COUNTER_RANGE_AMD                                            = 0x8BC1
const GL_DEPTH_CLAMP_FAR_AMD                                          = 0x901F
const GL_FACTOR_MIN_AMD                                               = 0x901C
const GL_DEBUG_CATEGORY_UNDEFINED_BEHAVIOR_AMD                        = 0x914C
const GL_DEBUG_CATEGORY_WINDOW_SYSTEM_AMD                             = 0x914A
const GL_DEPTH_CLAMP_NEAR_AMD                                         = 0x901E
const GL_DEBUG_SEVERITY_MEDIUM_AMD                                    = 0x9147
const GL_SET_AMD                                                      = 0x874A
const GL_TEXTURE_CUBE_MAP_SEAMLESS                                    = 0x884F
const GL_DEBUG_LOGGED_MESSAGES_AMD                                    = 0x9145
const GL_DEBUG_SEVERITY_LOW_AMD                                       = 0x9148
const GL_DEBUG_CATEGORY_API_ERROR_AMD                                 = 0x9149
const GL_TESSELLATION_MODE_AMD                                        = 0x9004
const GL_DEBUG_CATEGORY_APPLICATION_AMD                               = 0x914F
const GL_MAX_SPARSE_ARRAY_TEXTURE_LAYERS                              = 0x919A
const GL_DEBUG_SEVERITY_HIGH_AMD                                      = 0x9146
const GL_MAX_SPARSE_TEXTURE_SIZE_AMD                                  = 0x9198
const GL_SAMPLER_BUFFER_AMD                                           = 0x9001
const GL_PERFMON_RESULT_AVAILABLE_AMD                                 = 0x8BC4
const GL_MIN_SPARSE_LEVEL_AMD                                         = 0x919B
const GL_INT_SAMPLER_BUFFER_AMD                                       = 0x9002
const GL_UNSIGNED_INT_SAMPLER_BUFFER_AMD                              = 0x9003
const GL_UNSIGNED_INT64_AMD                                           = 0x8BC2
const GL_VERTEX_ARRAY_OBJECT_AMD                                      = 0x9154
const GL_FACTOR_MAX_AMD                                               = 0x901D
const GL_DEBUG_CATEGORY_DEPRECATION_AMD                               = 0x914B
const GL_STENCIL_OP_VALUE_AMD                                         = 0x874C
const GL_MAX_SPARSE_3D_TEXTURE_SIZE_AMD                               = 0x9199
const GL_DEBUG_CATEGORY_SHADER_COMPILER_AMD                           = 0x914E
const GL_DATA_BUFFER_AMD                                              = 0x9151
const GL_VIRTUAL_PAGE_SIZE_Z_AMD                                      = 0x9197
const GL_PERCENTAGE_AMD                                               = 0x8BC3
const GL_SAMPLER_OBJECT_AMD                                           = 0x9155
const GL_STENCIL_BACK_OP_VALUE_AMD                                    = 0x874D
const GL_DISCRETE_AMD                                                 = 0x9006
const GL_QUERY_OBJECT_AMD                                             = 0x9153
const GL_QUERY_BUFFER_AMD                                             = 0x9192
const GL_QUERY_RESULT_NO_WAIT_AMD                                     = 0x9194
const GL_DEBUG_CATEGORY_PERFORMANCE_AMD                               = 0x914D
const GL_REPLACE_VALUE_AMD                                            = 0x874B
const GL_EXTERNAL_VIRTUAL_MEMORY_BUFFER_AMD                           = 0x9160
# Export everything!
export glDebugMessageEnableAMD, glGetPerfMonitorGroupStringAMD, glGetPerfMonitorCounterInfoAMD, glBlendEquationSeparateIndexedAMD, glIsNameAMD, glGenNamesAMD, glGetPerfMonitorCounterDataAMD, glBlendFuncSeparateIndexedAMD, glGenPerfMonitorsAMD, glSelectPerfMonitorCountersAMD, glEndPerfMonitorAMD, glSetMultisamplefvAMD, glBeginPerfMonitorAMD, glGetPerfMonitorCountersAMD, glGetPerfMonitorCounterStringAMD, glTexStorageSparseAMD, glMultiDrawArraysIndirectAMD, glTessellationFactorAMD, glBlendEquationIndexedAMD, glGetDebugMessageLogAMD, glTextureStorageSparseAMD, glGetPerfMonitorGroupsAMD, glDeleteNamesAMD, glDeletePerfMonitorsAMD, glDebugMessageInsertAMD, glDebugMessageCallbackAMD, glStencilOpValueAMD, glTessellationModeAMD, glBlendFuncIndexedAMD, glMultiDrawElementsIndirectAMD, GL_VIRTUAL_PAGE_SIZE_X_AMD, GL_PERFMON_RESULT_SIZE_AMD, GL_TEXTURE_STORAGE_SPARSE_BIT_AMD, GL_MAX_DEBUG_LOGGED_MESSAGES_AMD, GL_PERFORMANCE_MONITOR_AMD, GL_DEBUG_CATEGORY_OTHER_AMD, GL_PERFMON_RESULT_AMD, GL_TESSELLATION_FACTOR_AMD, GL_MIN_LOD_WARNING_AMD, GL_SUBSAMPLE_DISTANCE_AMD, GL_CONTINUOUS_AMD, GL_QUERY_BUFFER_BINDING_AMD, GL_COUNTER_TYPE_AMD, GL_MAX_DEBUG_MESSAGE_LENGTH_AMD, GL_VIRTUAL_PAGE_SIZE_Y_AMD, GL_COUNTER_RANGE_AMD, GL_DEPTH_CLAMP_FAR_AMD, GL_FACTOR_MIN_AMD, GL_DEBUG_CATEGORY_UNDEFINED_BEHAVIOR_AMD, GL_DEBUG_CATEGORY_WINDOW_SYSTEM_AMD, GL_DEPTH_CLAMP_NEAR_AMD, GL_DEBUG_SEVERITY_MEDIUM_AMD, GL_SET_AMD, GL_TEXTURE_CUBE_MAP_SEAMLESS, GL_DEBUG_LOGGED_MESSAGES_AMD, GL_DEBUG_SEVERITY_LOW_AMD, GL_DEBUG_CATEGORY_API_ERROR_AMD, GL_TESSELLATION_MODE_AMD, GL_DEBUG_CATEGORY_APPLICATION_AMD, GL_MAX_SPARSE_ARRAY_TEXTURE_LAYERS, GL_DEBUG_SEVERITY_HIGH_AMD, GL_MAX_SPARSE_TEXTURE_SIZE_AMD, GL_SAMPLER_BUFFER_AMD, GL_PERFMON_RESULT_AVAILABLE_AMD, GL_MIN_SPARSE_LEVEL_AMD, GL_INT_SAMPLER_BUFFER_AMD, GL_UNSIGNED_INT_SAMPLER_BUFFER_AMD, GL_UNSIGNED_INT64_AMD, GL_VERTEX_ARRAY_OBJECT_AMD, GL_FACTOR_MAX_AMD, GL_DEBUG_CATEGORY_DEPRECATION_AMD, GL_STENCIL_OP_VALUE_AMD, GL_MAX_SPARSE_3D_TEXTURE_SIZE_AMD, GL_DEBUG_CATEGORY_SHADER_COMPILER_AMD, GL_DATA_BUFFER_AMD, GL_VIRTUAL_PAGE_SIZE_Z_AMD, GL_PERCENTAGE_AMD, GL_SAMPLER_OBJECT_AMD, GL_STENCIL_BACK_OP_VALUE_AMD, GL_DISCRETE_AMD, GL_QUERY_OBJECT_AMD, GL_QUERY_BUFFER_AMD, GL_QUERY_RESULT_NO_WAIT_AMD, GL_DEBUG_CATEGORY_PERFORMANCE_AMD, GL_REPLACE_VALUE_AMD, GL_EXTERNAL_VIRTUAL_MEMORY_BUFFER_AMD
