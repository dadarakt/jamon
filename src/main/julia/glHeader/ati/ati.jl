module ATI 

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
const DRAW_BUFFER0_ATI = 0x8825
export DRAW_BUFFER0_ATI
const DRAW_BUFFER10_ATI = 0x882F
export DRAW_BUFFER10_ATI
const DRAW_BUFFER11_ATI = 0x8830
export DRAW_BUFFER11_ATI
const DRAW_BUFFER12_ATI = 0x8831
export DRAW_BUFFER12_ATI
const DRAW_BUFFER13_ATI = 0x8832
export DRAW_BUFFER13_ATI
const DRAW_BUFFER14_ATI = 0x8833
export DRAW_BUFFER14_ATI
const DRAW_BUFFER15_ATI = 0x8834
export DRAW_BUFFER15_ATI
const DRAW_BUFFER1_ATI = 0x8826
export DRAW_BUFFER1_ATI
const DRAW_BUFFER2_ATI = 0x8827
export DRAW_BUFFER2_ATI
const DRAW_BUFFER3_ATI = 0x8828
export DRAW_BUFFER3_ATI
const DRAW_BUFFER4_ATI = 0x8829
export DRAW_BUFFER4_ATI
const DRAW_BUFFER5_ATI = 0x882A
export DRAW_BUFFER5_ATI
const DRAW_BUFFER6_ATI = 0x882B
export DRAW_BUFFER6_ATI
const DRAW_BUFFER7_ATI = 0x882C
export DRAW_BUFFER7_ATI
const DRAW_BUFFER8_ATI = 0x882D
export DRAW_BUFFER8_ATI
const DRAW_BUFFER9_ATI = 0x882E
export DRAW_BUFFER9_ATI
const MAX_DRAW_BUFFERS_ATI = 0x8824
export MAX_DRAW_BUFFERS_ATI
const ELEMENT_ARRAY_ATI = 0x8768
export ELEMENT_ARRAY_ATI
const ELEMENT_ARRAY_POINTER_ATI = 0x876A
export ELEMENT_ARRAY_POINTER_ATI
const ELEMENT_ARRAY_TYPE_ATI = 0x8769
export ELEMENT_ARRAY_TYPE_ATI
const BUMP_ENVMAP_ATI = 0x877B
export BUMP_ENVMAP_ATI
const BUMP_NUM_TEX_UNITS_ATI = 0x8777
export BUMP_NUM_TEX_UNITS_ATI
const BUMP_ROT_MATRIX_ATI = 0x8775
export BUMP_ROT_MATRIX_ATI
const BUMP_ROT_MATRIX_SIZE_ATI = 0x8776
export BUMP_ROT_MATRIX_SIZE_ATI
const BUMP_TARGET_ATI = 0x877C
export BUMP_TARGET_ATI
const BUMP_TEX_UNITS_ATI = 0x8778
export BUMP_TEX_UNITS_ATI
const DU8DV8_ATI = 0x877A
export DU8DV8_ATI
const DUDV_ATI = 0x8779
export DUDV_ATI
const X2X_BIT_ATI = 0x00000001
export X2X_BIT_ATI
const X4X_BIT_ATI = 0x00000002
export X4X_BIT_ATI
const X8X_BIT_ATI = 0x00000004
export X8X_BIT_ATI
const ADD_ATI = 0x8963
export ADD_ATI
const BIAS_BIT_ATI = 0x00000008
export BIAS_BIT_ATI
const BLUE_BIT_ATI = 0x00000004
export BLUE_BIT_ATI
const CND0_ATI = 0x896B
export CND0_ATI
const CND_ATI = 0x896A
export CND_ATI
const COLOR_ALPHA_PAIRING_ATI = 0x8975
export COLOR_ALPHA_PAIRING_ATI
const COMP_BIT_ATI = 0x00000002
export COMP_BIT_ATI
const CON_0_ATI = 0x8941
export CON_0_ATI
const CON_10_ATI = 0x894B
export CON_10_ATI
const CON_11_ATI = 0x894C
export CON_11_ATI
const CON_12_ATI = 0x894D
export CON_12_ATI
const CON_13_ATI = 0x894E
export CON_13_ATI
const CON_14_ATI = 0x894F
export CON_14_ATI
const CON_15_ATI = 0x8950
export CON_15_ATI
const CON_16_ATI = 0x8951
export CON_16_ATI
const CON_17_ATI = 0x8952
export CON_17_ATI
const CON_18_ATI = 0x8953
export CON_18_ATI
const CON_19_ATI = 0x8954
export CON_19_ATI
const CON_1_ATI = 0x8942
export CON_1_ATI
const CON_20_ATI = 0x8955
export CON_20_ATI
const CON_21_ATI = 0x8956
export CON_21_ATI
const CON_22_ATI = 0x8957
export CON_22_ATI
const CON_23_ATI = 0x8958
export CON_23_ATI
const CON_24_ATI = 0x8959
export CON_24_ATI
const CON_25_ATI = 0x895A
export CON_25_ATI
const CON_26_ATI = 0x895B
export CON_26_ATI
const CON_27_ATI = 0x895C
export CON_27_ATI
const CON_28_ATI = 0x895D
export CON_28_ATI
const CON_29_ATI = 0x895E
export CON_29_ATI
const CON_2_ATI = 0x8943
export CON_2_ATI
const CON_30_ATI = 0x895F
export CON_30_ATI
const CON_31_ATI = 0x8960
export CON_31_ATI
const CON_3_ATI = 0x8944
export CON_3_ATI
const CON_4_ATI = 0x8945
export CON_4_ATI
const CON_5_ATI = 0x8946
export CON_5_ATI
const CON_6_ATI = 0x8947
export CON_6_ATI
const CON_7_ATI = 0x8948
export CON_7_ATI
const CON_8_ATI = 0x8949
export CON_8_ATI
const CON_9_ATI = 0x894A
export CON_9_ATI
const DOT2_ADD_ATI = 0x896C
export DOT2_ADD_ATI
const DOT3_ATI = 0x8966
export DOT3_ATI
const DOT4_ATI = 0x8967
export DOT4_ATI
const EIGHTH_BIT_ATI = 0x00000020
export EIGHTH_BIT_ATI
const FRAGMENT_SHADER_ATI = 0x8920
export FRAGMENT_SHADER_ATI
const GREEN_BIT_ATI = 0x00000002
export GREEN_BIT_ATI
const HALF_BIT_ATI = 0x00000008
export HALF_BIT_ATI
const LERP_ATI = 0x8969
export LERP_ATI
const MAD_ATI = 0x8968
export MAD_ATI
const MOV_ATI = 0x8961
export MOV_ATI
const MUL_ATI = 0x8964
export MUL_ATI
const NEGATE_BIT_ATI = 0x00000004
export NEGATE_BIT_ATI
const NUM_FRAGMENT_CONSTANTS_ATI = 0x896F
export NUM_FRAGMENT_CONSTANTS_ATI
const NUM_FRAGMENT_REGISTERS_ATI = 0x896E
export NUM_FRAGMENT_REGISTERS_ATI
const NUM_INPUT_INTERPOLATOR_COMPONENTS_ATI = 0x8973
export NUM_INPUT_INTERPOLATOR_COMPONENTS_ATI
const NUM_INSTRUCTIONS_PER_PASS_ATI = 0x8971
export NUM_INSTRUCTIONS_PER_PASS_ATI
const NUM_INSTRUCTIONS_TOTAL_ATI = 0x8972
export NUM_INSTRUCTIONS_TOTAL_ATI
const NUM_LOOPBACK_COMPONENTS_ATI = 0x8974
export NUM_LOOPBACK_COMPONENTS_ATI
const NUM_PASSES_ATI = 0x8970
export NUM_PASSES_ATI
const QUARTER_BIT_ATI = 0x00000010
export QUARTER_BIT_ATI
const RED_BIT_ATI = 0x00000001
export RED_BIT_ATI
const REG_0_ATI = 0x8921
export REG_0_ATI
const REG_10_ATI = 0x892B
export REG_10_ATI
const REG_11_ATI = 0x892C
export REG_11_ATI
const REG_12_ATI = 0x892D
export REG_12_ATI
const REG_13_ATI = 0x892E
export REG_13_ATI
const REG_14_ATI = 0x892F
export REG_14_ATI
const REG_15_ATI = 0x8930
export REG_15_ATI
const REG_16_ATI = 0x8931
export REG_16_ATI
const REG_17_ATI = 0x8932
export REG_17_ATI
const REG_18_ATI = 0x8933
export REG_18_ATI
const REG_19_ATI = 0x8934
export REG_19_ATI
const REG_1_ATI = 0x8922
export REG_1_ATI
const REG_20_ATI = 0x8935
export REG_20_ATI
const REG_21_ATI = 0x8936
export REG_21_ATI
const REG_22_ATI = 0x8937
export REG_22_ATI
const REG_23_ATI = 0x8938
export REG_23_ATI
const REG_24_ATI = 0x8939
export REG_24_ATI
const REG_25_ATI = 0x893A
export REG_25_ATI
const REG_26_ATI = 0x893B
export REG_26_ATI
const REG_27_ATI = 0x893C
export REG_27_ATI
const REG_28_ATI = 0x893D
export REG_28_ATI
const REG_29_ATI = 0x893E
export REG_29_ATI
const REG_2_ATI = 0x8923
export REG_2_ATI
const REG_30_ATI = 0x893F
export REG_30_ATI
const REG_31_ATI = 0x8940
export REG_31_ATI
const REG_3_ATI = 0x8924
export REG_3_ATI
const REG_4_ATI = 0x8925
export REG_4_ATI
const REG_5_ATI = 0x8926
export REG_5_ATI
const REG_6_ATI = 0x8927
export REG_6_ATI
const REG_7_ATI = 0x8928
export REG_7_ATI
const REG_8_ATI = 0x8929
export REG_8_ATI
const REG_9_ATI = 0x892A
export REG_9_ATI
const SATURATE_BIT_ATI = 0x00000040
export SATURATE_BIT_ATI
const SECONDARY_INTERPOLATOR_ATI = 0x896D
export SECONDARY_INTERPOLATOR_ATI
const SUB_ATI = 0x8965
export SUB_ATI
const SWIZZLE_STQ_ATI = 0x8977
export SWIZZLE_STQ_ATI
const SWIZZLE_STQ_DQ_ATI = 0x8979
export SWIZZLE_STQ_DQ_ATI
const SWIZZLE_STRQ_ATI = 0x897A
export SWIZZLE_STRQ_ATI
const SWIZZLE_STRQ_DQ_ATI = 0x897B
export SWIZZLE_STRQ_DQ_ATI
const SWIZZLE_STR_ATI = 0x8976
export SWIZZLE_STR_ATI
const SWIZZLE_STR_DR_ATI = 0x8978
export SWIZZLE_STR_DR_ATI
const RENDERBUFFER_FREE_MEMORY_ATI = 0x87FD
export RENDERBUFFER_FREE_MEMORY_ATI
const TEXTURE_FREE_MEMORY_ATI = 0x87FC
export TEXTURE_FREE_MEMORY_ATI
const VBO_FREE_MEMORY_ATI = 0x87FB
export VBO_FREE_MEMORY_ATI
const COLOR_CLEAR_UNCLAMPED_VALUE_ATI = 0x8835
export COLOR_CLEAR_UNCLAMPED_VALUE_ATI
const RGBA_FLOAT_MODE_ATI = 0x8820
export RGBA_FLOAT_MODE_ATI
const MAX_PN_TRIANGLES_TESSELATION_LEVEL_ATI = 0x87F1
export MAX_PN_TRIANGLES_TESSELATION_LEVEL_ATI
const PN_TRIANGLES_ATI = 0x87F0
export PN_TRIANGLES_ATI
const PN_TRIANGLES_NORMAL_MODE_ATI = 0x87F3
export PN_TRIANGLES_NORMAL_MODE_ATI
const PN_TRIANGLES_NORMAL_MODE_LINEAR_ATI = 0x87F7
export PN_TRIANGLES_NORMAL_MODE_LINEAR_ATI
const PN_TRIANGLES_NORMAL_MODE_QUADRATIC_ATI = 0x87F8
export PN_TRIANGLES_NORMAL_MODE_QUADRATIC_ATI
const PN_TRIANGLES_POINT_MODE_ATI = 0x87F2
export PN_TRIANGLES_POINT_MODE_ATI
const PN_TRIANGLES_POINT_MODE_CUBIC_ATI = 0x87F6
export PN_TRIANGLES_POINT_MODE_CUBIC_ATI
const PN_TRIANGLES_POINT_MODE_LINEAR_ATI = 0x87F5
export PN_TRIANGLES_POINT_MODE_LINEAR_ATI
const PN_TRIANGLES_TESSELATION_LEVEL_ATI = 0x87F4
export PN_TRIANGLES_TESSELATION_LEVEL_ATI
const STENCIL_BACK_FAIL_ATI = 0x8801
export STENCIL_BACK_FAIL_ATI
const STENCIL_BACK_FUNC_ATI = 0x8800
export STENCIL_BACK_FUNC_ATI
const STENCIL_BACK_PASS_DEPTH_FAIL_ATI = 0x8802
export STENCIL_BACK_PASS_DEPTH_FAIL_ATI
const STENCIL_BACK_PASS_DEPTH_PASS_ATI = 0x8803
export STENCIL_BACK_PASS_DEPTH_PASS_ATI
const TEXT_FRAGMENT_SHADER_ATI = 0x8200
export TEXT_FRAGMENT_SHADER_ATI
const MODULATE_ADD_ATI = 0x8744
export MODULATE_ADD_ATI
const MODULATE_SIGNED_ADD_ATI = 0x8745
export MODULATE_SIGNED_ADD_ATI
const MODULATE_SUBTRACT_ATI = 0x8746
export MODULATE_SUBTRACT_ATI
const ALPHA_FLOAT16_ATI = 0x881C
export ALPHA_FLOAT16_ATI
const ALPHA_FLOAT32_ATI = 0x8816
export ALPHA_FLOAT32_ATI
const INTENSITY_FLOAT16_ATI = 0x881D
export INTENSITY_FLOAT16_ATI
const INTENSITY_FLOAT32_ATI = 0x8817
export INTENSITY_FLOAT32_ATI
const LUMINANCE_ALPHA_FLOAT16_ATI = 0x881F
export LUMINANCE_ALPHA_FLOAT16_ATI
const LUMINANCE_ALPHA_FLOAT32_ATI = 0x8819
export LUMINANCE_ALPHA_FLOAT32_ATI
const LUMINANCE_FLOAT16_ATI = 0x881E
export LUMINANCE_FLOAT16_ATI
const LUMINANCE_FLOAT32_ATI = 0x8818
export LUMINANCE_FLOAT32_ATI
const RGBA_FLOAT16_ATI = 0x881A
export RGBA_FLOAT16_ATI
const RGBA_FLOAT32_ATI = 0x8814
export RGBA_FLOAT32_ATI
const RGB_FLOAT16_ATI = 0x881B
export RGB_FLOAT16_ATI
const RGB_FLOAT32_ATI = 0x8815
export RGB_FLOAT32_ATI
const MIRROR_CLAMP_ATI = 0x8742
export MIRROR_CLAMP_ATI
const MIRROR_CLAMP_TO_EDGE_ATI = 0x8743
export MIRROR_CLAMP_TO_EDGE_ATI
const ARRAY_OBJECT_BUFFER_ATI = 0x8766
export ARRAY_OBJECT_BUFFER_ATI
const ARRAY_OBJECT_OFFSET_ATI = 0x8767
export ARRAY_OBJECT_OFFSET_ATI
const DISCARD_ATI = 0x8763
export DISCARD_ATI
const DYNAMIC_ATI = 0x8761
export DYNAMIC_ATI
const OBJECT_BUFFER_SIZE_ATI = 0x8764
export OBJECT_BUFFER_SIZE_ATI
const OBJECT_BUFFER_USAGE_ATI = 0x8765
export OBJECT_BUFFER_USAGE_ATI
const PRESERVE_ATI = 0x8762
export PRESERVE_ATI
const STATIC_ATI = 0x8760
export STATIC_ATI
const MAX_VERTEX_STREAMS_ATI = 0x876B
export MAX_VERTEX_STREAMS_ATI
const VERTEX_SOURCE_ATI = 0x8774
export VERTEX_SOURCE_ATI
const VERTEX_STREAM0_ATI = 0x876C
export VERTEX_STREAM0_ATI
const VERTEX_STREAM1_ATI = 0x876D
export VERTEX_STREAM1_ATI
const VERTEX_STREAM2_ATI = 0x876E
export VERTEX_STREAM2_ATI
const VERTEX_STREAM3_ATI = 0x876F
export VERTEX_STREAM3_ATI
const VERTEX_STREAM4_ATI = 0x8770
export VERTEX_STREAM4_ATI
const VERTEX_STREAM5_ATI = 0x8771
export VERTEX_STREAM5_ATI
const VERTEX_STREAM6_ATI = 0x8772
export VERTEX_STREAM6_ATI
const VERTEX_STREAM7_ATI = 0x8773
export VERTEX_STREAM7_ATI
@getCFun "libGL" glDrawBuffersATI glDrawBuffersATI(n::GLsizei, bufs::Ptr{GLenum})::Void
export glDrawBuffersATI
@getCFun "libGL" glElementPointerATI glElementPointerATI(type_::GLenum, pointer::Ptr{Void})::Void
export glElementPointerATI
@getCFun "libGL" glDrawElementArrayATI glDrawElementArrayATI(mode::GLenum, count::GLsizei)::Void
export glDrawElementArrayATI
@getCFun "libGL" glDrawRangeElementArrayATI glDrawRangeElementArrayATI(mode::GLenum, start::GLuint, END::GLuint, count::GLsizei)::Void
export glDrawRangeElementArrayATI
@getCFun "libGL" glTexBumpParameterivATI glTexBumpParameterivATI(pname::GLenum, param::Ptr{GLint})::Void
export glTexBumpParameterivATI
@getCFun "libGL" glTexBumpParameterfvATI glTexBumpParameterfvATI(pname::GLenum, param::Ptr{GLfloat})::Void
export glTexBumpParameterfvATI
@getCFun "libGL" glGetTexBumpParameterivATI glGetTexBumpParameterivATI(pname::GLenum, param::Ptr{GLint})::Void
export glGetTexBumpParameterivATI
@getCFun "libGL" glGetTexBumpParameterfvATI glGetTexBumpParameterfvATI(pname::GLenum, param::Ptr{GLfloat})::Void
export glGetTexBumpParameterfvATI
@getCFun "libGL" glGenFragmentShadersATI glGenFragmentShadersATI(range_::GLuint)::Cuint
export glGenFragmentShadersATI
@getCFun "libGL" glBindFragmentShaderATI glBindFragmentShaderATI(id::GLuint)::Void
export glBindFragmentShaderATI
@getCFun "libGL" glDeleteFragmentShaderATI glDeleteFragmentShaderATI(id::GLuint)::Void
export glDeleteFragmentShaderATI
@getCFun "libGL" glBeginFragmentShaderATI glBeginFragmentShaderATI()::Void
export glBeginFragmentShaderATI
@getCFun "libGL" glEndFragmentShaderATI glEndFragmentShaderATI()::Void
export glEndFragmentShaderATI
@getCFun "libGL" glPassTexCoordATI glPassTexCoordATI(dst::GLuint, coord::GLuint, swizzle::GLenum)::Void
export glPassTexCoordATI
@getCFun "libGL" glSampleMapATI glSampleMapATI(dst::GLuint, interp::GLuint, swizzle::GLenum)::Void
export glSampleMapATI
@getCFun "libGL" glColorFragmentOp1ATI glColorFragmentOp1ATI(op::GLenum, dst::GLuint, dstMask::GLuint, dstMod::GLuint, arg1::GLuint, arg1Rep::GLuint, arg1Mod::GLuint)::Void
export glColorFragmentOp1ATI
@getCFun "libGL" glColorFragmentOp2ATI glColorFragmentOp2ATI(op::GLenum, dst::GLuint, dstMask::GLuint, dstMod::GLuint, arg1::GLuint, arg1Rep::GLuint, arg1Mod::GLuint, arg2::GLuint, arg2Rep::GLuint, arg2Mod::GLuint)::Void
export glColorFragmentOp2ATI
@getCFun "libGL" glColorFragmentOp3ATI glColorFragmentOp3ATI(op::GLenum, dst::GLuint, dstMask::GLuint, dstMod::GLuint, arg1::GLuint, arg1Rep::GLuint, arg1Mod::GLuint, arg2::GLuint, arg2Rep::GLuint, arg2Mod::GLuint, arg3::GLuint, arg3Rep::GLuint, arg3Mod::GLuint)::Void
export glColorFragmentOp3ATI
@getCFun "libGL" glAlphaFragmentOp1ATI glAlphaFragmentOp1ATI(op::GLenum, dst::GLuint, dstMod::GLuint, arg1::GLuint, arg1Rep::GLuint, arg1Mod::GLuint)::Void
export glAlphaFragmentOp1ATI
@getCFun "libGL" glAlphaFragmentOp2ATI glAlphaFragmentOp2ATI(op::GLenum, dst::GLuint, dstMod::GLuint, arg1::GLuint, arg1Rep::GLuint, arg1Mod::GLuint, arg2::GLuint, arg2Rep::GLuint, arg2Mod::GLuint)::Void
export glAlphaFragmentOp2ATI
@getCFun "libGL" glAlphaFragmentOp3ATI glAlphaFragmentOp3ATI(op::GLenum, dst::GLuint, dstMod::GLuint, arg1::GLuint, arg1Rep::GLuint, arg1Mod::GLuint, arg2::GLuint, arg2Rep::GLuint, arg2Mod::GLuint, arg3::GLuint, arg3Rep::GLuint, arg3Mod::GLuint)::Void
export glAlphaFragmentOp3ATI
@getCFun "libGL" glSetFragmentShaderConstantATI glSetFragmentShaderConstantATI(dst::GLuint, value::Ptr{GLfloat})::Void
export glSetFragmentShaderConstantATI
@getCFun "libGL" glMapObjectBufferATI glMapObjectBufferATI(buffer::GLuint)::Ptr{Void}
export glMapObjectBufferATI
@getCFun "libGL" glUnmapObjectBufferATI glUnmapObjectBufferATI(buffer::GLuint)::Void
export glUnmapObjectBufferATI
@getCFun "libGL" glPNTrianglesiATI glPNTrianglesiATI(pname::GLenum, param::GLint)::Void
export glPNTrianglesiATI
@getCFun "libGL" glPNTrianglesfATI glPNTrianglesfATI(pname::GLenum, param::GLfloat)::Void
export glPNTrianglesfATI
@getCFun "libGL" glStencilOpSeparateATI glStencilOpSeparateATI(face::GLenum, sfail::GLenum, dpfail::GLenum, dppass::GLenum)::Void
export glStencilOpSeparateATI
@getCFun "libGL" glStencilFuncSeparateATI glStencilFuncSeparateATI(frontfunc::GLenum, backfunc::GLenum, ref::GLint, mask::GLuint)::Void
export glStencilFuncSeparateATI
@getCFun "libGL" glNewObjectBufferATI glNewObjectBufferATI(size::GLsizei, pointer::Ptr{Void}, usage::GLenum)::Cuint
export glNewObjectBufferATI
@getCFun "libGL" glIsObjectBufferATI glIsObjectBufferATI(buffer::GLuint)::Bool
export glIsObjectBufferATI
@getCFun "libGL" glUpdateObjectBufferATI glUpdateObjectBufferATI(buffer::GLuint, offset::GLuint, size::GLsizei, pointer::Ptr{Void}, preserve::GLenum)::Void
export glUpdateObjectBufferATI
@getCFun "libGL" glGetObjectBufferfvATI glGetObjectBufferfvATI(buffer::GLuint, pname::GLenum, params::Ptr{GLfloat})::Void
export glGetObjectBufferfvATI
@getCFun "libGL" glGetObjectBufferivATI glGetObjectBufferivATI(buffer::GLuint, pname::GLenum, params::Ptr{GLint})::Void
export glGetObjectBufferivATI
@getCFun "libGL" glFreeObjectBufferATI glFreeObjectBufferATI(buffer::GLuint)::Void
export glFreeObjectBufferATI
@getCFun "libGL" glArrayObjectATI glArrayObjectATI(array::GLenum, size::GLint, type_::GLenum, stride::GLsizei, buffer::GLuint, offset::GLuint)::Void
export glArrayObjectATI
@getCFun "libGL" glGetArrayObjectfvATI glGetArrayObjectfvATI(array::GLenum, pname::GLenum, params::Ptr{GLfloat})::Void
export glGetArrayObjectfvATI
@getCFun "libGL" glGetArrayObjectivATI glGetArrayObjectivATI(array::GLenum, pname::GLenum, params::Ptr{GLint})::Void
export glGetArrayObjectivATI
@getCFun "libGL" glVariantArrayObjectATI glVariantArrayObjectATI(id::GLuint, type_::GLenum, stride::GLsizei, buffer::GLuint, offset::GLuint)::Void
export glVariantArrayObjectATI
@getCFun "libGL" glGetVariantArrayObjectfvATI glGetVariantArrayObjectfvATI(id::GLuint, pname::GLenum, params::Ptr{GLfloat})::Void
export glGetVariantArrayObjectfvATI
@getCFun "libGL" glGetVariantArrayObjectivATI glGetVariantArrayObjectivATI(id::GLuint, pname::GLenum, params::Ptr{GLint})::Void
export glGetVariantArrayObjectivATI
@getCFun "libGL" glVertexAttribArrayObjectATI glVertexAttribArrayObjectATI(index::GLuint, size::GLint, type_::GLenum, normalized::GLboolean, stride::GLsizei, buffer::GLuint, offset::GLuint)::Void
export glVertexAttribArrayObjectATI
@getCFun "libGL" glGetVertexAttribArrayObjectfvATI glGetVertexAttribArrayObjectfvATI(index::GLuint, pname::GLenum, params::Ptr{GLfloat})::Void
export glGetVertexAttribArrayObjectfvATI
@getCFun "libGL" glGetVertexAttribArrayObjectivATI glGetVertexAttribArrayObjectivATI(index::GLuint, pname::GLenum, params::Ptr{GLint})::Void
export glGetVertexAttribArrayObjectivATI
@getCFun "libGL" glVertexStream1sATI glVertexStream1sATI(stream::GLenum, x::GLshort)::Void
export glVertexStream1sATI
@getCFun "libGL" glVertexStream1svATI glVertexStream1svATI(stream::GLenum, coords::Ptr{GLshort})::Void
export glVertexStream1svATI
@getCFun "libGL" glVertexStream1iATI glVertexStream1iATI(stream::GLenum, x::GLint)::Void
export glVertexStream1iATI
@getCFun "libGL" glVertexStream1ivATI glVertexStream1ivATI(stream::GLenum, coords::Ptr{GLint})::Void
export glVertexStream1ivATI
@getCFun "libGL" glVertexStream1fATI glVertexStream1fATI(stream::GLenum, x::GLfloat)::Void
export glVertexStream1fATI
@getCFun "libGL" glVertexStream1fvATI glVertexStream1fvATI(stream::GLenum, coords::Ptr{GLfloat})::Void
export glVertexStream1fvATI
@getCFun "libGL" glVertexStream1dATI glVertexStream1dATI(stream::GLenum, x::GLdouble)::Void
export glVertexStream1dATI
@getCFun "libGL" glVertexStream1dvATI glVertexStream1dvATI(stream::GLenum, coords::Ptr{GLdouble})::Void
export glVertexStream1dvATI
@getCFun "libGL" glVertexStream2sATI glVertexStream2sATI(stream::GLenum, x::GLshort, y::GLshort)::Void
export glVertexStream2sATI
@getCFun "libGL" glVertexStream2svATI glVertexStream2svATI(stream::GLenum, coords::Ptr{GLshort})::Void
export glVertexStream2svATI
@getCFun "libGL" glVertexStream2iATI glVertexStream2iATI(stream::GLenum, x::GLint, y::GLint)::Void
export glVertexStream2iATI
@getCFun "libGL" glVertexStream2ivATI glVertexStream2ivATI(stream::GLenum, coords::Ptr{GLint})::Void
export glVertexStream2ivATI
@getCFun "libGL" glVertexStream2fATI glVertexStream2fATI(stream::GLenum, x::GLfloat, y::GLfloat)::Void
export glVertexStream2fATI
@getCFun "libGL" glVertexStream2fvATI glVertexStream2fvATI(stream::GLenum, coords::Ptr{GLfloat})::Void
export glVertexStream2fvATI
@getCFun "libGL" glVertexStream2dATI glVertexStream2dATI(stream::GLenum, x::GLdouble, y::GLdouble)::Void
export glVertexStream2dATI
@getCFun "libGL" glVertexStream2dvATI glVertexStream2dvATI(stream::GLenum, coords::Ptr{GLdouble})::Void
export glVertexStream2dvATI
@getCFun "libGL" glVertexStream3sATI glVertexStream3sATI(stream::GLenum, x::GLshort, y::GLshort, z::GLshort)::Void
export glVertexStream3sATI
@getCFun "libGL" glVertexStream3svATI glVertexStream3svATI(stream::GLenum, coords::Ptr{GLshort})::Void
export glVertexStream3svATI
@getCFun "libGL" glVertexStream3iATI glVertexStream3iATI(stream::GLenum, x::GLint, y::GLint, z::GLint)::Void
export glVertexStream3iATI
@getCFun "libGL" glVertexStream3ivATI glVertexStream3ivATI(stream::GLenum, coords::Ptr{GLint})::Void
export glVertexStream3ivATI
@getCFun "libGL" glVertexStream3fATI glVertexStream3fATI(stream::GLenum, x::GLfloat, y::GLfloat, z::GLfloat)::Void
export glVertexStream3fATI
@getCFun "libGL" glVertexStream3fvATI glVertexStream3fvATI(stream::GLenum, coords::Ptr{GLfloat})::Void
export glVertexStream3fvATI
@getCFun "libGL" glVertexStream3dATI glVertexStream3dATI(stream::GLenum, x::GLdouble, y::GLdouble, z::GLdouble)::Void
export glVertexStream3dATI
@getCFun "libGL" glVertexStream3dvATI glVertexStream3dvATI(stream::GLenum, coords::Ptr{GLdouble})::Void
export glVertexStream3dvATI
@getCFun "libGL" glVertexStream4sATI glVertexStream4sATI(stream::GLenum, x::GLshort, y::GLshort, z::GLshort, w::GLshort)::Void
export glVertexStream4sATI
@getCFun "libGL" glVertexStream4svATI glVertexStream4svATI(stream::GLenum, coords::Ptr{GLshort})::Void
export glVertexStream4svATI
@getCFun "libGL" glVertexStream4iATI glVertexStream4iATI(stream::GLenum, x::GLint, y::GLint, z::GLint, w::GLint)::Void
export glVertexStream4iATI
@getCFun "libGL" glVertexStream4ivATI glVertexStream4ivATI(stream::GLenum, coords::Ptr{GLint})::Void
export glVertexStream4ivATI
@getCFun "libGL" glVertexStream4fATI glVertexStream4fATI(stream::GLenum, x::GLfloat, y::GLfloat, z::GLfloat, w::GLfloat)::Void
export glVertexStream4fATI
@getCFun "libGL" glVertexStream4fvATI glVertexStream4fvATI(stream::GLenum, coords::Ptr{GLfloat})::Void
export glVertexStream4fvATI
@getCFun "libGL" glVertexStream4dATI glVertexStream4dATI(stream::GLenum, x::GLdouble, y::GLdouble, z::GLdouble, w::GLdouble)::Void
export glVertexStream4dATI
@getCFun "libGL" glVertexStream4dvATI glVertexStream4dvATI(stream::GLenum, coords::Ptr{GLdouble})::Void
export glVertexStream4dvATI
@getCFun "libGL" glNormalStream3bATI glNormalStream3bATI(stream::GLenum, nx::GLbyte, ny::GLbyte, nz::GLbyte)::Void
export glNormalStream3bATI
@getCFun "libGL" glNormalStream3bvATI glNormalStream3bvATI(stream::GLenum, coords::Ptr{GLbyte})::Void
export glNormalStream3bvATI
@getCFun "libGL" glNormalStream3sATI glNormalStream3sATI(stream::GLenum, nx::GLshort, ny::GLshort, nz::GLshort)::Void
export glNormalStream3sATI
@getCFun "libGL" glNormalStream3svATI glNormalStream3svATI(stream::GLenum, coords::Ptr{GLshort})::Void
export glNormalStream3svATI
@getCFun "libGL" glNormalStream3iATI glNormalStream3iATI(stream::GLenum, nx::GLint, ny::GLint, nz::GLint)::Void
export glNormalStream3iATI
@getCFun "libGL" glNormalStream3ivATI glNormalStream3ivATI(stream::GLenum, coords::Ptr{GLint})::Void
export glNormalStream3ivATI
@getCFun "libGL" glNormalStream3fATI glNormalStream3fATI(stream::GLenum, nx::GLfloat, ny::GLfloat, nz::GLfloat)::Void
export glNormalStream3fATI
@getCFun "libGL" glNormalStream3fvATI glNormalStream3fvATI(stream::GLenum, coords::Ptr{GLfloat})::Void
export glNormalStream3fvATI
@getCFun "libGL" glNormalStream3dATI glNormalStream3dATI(stream::GLenum, nx::GLdouble, ny::GLdouble, nz::GLdouble)::Void
export glNormalStream3dATI
@getCFun "libGL" glNormalStream3dvATI glNormalStream3dvATI(stream::GLenum, coords::Ptr{GLdouble})::Void
export glNormalStream3dvATI
@getCFun "libGL" glClientActiveVertexStreamATI glClientActiveVertexStreamATI(stream::GLenum)::Void
export glClientActiveVertexStreamATI
@getCFun "libGL" glVertexBlendEnviATI glVertexBlendEnviATI(pname::GLenum, param::GLint)::Void
export glVertexBlendEnviATI
@getCFun "libGL" glVertexBlendEnvfATI glVertexBlendEnvfATI(pname::GLenum, param::GLfloat)::Void
export glVertexBlendEnvfATI

end
