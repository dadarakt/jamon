#Types, functions and constants, needed on top of the common ones
#types
const GL_AMD_TYPES = [
]
#constants
const GL_AMD_CONSTANTS = [
:(const SAMPLER_BUFFER_AMD                                              = 0x9001),
:(const UNSIGNED_INT64_AMD                                              = 0x8BC2),
:(const DEBUG_SEVERITY_LOW_AMD                                          = 0x9148),
:(const DEBUG_SEVERITY_MEDIUM_AMD                                       = 0x9147),
:(const PERFORMANCE_MONITOR_AMD                                         = 0x9152),
:(const COUNTER_TYPE_AMD                                                = 0x8BC0),
:(const COUNTER_RANGE_AMD                                               = 0x8BC1),
:(const PERFMON_RESULT_AVAILABLE_AMD                                    = 0x8BC4),
:(const QUERY_BUFFER_AMD                                                = 0x9192),
:(const DEBUG_CATEGORY_SHADER_COMPILER_AMD                              = 0x914E),
:(const MAX_DEBUG_LOGGED_MESSAGES_AMD                                   = 0x9144),
:(const TESSELLATION_MODE_AMD                                           = 0x9004),
:(const VIRTUAL_PAGE_SIZE_Y_AMD                                         = 0x9196),
:(const MIN_SPARSE_LEVEL_AMD                                            = 0x919B),
:(const QUERY_BUFFER_BINDING_AMD                                        = 0x9193),
:(const PERFMON_RESULT_AMD                                              = 0x8BC6),
:(const DEBUG_CATEGORY_UNDEFINED_BEHAVIOR_AMD                           = 0x914C),
:(const MAX_SPARSE_3D_TEXTURE_SIZE_AMD                                  = 0x9199),
:(const EXTERNAL_VIRTUAL_MEMORY_BUFFER_AMD                              = 0x9160),
:(const DEBUG_CATEGORY_DEPRECATION_AMD                                  = 0x914B),
:(const SUBSAMPLE_DISTANCE_AMD                                          = 0x883F),
:(const REPLACE_VALUE_AMD                                               = 0x874B),
:(const MAX_SPARSE_TEXTURE_SIZE_AMD                                     = 0x9198),
:(const DEBUG_LOGGED_MESSAGES_AMD                                       = 0x9145),
:(const SAMPLER_OBJECT_AMD                                              = 0x9155),
:(const FACTOR_MIN_AMD                                                  = 0x901C),
:(const DEBUG_CATEGORY_OTHER_AMD                                        = 0x9150),
:(const CONTINUOUS_AMD                                                  = 0x9007),
:(const SET_AMD                                                         = 0x874A),
:(const MAX_DEBUG_MESSAGE_LENGTH_AMD                                    = 0x9143),
:(const UNSIGNED_INT_SAMPLER_BUFFER_AMD                                 = 0x9003),
:(const VERTEX_ARRAY_OBJECT_AMD                                         = 0x9154),
:(const DEPTH_CLAMP_FAR_AMD                                             = 0x901F),
:(const VIRTUAL_PAGE_SIZE_X_AMD                                         = 0x9195),
:(const MAX_SPARSE_ARRAY_TEXTURE_LAYERS                                 = 0x919A),
:(const INT_SAMPLER_BUFFER_AMD                                          = 0x9002),
:(const DEBUG_SEVERITY_HIGH_AMD                                         = 0x9146),
:(const TEXTURE_CUBE_MAP_SEAMLESS                                       = 0x884F),
:(const STENCIL_BACK_OP_VALUE_AMD                                       = 0x874D),
:(const PERCENTAGE_AMD                                                  = 0x8BC3),
:(const TESSELLATION_FACTOR_AMD                                         = 0x9005),
:(const DEBUG_CATEGORY_API_ERROR_AMD                                    = 0x9149),
:(const MIN_LOD_WARNING_AMD                                             = 0x919C),
:(const DEBUG_CATEGORY_WINDOW_SYSTEM_AMD                                = 0x914A),
:(const DEBUG_CATEGORY_PERFORMANCE_AMD                                  = 0x914D),
:(const QUERY_OBJECT_AMD                                                = 0x9153),
:(const PERFMON_RESULT_SIZE_AMD                                         = 0x8BC5),
:(const FACTOR_MAX_AMD                                                  = 0x901D),
:(const VIRTUAL_PAGE_SIZE_Z_AMD                                         = 0x9197),
:(const DISCRETE_AMD                                                    = 0x9006),
:(const DEBUG_CATEGORY_APPLICATION_AMD                                  = 0x914F),
:(const QUERY_RESULT_NO_WAIT_AMD                                        = 0x9194),
:(const DEPTH_CLAMP_NEAR_AMD                                            = 0x901E),
:(const TEXTURE_STORAGE_SPARSE_BIT_AMD                                  = 0x00000001),
:(const DATA_BUFFER_AMD                                                 = 0x9151),
:(const STENCIL_OP_VALUE_AMD                                            = 0x874C)]
#function bodies
const GL_AMD_FUNCTIONS = [
:(glDebugMessageEnableAMD(category::GLenum, severity::GLenum, count::GLsizei, ids::Ptr{GLuint}, enabled::GLboolean)::Void),
:(glGetPerfMonitorGroupStringAMD(group::GLuint, bufSize::GLsizei, length::Ptr{GLsizei}, groupString::Ptr{GLchar})::Void),
:(glGetPerfMonitorCounterInfoAMD(group::GLuint, counter::GLuint, pname::GLenum, data::Ptr{Void})::Void),
:(glBlendEquationSeparateIndexedAMD(buf::GLuint, modeRGB::GLenum, modeAlpha::GLenum)::Void),
:(glIsNameAMD(identifier::GLenum, name::GLuint)::Bool),
:(glGenNamesAMD(identifier::GLenum, num::GLuint, names::Ptr{GLuint})::Void),
:(glGetPerfMonitorCounterDataAMD(monitor::GLuint, pname::GLenum, dataSize::GLsizei, data::Ptr{GLuint}, bytesWritten::Ptr{GLint})::Void),
:(glEndPerfMonitorAMD(monitor::GLuint)::Void),
:(glGenPerfMonitorsAMD(n::GLsizei, monitors::Ptr{GLuint})::Void),
:(glSelectPerfMonitorCountersAMD(monitor::GLuint, enable::GLboolean, group::GLuint, numCounters::GLint, counterList::Ptr{GLuint})::Void),
:(glBlendFuncSeparateIndexedAMD(buf::GLuint, srcRGB::GLenum, dstRGB::GLenum, srcAlpha::GLenum, dstAlpha::GLenum)::Void),
:(glSetMultisamplefvAMD(pname::GLenum, index::GLuint, val::Ptr{GLfloat})::Void),
:(glBeginPerfMonitorAMD(monitor::GLuint)::Void),
:(glGetPerfMonitorCountersAMD(group::GLuint, numCounters::Ptr{GLint}, maxActiveCounters::Ptr{GLint}, counterSize::GLsizei, counters::Ptr{GLuint})::Void),
:(glGetPerfMonitorCounterStringAMD(group::GLuint, counter::GLuint, bufSize::GLsizei, length::Ptr{GLsizei}, counterString::Ptr{GLchar})::Void),
:(glTexStorageSparseAMD(target::GLenum, internalFormat::GLenum, width::GLsizei, height::GLsizei, depth::GLsizei, layers::GLsizei, flags::GLbitfield)::Void),
:(glMultiDrawArraysIndirectAMD(mode::GLenum, indirect::Ptr{Void}, primcount::GLsizei, stride::GLsizei)::Void),
:(glTessellationFactorAMD(factor::GLfloat)::Void),
:(glBlendEquationIndexedAMD(buf::GLuint, mode::GLenum)::Void),
:(glGetDebugMessageLogAMD(count::GLuint, bufsize::GLsizei, categories::Ptr{GLenum}, severities::Ptr{GLuint}, ids::Ptr{GLuint}, lengths::Ptr{GLsizei}, message::Ptr{GLchar})::Cuint),
:(glTextureStorageSparseAMD(texture::GLuint, target::GLenum, internalFormat::GLenum, width::GLsizei, height::GLsizei, depth::GLsizei, layers::GLsizei, flags::GLbitfield)::Void),
:(glGetPerfMonitorGroupsAMD(numGroups::Ptr{GLint}, groupsSize::GLsizei, groups::Ptr{GLuint})::Void),
:(glDeleteNamesAMD(identifier::GLenum, num::GLuint, names::Ptr{GLuint})::Void),
:(glDeletePerfMonitorsAMD(n::GLsizei, monitors::Ptr{GLuint})::Void),
:(glDebugMessageInsertAMD(category::GLenum, severity::GLenum, id::GLuint, length::GLsizei, buf::Ptr{GLchar})::Void),
:(glDebugMessageCallbackAMD(callback::Ptr{Void}, userParam::Ptr{Void})::Void),
:(glStencilOpValueAMD(face::GLenum, value::GLuint)::Void),
:(glTessellationModeAMD(mode::GLenum)::Void),
:(glBlendFuncIndexedAMD(buf::GLuint, src::GLenum, dst::GLenum)::Void),
:(glMultiDrawElementsIndirectAMD(mode::GLenum, type_::GLenum, indirect::Ptr{Void}, primcount::GLsizei, stride::GLsizei)::Void)]
