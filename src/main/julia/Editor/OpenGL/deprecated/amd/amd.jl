module AMD 

import GetC.@getCFun

typealias GLenum Cuint
typealias GLboolean Cuchar
typealias GLbitfield Cuint
typealias GLvoid Void
typealias GLbyte Cuchar
typealias GLshort Cshort
typealias GLint Cint
typealias GLubyte Cuchar
typealias GLushort Cushort
typealias GLuint Cuint
typealias GLsizei Csize_t
typealias GLfloat Cfloat
typealias GLclampf Cfloat
typealias GLdouble Cdouble
typealias GLclampd Cdouble
typealias GLchar Cchar
typealias GLint64 Clonglong
typealias GLuint64 Culonglong
typealias GLhalf Cushort
typealias GLhalfARB Cushort
typealias GLhalfNV Cushort
typealias GLsync Ptr{Void}
typealias Pointer Ptr{Void}
typealias GLsizeiptr Cint
typealias GLintptr Cptrdiff_t
const FACTOR_MAX_AMD = 0x901D
export FACTOR_MAX_AMD
const FACTOR_MIN_AMD = 0x901C
export FACTOR_MIN_AMD
const DEBUG_CATEGORY_API_ERROR_AMD = 0x9149
export DEBUG_CATEGORY_API_ERROR_AMD
const DEBUG_CATEGORY_APPLICATION_AMD = 0x914F
export DEBUG_CATEGORY_APPLICATION_AMD
const DEBUG_CATEGORY_DEPRECATION_AMD = 0x914B
export DEBUG_CATEGORY_DEPRECATION_AMD
const DEBUG_CATEGORY_OTHER_AMD = 0x9150
export DEBUG_CATEGORY_OTHER_AMD
const DEBUG_CATEGORY_PERFORMANCE_AMD = 0x914D
export DEBUG_CATEGORY_PERFORMANCE_AMD
const DEBUG_CATEGORY_SHADER_COMPILER_AMD = 0x914E
export DEBUG_CATEGORY_SHADER_COMPILER_AMD
const DEBUG_CATEGORY_UNDEFINED_BEHAVIOR_AMD = 0x914C
export DEBUG_CATEGORY_UNDEFINED_BEHAVIOR_AMD
const DEBUG_CATEGORY_WINDOW_SYSTEM_AMD = 0x914A
export DEBUG_CATEGORY_WINDOW_SYSTEM_AMD
const DEBUG_LOGGED_MESSAGES_AMD = 0x9145
export DEBUG_LOGGED_MESSAGES_AMD
const DEBUG_SEVERITY_HIGH_AMD = 0x9146
export DEBUG_SEVERITY_HIGH_AMD
const DEBUG_SEVERITY_LOW_AMD = 0x9148
export DEBUG_SEVERITY_LOW_AMD
const DEBUG_SEVERITY_MEDIUM_AMD = 0x9147
export DEBUG_SEVERITY_MEDIUM_AMD
const MAX_DEBUG_LOGGED_MESSAGES_AMD = 0x9144
export MAX_DEBUG_LOGGED_MESSAGES_AMD
const MAX_DEBUG_MESSAGE_LENGTH_AMD = 0x9143
export MAX_DEBUG_MESSAGE_LENGTH_AMD
const DEPTH_CLAMP_FAR_AMD = 0x901F
export DEPTH_CLAMP_FAR_AMD
const DEPTH_CLAMP_NEAR_AMD = 0x901E
export DEPTH_CLAMP_NEAR_AMD
const DATA_BUFFER_AMD = 0x9151
export DATA_BUFFER_AMD
const PERFORMANCE_MONITOR_AMD = 0x9152
export PERFORMANCE_MONITOR_AMD
const QUERY_OBJECT_AMD = 0x9153
export QUERY_OBJECT_AMD
const SAMPLER_OBJECT_AMD = 0x9155
export SAMPLER_OBJECT_AMD
const VERTEX_ARRAY_OBJECT_AMD = 0x9154
export VERTEX_ARRAY_OBJECT_AMD
const COUNTER_RANGE_AMD = 0x8BC1
export COUNTER_RANGE_AMD
const COUNTER_TYPE_AMD = 0x8BC0
export COUNTER_TYPE_AMD
const PERCENTAGE_AMD = 0x8BC3
export PERCENTAGE_AMD
const PERFMON_RESULT_AMD = 0x8BC6
export PERFMON_RESULT_AMD
const PERFMON_RESULT_AVAILABLE_AMD = 0x8BC4
export PERFMON_RESULT_AVAILABLE_AMD
const PERFMON_RESULT_SIZE_AMD = 0x8BC5
export PERFMON_RESULT_SIZE_AMD
const UNSIGNED_INT64_AMD = 0x8BC2
export UNSIGNED_INT64_AMD
const EXTERNAL_VIRTUAL_MEMORY_BUFFER_AMD = 0x9160
export EXTERNAL_VIRTUAL_MEMORY_BUFFER_AMD
const QUERY_BUFFER_AMD = 0x9192
export QUERY_BUFFER_AMD
const QUERY_BUFFER_BINDING_AMD = 0x9193
export QUERY_BUFFER_BINDING_AMD
const QUERY_RESULT_NO_WAIT_AMD = 0x9194
export QUERY_RESULT_NO_WAIT_AMD
const SUBSAMPLE_DISTANCE_AMD = 0x883F
export SUBSAMPLE_DISTANCE_AMD
const TEXTURE_CUBE_MAP_SEAMLESS = 0x884F
export TEXTURE_CUBE_MAP_SEAMLESS
const MAX_SPARSE_3D_TEXTURE_SIZE_AMD = 0x9199
export MAX_SPARSE_3D_TEXTURE_SIZE_AMD
const MAX_SPARSE_ARRAY_TEXTURE_LAYERS = 0x919A
export MAX_SPARSE_ARRAY_TEXTURE_LAYERS
const MAX_SPARSE_TEXTURE_SIZE_AMD = 0x9198
export MAX_SPARSE_TEXTURE_SIZE_AMD
const MIN_LOD_WARNING_AMD = 0x919C
export MIN_LOD_WARNING_AMD
const MIN_SPARSE_LEVEL_AMD = 0x919B
export MIN_SPARSE_LEVEL_AMD
const TEXTURE_STORAGE_SPARSE_BIT_AMD = 0x00000001
export TEXTURE_STORAGE_SPARSE_BIT_AMD
const VIRTUAL_PAGE_SIZE_X_AMD = 0x9195
export VIRTUAL_PAGE_SIZE_X_AMD
const VIRTUAL_PAGE_SIZE_Y_AMD = 0x9196
export VIRTUAL_PAGE_SIZE_Y_AMD
const VIRTUAL_PAGE_SIZE_Z_AMD = 0x9197
export VIRTUAL_PAGE_SIZE_Z_AMD
const REPLACE_VALUE_AMD = 0x874B
export REPLACE_VALUE_AMD
const SET_AMD = 0x874A
export SET_AMD
const STENCIL_BACK_OP_VALUE_AMD = 0x874D
export STENCIL_BACK_OP_VALUE_AMD
const STENCIL_OP_VALUE_AMD = 0x874C
export STENCIL_OP_VALUE_AMD
const CONTINUOUS_AMD = 0x9007
export CONTINUOUS_AMD
const DISCRETE_AMD = 0x9006
export DISCRETE_AMD
const INT_SAMPLER_BUFFER_AMD = 0x9002
export INT_SAMPLER_BUFFER_AMD
const SAMPLER_BUFFER_AMD = 0x9001
export SAMPLER_BUFFER_AMD
const TESSELLATION_FACTOR_AMD = 0x9005
export TESSELLATION_FACTOR_AMD
const TESSELLATION_MODE_AMD = 0x9004
export TESSELLATION_MODE_AMD
const UNSIGNED_INT_SAMPLER_BUFFER_AMD = 0x9003
export UNSIGNED_INT_SAMPLER_BUFFER_AMD
@getCFun "libGL" glDebugMessageEnableAMD glDebugMessageEnableAMD(category::GLenum, severity::GLenum, count::GLsizei, ids::Ptr{GLuint}, enabled::GLboolean)::Void
export glDebugMessageEnableAMD
@getCFun "libGL" glDebugMessageInsertAMD glDebugMessageInsertAMD(category::GLenum, severity::GLenum, id::GLuint, length::GLsizei, buf::Ptr{GLchar})::Void
export glDebugMessageInsertAMD
@getCFun "libGL" glDebugMessageCallbackAMD glDebugMessageCallbackAMD(callback::Ptr{Void}, userParam::Ptr{Void})::Void
export glDebugMessageCallbackAMD
@getCFun "libGL" glGetDebugMessageLogAMD glGetDebugMessageLogAMD(count::GLuint, bufsize::GLsizei, categories::Ptr{GLenum}, severities::Ptr{GLuint}, ids::Ptr{GLuint}, lengths::Ptr{GLsizei}, message::Ptr{GLchar})::Cuint
export glGetDebugMessageLogAMD
@getCFun "libGL" glBlendFuncIndexedAMD glBlendFuncIndexedAMD(buf::GLuint, src::GLenum, dst::GLenum)::Void
export glBlendFuncIndexedAMD
@getCFun "libGL" glBlendFuncSeparateIndexedAMD glBlendFuncSeparateIndexedAMD(buf::GLuint, srcRGB::GLenum, dstRGB::GLenum, srcAlpha::GLenum, dstAlpha::GLenum)::Void
export glBlendFuncSeparateIndexedAMD
@getCFun "libGL" glBlendEquationIndexedAMD glBlendEquationIndexedAMD(buf::GLuint, mode::GLenum)::Void
export glBlendEquationIndexedAMD
@getCFun "libGL" glBlendEquationSeparateIndexedAMD glBlendEquationSeparateIndexedAMD(buf::GLuint, modeRGB::GLenum, modeAlpha::GLenum)::Void
export glBlendEquationSeparateIndexedAMD
@getCFun "libGL" glMultiDrawArraysIndirectAMD glMultiDrawArraysIndirectAMD(mode::GLenum, indirect::Ptr{Void}, primcount::GLsizei, stride::GLsizei)::Void
export glMultiDrawArraysIndirectAMD
@getCFun "libGL" glMultiDrawElementsIndirectAMD glMultiDrawElementsIndirectAMD(mode::GLenum, type_::GLenum, indirect::Ptr{Void}, primcount::GLsizei, stride::GLsizei)::Void
export glMultiDrawElementsIndirectAMD
@getCFun "libGL" glGenNamesAMD glGenNamesAMD(identifier::GLenum, num::GLuint, names::Ptr{GLuint})::Void
export glGenNamesAMD
@getCFun "libGL" glDeleteNamesAMD glDeleteNamesAMD(identifier::GLenum, num::GLuint, names::Ptr{GLuint})::Void
export glDeleteNamesAMD
@getCFun "libGL" glIsNameAMD glIsNameAMD(identifier::GLenum, name::GLuint)::Bool
export glIsNameAMD
@getCFun "libGL" glGetPerfMonitorGroupsAMD glGetPerfMonitorGroupsAMD(numGroups::Ptr{GLint}, groupsSize::GLsizei, groups::Ptr{GLuint})::Void
export glGetPerfMonitorGroupsAMD
@getCFun "libGL" glGetPerfMonitorCountersAMD glGetPerfMonitorCountersAMD(group::GLuint, numCounters::Ptr{GLint}, maxActiveCounters::Ptr{GLint}, counterSize::GLsizei, counters::Ptr{GLuint})::Void
export glGetPerfMonitorCountersAMD
@getCFun "libGL" glGetPerfMonitorGroupStringAMD glGetPerfMonitorGroupStringAMD(group::GLuint, bufSize::GLsizei, length::Ptr{GLsizei}, groupString::Ptr{GLchar})::Void
export glGetPerfMonitorGroupStringAMD
@getCFun "libGL" glGetPerfMonitorCounterStringAMD glGetPerfMonitorCounterStringAMD(group::GLuint, counter::GLuint, bufSize::GLsizei, length::Ptr{GLsizei}, counterString::Ptr{GLchar})::Void
export glGetPerfMonitorCounterStringAMD
@getCFun "libGL" glGetPerfMonitorCounterInfoAMD glGetPerfMonitorCounterInfoAMD(group::GLuint, counter::GLuint, pname::GLenum, data::Ptr{Void})::Void
export glGetPerfMonitorCounterInfoAMD
@getCFun "libGL" glGenPerfMonitorsAMD glGenPerfMonitorsAMD(n::GLsizei, monitors::Ptr{GLuint})::Void
export glGenPerfMonitorsAMD
@getCFun "libGL" glDeletePerfMonitorsAMD glDeletePerfMonitorsAMD(n::GLsizei, monitors::Ptr{GLuint})::Void
export glDeletePerfMonitorsAMD
@getCFun "libGL" glSelectPerfMonitorCountersAMD glSelectPerfMonitorCountersAMD(monitor::GLuint, enable::GLboolean, group::GLuint, numCounters::GLint, counterList::Ptr{GLuint})::Void
export glSelectPerfMonitorCountersAMD
@getCFun "libGL" glBeginPerfMonitorAMD glBeginPerfMonitorAMD(monitor::GLuint)::Void
export glBeginPerfMonitorAMD
@getCFun "libGL" glEndPerfMonitorAMD glEndPerfMonitorAMD(monitor::GLuint)::Void
export glEndPerfMonitorAMD
@getCFun "libGL" glGetPerfMonitorCounterDataAMD glGetPerfMonitorCounterDataAMD(monitor::GLuint, pname::GLenum, dataSize::GLsizei, data::Ptr{GLuint}, bytesWritten::Ptr{GLint})::Void
export glGetPerfMonitorCounterDataAMD
@getCFun "libGL" glSetMultisamplefvAMD glSetMultisamplefvAMD(pname::GLenum, index::GLuint, val::Ptr{GLfloat})::Void
export glSetMultisamplefvAMD
@getCFun "libGL" glTexStorageSparseAMD glTexStorageSparseAMD(target::GLenum, internalFormat::GLenum, width::GLsizei, height::GLsizei, depth::GLsizei, layers::GLsizei, flags::GLbitfield)::Void
export glTexStorageSparseAMD
@getCFun "libGL" glTextureStorageSparseAMD glTextureStorageSparseAMD(texture::GLuint, target::GLenum, internalFormat::GLenum, width::GLsizei, height::GLsizei, depth::GLsizei, layers::GLsizei, flags::GLbitfield)::Void
export glTextureStorageSparseAMD
@getCFun "libGL" glStencilOpValueAMD glStencilOpValueAMD(face::GLenum, value::GLuint)::Void
export glStencilOpValueAMD
@getCFun "libGL" glTessellationFactorAMD glTessellationFactorAMD(factor::GLfloat)::Void
export glTessellationFactorAMD
@getCFun "libGL" glTessellationModeAMD glTessellationModeAMD(mode::GLenum)::Void
export glTessellationModeAMD

end
