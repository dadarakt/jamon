#function bodies
@createOpenGLFun glDrawRangeElementArrayATI(mode::GLenum, start::GLuint, END::GLuint, count::GLsizei)::Void
@createOpenGLFun glColorFragmentOp1ATI(op::GLenum, dst::GLuint, dstMask::GLuint, dstMod::GLuint, arg1::GLuint, arg1Rep::GLuint, arg1Mod::GLuint)::Void
@createOpenGLFun glVertexStream4sATI(stream::GLenum, x::GLshort, y::GLshort, z::GLshort, w::GLshort)::Void
@createOpenGLFun glVertexBlendEnvfATI(pname::GLenum, param::GLfloat)::Void
@createOpenGLFun glVertexStream2sATI(stream::GLenum, x::GLshort, y::GLshort)::Void
@createOpenGLFun glNormalStream3fATI(stream::GLenum, nx::GLfloat, ny::GLfloat, nz::GLfloat)::Void
@createOpenGLFun glMapObjectBufferATI(buffer::GLuint)::Ptr{Void}
@createOpenGLFun glVertexStream4iATI(stream::GLenum, x::GLint, y::GLint, z::GLint, w::GLint)::Void
@createOpenGLFun glGetArrayObjectivATI(array::GLenum, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glVertexStream2dATI(stream::GLenum, x::GLdouble, y::GLdouble)::Void
@createOpenGLFun glNormalStream3fvATI(stream::GLenum, coords::Ptr{GLfloat})::Void
@createOpenGLFun glVertexStream4dATI(stream::GLenum, x::GLdouble, y::GLdouble, z::GLdouble, w::GLdouble)::Void
@createOpenGLFun glVertexStream3ivATI(stream::GLenum, coords::Ptr{GLint})::Void
@createOpenGLFun glAlphaFragmentOp3ATI(op::GLenum, dst::GLuint, dstMod::GLuint, arg1::GLuint, arg1Rep::GLuint, arg1Mod::GLuint, arg2::GLuint, arg2Rep::GLuint, arg2Mod::GLuint, arg3::GLuint, arg3Rep::GLuint, arg3Mod::GLuint)::Void
@createOpenGLFun glVertexStream4ivATI(stream::GLenum, coords::Ptr{GLint})::Void
@createOpenGLFun glVertexStream3fvATI(stream::GLenum, coords::Ptr{GLfloat})::Void
@createOpenGLFun glVertexStream1fATI(stream::GLenum, x::GLfloat)::Void
@createOpenGLFun glStencilOpSeparateATI(face::GLenum, sfail::GLenum, dpfail::GLenum, dppass::GLenum)::Void
@createOpenGLFun glGetObjectBufferfvATI(buffer::GLuint, pname::GLenum, params::Ptr{GLfloat})::Void
@createOpenGLFun glVertexStream3sATI(stream::GLenum, x::GLshort, y::GLshort, z::GLshort)::Void
@createOpenGLFun glVertexStream4dvATI(stream::GLenum, coords::Ptr{GLdouble})::Void
@createOpenGLFun glGenFragmentShadersATI(range_::GLuint)::Cuint
@createOpenGLFun glEndFragmentShaderATI()::Void
@createOpenGLFun glVertexStream1svATI(stream::GLenum, coords::Ptr{GLshort})::Void
@createOpenGLFun glDrawElementArrayATI(mode::GLenum, count::GLsizei)::Void
@createOpenGLFun glGetArrayObjectfvATI(array::GLenum, pname::GLenum, params::Ptr{GLfloat})::Void
@createOpenGLFun glAlphaFragmentOp1ATI(op::GLenum, dst::GLuint, dstMod::GLuint, arg1::GLuint, arg1Rep::GLuint, arg1Mod::GLuint)::Void
@createOpenGLFun glUpdateObjectBufferATI(buffer::GLuint, offset::GLuint, size::GLsizei, pointer::Ptr{Void}, preserve::GLenum)::Void
@createOpenGLFun glVertexStream2svATI(stream::GLenum, coords::Ptr{GLshort})::Void
@createOpenGLFun glVertexStream3dvATI(stream::GLenum, coords::Ptr{GLdouble})::Void
@createOpenGLFun glVertexBlendEnviATI(pname::GLenum, param::GLint)::Void
@createOpenGLFun glDeleteFragmentShaderATI(id::GLuint)::Void
@createOpenGLFun glPNTrianglesfATI(pname::GLenum, param::GLfloat)::Void
@createOpenGLFun glNewObjectBufferATI(size::GLsizei, pointer::Ptr{Void}, usage::GLenum)::Cuint
@createOpenGLFun glUnmapObjectBufferATI(buffer::GLuint)::Void
@createOpenGLFun glGetTexBumpParameterfvATI(pname::GLenum, param::Ptr{GLfloat})::Void
@createOpenGLFun glVertexStream2ivATI(stream::GLenum, coords::Ptr{GLint})::Void
@createOpenGLFun glNormalStream3sATI(stream::GLenum, nx::GLshort, ny::GLshort, nz::GLshort)::Void
@createOpenGLFun glGetVariantArrayObjectivATI(id::GLuint, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glArrayObjectATI(array::GLenum, size::GLint, type_::GLenum, stride::GLsizei, buffer::GLuint, offset::GLuint)::Void
@createOpenGLFun glVertexStream3dATI(stream::GLenum, x::GLdouble, y::GLdouble, z::GLdouble)::Void
@createOpenGLFun glGetVertexAttribArrayObjectfvATI(index::GLuint, pname::GLenum, params::Ptr{GLfloat})::Void
@createOpenGLFun glNormalStream3bATI(stream::GLenum, nx::GLbyte, ny::GLbyte, nz::GLbyte)::Void
@createOpenGLFun glBindFragmentShaderATI(id::GLuint)::Void
@createOpenGLFun glColorFragmentOp2ATI(op::GLenum, dst::GLuint, dstMask::GLuint, dstMod::GLuint, arg1::GLuint, arg1Rep::GLuint, arg1Mod::GLuint, arg2::GLuint, arg2Rep::GLuint, arg2Mod::GLuint)::Void
@createOpenGLFun glDrawBuffersATI(n::GLsizei, bufs::Ptr{GLenum})::Void
@createOpenGLFun glNormalStream3dvATI(stream::GLenum, coords::Ptr{GLdouble})::Void
@createOpenGLFun glTexBumpParameterfvATI(pname::GLenum, param::Ptr{GLfloat})::Void
@createOpenGLFun glVertexAttribArrayObjectATI(index::GLuint, size::GLint, type_::GLenum, normalized::GLboolean, stride::GLsizei, buffer::GLuint, offset::GLuint)::Void
@createOpenGLFun glGetObjectBufferivATI(buffer::GLuint, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glClientActiveVertexStreamATI(stream::GLenum)::Void
@createOpenGLFun glElementPointerATI(type_::GLenum, pointer::Ptr{Void})::Void
@createOpenGLFun glTexBumpParameterivATI(pname::GLenum, param::Ptr{GLint})::Void
@createOpenGLFun glGetVariantArrayObjectfvATI(id::GLuint, pname::GLenum, params::Ptr{GLfloat})::Void
@createOpenGLFun glGetTexBumpParameterivATI(pname::GLenum, param::Ptr{GLint})::Void
@createOpenGLFun glColorFragmentOp3ATI(op::GLenum, dst::GLuint, dstMask::GLuint, dstMod::GLuint, arg1::GLuint, arg1Rep::GLuint, arg1Mod::GLuint, arg2::GLuint, arg2Rep::GLuint, arg2Mod::GLuint, arg3::GLuint, arg3Rep::GLuint, arg3Mod::GLuint)::Void
@createOpenGLFun glPassTexCoordATI(dst::GLuint, coord::GLuint, swizzle::GLenum)::Void
@createOpenGLFun glNormalStream3iATI(stream::GLenum, nx::GLint, ny::GLint, nz::GLint)::Void
@createOpenGLFun glNormalStream3svATI(stream::GLenum, coords::Ptr{GLshort})::Void
@createOpenGLFun glVertexStream2dvATI(stream::GLenum, coords::Ptr{GLdouble})::Void
@createOpenGLFun glSampleMapATI(dst::GLuint, interp::GLuint, swizzle::GLenum)::Void
@createOpenGLFun glVertexStream1dvATI(stream::GLenum, coords::Ptr{GLdouble})::Void
@createOpenGLFun glFreeObjectBufferATI(buffer::GLuint)::Void
@createOpenGLFun glVertexStream1sATI(stream::GLenum, x::GLshort)::Void
@createOpenGLFun glVertexStream1dATI(stream::GLenum, x::GLdouble)::Void
@createOpenGLFun glVertexStream2fATI(stream::GLenum, x::GLfloat, y::GLfloat)::Void
@createOpenGLFun glVertexStream3svATI(stream::GLenum, coords::Ptr{GLshort})::Void
@createOpenGLFun glVertexStream3fATI(stream::GLenum, x::GLfloat, y::GLfloat, z::GLfloat)::Void
@createOpenGLFun glVertexStream3iATI(stream::GLenum, x::GLint, y::GLint, z::GLint)::Void
@createOpenGLFun glNormalStream3bvATI(stream::GLenum, coords::Ptr{GLbyte})::Void
@createOpenGLFun glSetFragmentShaderConstantATI(dst::GLuint, value::Ptr{GLfloat})::Void
@createOpenGLFun glIsObjectBufferATI(buffer::GLuint)::Bool
@createOpenGLFun glPNTrianglesiATI(pname::GLenum, param::GLint)::Void
@createOpenGLFun glBeginFragmentShaderATI()::Void
@createOpenGLFun glVertexStream4fATI(stream::GLenum, x::GLfloat, y::GLfloat, z::GLfloat, w::GLfloat)::Void
@createOpenGLFun glVertexStream2iATI(stream::GLenum, x::GLint, y::GLint)::Void
@createOpenGLFun glVertexStream1iATI(stream::GLenum, x::GLint)::Void
@createOpenGLFun glVertexStream1fvATI(stream::GLenum, coords::Ptr{GLfloat})::Void
@createOpenGLFun glNormalStream3dATI(stream::GLenum, nx::GLdouble, ny::GLdouble, nz::GLdouble)::Void
@createOpenGLFun glNormalStream3ivATI(stream::GLenum, coords::Ptr{GLint})::Void
@createOpenGLFun glStencilFuncSeparateATI(frontfunc::GLenum, backfunc::GLenum, ref::GLint, mask::GLuint)::Void
@createOpenGLFun glVertexStream2fvATI(stream::GLenum, coords::Ptr{GLfloat})::Void
@createOpenGLFun glGetVertexAttribArrayObjectivATI(index::GLuint, pname::GLenum, params::Ptr{GLint})::Void
@createOpenGLFun glVertexStream1ivATI(stream::GLenum, coords::Ptr{GLint})::Void
@createOpenGLFun glVertexStream4fvATI(stream::GLenum, coords::Ptr{GLfloat})::Void
@createOpenGLFun glAlphaFragmentOp2ATI(op::GLenum, dst::GLuint, dstMod::GLuint, arg1::GLuint, arg1Rep::GLuint, arg1Mod::GLuint, arg2::GLuint, arg2Rep::GLuint, arg2Mod::GLuint)::Void
@createOpenGLFun glVariantArrayObjectATI(id::GLuint, type_::GLenum, stride::GLsizei, buffer::GLuint, offset::GLuint)::Void
@createOpenGLFun glVertexStream4svATI(stream::GLenum, coords::Ptr{GLshort})::Void
#constants
const GL_DOT2_ADD_ATI                                                 = 0x896C
const GL_DRAW_BUFFER3_ATI                                             = 0x8828
const GL_OBJECT_BUFFER_SIZE_ATI                                       = 0x8764
const GL_HALF_BIT_ATI                                                 = 0x00000008
const GL_REG_19_ATI                                                   = 0x8934
const GL_VERTEX_STREAM5_ATI                                           = 0x8771
const GL_CON_9_ATI                                                    = 0x894A
const GL_NEGATE_BIT_ATI                                               = 0x00000004
const GL_VERTEX_STREAM1_ATI                                           = 0x876D
const GL_RGB_FLOAT16_ATI                                              = 0x881B
const GL_REG_28_ATI                                                   = 0x893D
const GL_ALPHA_FLOAT16_ATI                                            = 0x881C
const GL_DRAW_BUFFER13_ATI                                            = 0x8832
const GL_MODULATE_SUBTRACT_ATI                                        = 0x8746
const GL_COLOR_ALPHA_PAIRING_ATI                                      = 0x8975
const GL_CON_26_ATI                                                   = 0x895B
const GL_DRAW_BUFFER1_ATI                                             = 0x8826
const GL_DRAW_BUFFER2_ATI                                             = 0x8827
const GL_VERTEX_STREAM2_ATI                                           = 0x876E
const GL_BUMP_ROT_MATRIX_ATI                                          = 0x8775
const GL_MIRROR_CLAMP_ATI                                             = 0x8742
const GL_SUB_ATI                                                      = 0x8965
const GL_DOT3_ATI                                                     = 0x8966
const GL_REG_31_ATI                                                   = 0x8940
const GL_MIRROR_CLAMP_TO_EDGE_ATI                                     = 0x8743
const GL_SATURATE_BIT_ATI                                             = 0x00000040
const GL_PRESERVE_ATI                                                 = 0x8762
const GL_CON_8_ATI                                                    = 0x8949
const GL_EIGHTH_BIT_ATI                                               = 0x00000020
const GL_STENCIL_BACK_FUNC_ATI                                        = 0x8800
const GL_VERTEX_SOURCE_ATI                                            = 0x8774
const GL_REG_0_ATI                                                    = 0x8921
const GL_REG_21_ATI                                                   = 0x8936
const GL_REG_4_ATI                                                    = 0x8925
const GL_DRAW_BUFFER6_ATI                                             = 0x882B
const GL_PN_TRIANGLES_POINT_MODE_ATI                                  = 0x87F2
const GL_LUMINANCE_ALPHA_FLOAT16_ATI                                  = 0x881F
const GL_REG_23_ATI                                                   = 0x8938
const GL_DRAW_BUFFER0_ATI                                             = 0x8825
const GL_VERTEX_STREAM4_ATI                                           = 0x8770
const GL_REG_16_ATI                                                   = 0x8931
const GL_CON_16_ATI                                                   = 0x8951
const GL_CON_0_ATI                                                    = 0x8941
const GL_CON_30_ATI                                                   = 0x895F
const GL_CON_29_ATI                                                   = 0x895E
const GL_REG_26_ATI                                                   = 0x893B
const GL_REG_8_ATI                                                    = 0x8929
const GL_REG_10_ATI                                                   = 0x892B
const GL_REG_25_ATI                                                   = 0x893A
const GL_MAD_ATI                                                      = 0x8968
const GL_ARRAY_OBJECT_OFFSET_ATI                                      = 0x8767
const GL_CON_13_ATI                                                   = 0x894E
const GL_REG_5_ATI                                                    = 0x8926
const GL_REG_7_ATI                                                    = 0x8928
const GL_DYNAMIC_ATI                                                  = 0x8761
const GL_SWIZZLE_STR_DR_ATI                                           = 0x8978
const GL_REG_15_ATI                                                   = 0x8930
const GL_REG_29_ATI                                                   = 0x893E
const GL_RGBA_FLOAT16_ATI                                             = 0x881A
const GL_MAX_DRAW_BUFFERS_ATI                                         = 0x8824
const GL_CON_14_ATI                                                   = 0x894F
const GL_DRAW_BUFFER10_ATI                                            = 0x882F
const GL_BUMP_NUM_TEX_UNITS_ATI                                       = 0x8777
const GL_PN_TRIANGLES_ATI                                             = 0x87F0
const GL_CON_10_ATI                                                   = 0x894B
const GL_PN_TRIANGLES_NORMAL_MODE_ATI                                 = 0x87F3
const GL_CON_17_ATI                                                   = 0x8952
const GL_CON_15_ATI                                                   = 0x8950
const GL_TEXT_FRAGMENT_SHADER_ATI                                     = 0x8200
const GL_REG_27_ATI                                                   = 0x893C
const GL_REG_6_ATI                                                    = 0x8927
const GL_REG_9_ATI                                                    = 0x892A
const GL_CON_23_ATI                                                   = 0x8958
const GL_DRAW_BUFFER5_ATI                                             = 0x882A
const GL_BUMP_ROT_MATRIX_SIZE_ATI                                     = 0x8776
const GL_CON_2_ATI                                                    = 0x8943
const GL_CON_19_ATI                                                   = 0x8954
const GL_STENCIL_BACK_PASS_DEPTH_FAIL_ATI                             = 0x8802
const GL_SWIZZLE_STQ_DQ_ATI                                           = 0x8979
const GL_CON_27_ATI                                                   = 0x895C
const GL_VERTEX_STREAM0_ATI                                           = 0x876C
const GL_LERP_ATI                                                     = 0x8969
const GL_REG_1_ATI                                                    = 0x8922
const GL_REG_24_ATI                                                   = 0x8939
const GL_NUM_LOOPBACK_COMPONENTS_ATI                                  = 0x8974
const GL_NUM_INSTRUCTIONS_TOTAL_ATI                                   = 0x8972
const GL_CON_18_ATI                                                   = 0x8953
const GL_RED_BIT_ATI                                                  = 0x00000001
const GL_SECONDARY_INTERPOLATOR_ATI                                   = 0x896D
const GL_NUM_INSTRUCTIONS_PER_PASS_ATI                                = 0x8971
const GL_STENCIL_BACK_PASS_DEPTH_PASS_ATI                             = 0x8803
const GL_STATIC_ATI                                                   = 0x8760
const GL_PN_TRIANGLES_NORMAL_MODE_QUADRATIC_ATI                       = 0x87F8
const GL_LUMINANCE_FLOAT16_ATI                                        = 0x881E
const GL_CON_31_ATI                                                   = 0x8960
const GL_DUDV_ATI                                                     = 0x8779
const GL_CON_22_ATI                                                   = 0x8957
const GL_REG_20_ATI                                                   = 0x8935
const GL_ELEMENT_ARRAY_TYPE_ATI                                       = 0x8769
const GL_CON_24_ATI                                                   = 0x8959
const GL_PN_TRIANGLES_POINT_MODE_CUBIC_ATI                            = 0x87F6
const GL_COMP_BIT_ATI                                                 = 0x00000002
const GL_CND0_ATI                                                     = 0x896B
const GL_CON_20_ATI                                                   = 0x8955
const GL_GREEN_BIT_ATI                                                = 0x00000002
const GL_X2X_BIT_ATI                                                  = 0x00000001
const GL_BUMP_TEX_UNITS_ATI                                           = 0x8778
const GL_DOT4_ATI                                                     = 0x8967
const GL_INTENSITY_FLOAT32_ATI                                        = 0x8817
const GL_CON_21_ATI                                                   = 0x8956
const GL_VBO_FREE_MEMORY_ATI                                          = 0x87FB
const GL_BLUE_BIT_ATI                                                 = 0x00000004
const GL_MAX_PN_TRIANGLES_TESSELATION_LEVEL_ATI                       = 0x87F1
const GL_SWIZZLE_STQ_ATI                                              = 0x8977
const GL_CON_5_ATI                                                    = 0x8946
const GL_X8X_BIT_ATI                                                  = 0x00000004
const GL_COLOR_CLEAR_UNCLAMPED_VALUE_ATI                              = 0x8835
const GL_CON_6_ATI                                                    = 0x8947
const GL_LUMINANCE_ALPHA_FLOAT32_ATI                                  = 0x8819
const GL_REG_22_ATI                                                   = 0x8937
const GL_ADD_ATI                                                      = 0x8963
const GL_INTENSITY_FLOAT16_ATI                                        = 0x881D
const GL_ARRAY_OBJECT_BUFFER_ATI                                      = 0x8766
const GL_BUMP_ENVMAP_ATI                                              = 0x877B
const GL_RGBA_FLOAT_MODE_ATI                                          = 0x8820
const GL_X4X_BIT_ATI                                                  = 0x00000002
const GL_CND_ATI                                                      = 0x896A
const GL_CON_11_ATI                                                   = 0x894C
const GL_BIAS_BIT_ATI                                                 = 0x00000008
const GL_SWIZZLE_STRQ_ATI                                             = 0x897A
const GL_PN_TRIANGLES_POINT_MODE_LINEAR_ATI                           = 0x87F5
const GL_RENDERBUFFER_FREE_MEMORY_ATI                                 = 0x87FD
const GL_REG_30_ATI                                                   = 0x893F
const GL_DRAW_BUFFER9_ATI                                             = 0x882E
const GL_MODULATE_ADD_ATI                                             = 0x8744
const GL_MAX_VERTEX_STREAMS_ATI                                       = 0x876B
const GL_ALPHA_FLOAT32_ATI                                            = 0x8816
const GL_REG_14_ATI                                                   = 0x892F
const GL_ELEMENT_ARRAY_POINTER_ATI                                    = 0x876A
const GL_MUL_ATI                                                      = 0x8964
const GL_NUM_FRAGMENT_REGISTERS_ATI                                   = 0x896E
const GL_VERTEX_STREAM6_ATI                                           = 0x8772
const GL_RGB_FLOAT32_ATI                                              = 0x8815
const GL_REG_12_ATI                                                   = 0x892D
const GL_CON_12_ATI                                                   = 0x894D
const GL_DRAW_BUFFER7_ATI                                             = 0x882C
const GL_LUMINANCE_FLOAT32_ATI                                        = 0x8818
const GL_QUARTER_BIT_ATI                                              = 0x00000010
const GL_REG_13_ATI                                                   = 0x892E
const GL_CON_28_ATI                                                   = 0x895D
const GL_CON_7_ATI                                                    = 0x8948
const GL_VERTEX_STREAM3_ATI                                           = 0x876F
const GL_RGBA_FLOAT32_ATI                                             = 0x8814
const GL_DRAW_BUFFER14_ATI                                            = 0x8833
const GL_MOV_ATI                                                      = 0x8961
const GL_REG_2_ATI                                                    = 0x8923
const GL_BUMP_TARGET_ATI                                              = 0x877C
const GL_DU8DV8_ATI                                                   = 0x877A
const GL_SWIZZLE_STRQ_DQ_ATI                                          = 0x897B
const GL_PN_TRIANGLES_TESSELATION_LEVEL_ATI                           = 0x87F4
const GL_CON_1_ATI                                                    = 0x8942
const GL_DRAW_BUFFER12_ATI                                            = 0x8831
const GL_CON_25_ATI                                                   = 0x895A
const GL_PN_TRIANGLES_NORMAL_MODE_LINEAR_ATI                          = 0x87F7
const GL_REG_18_ATI                                                   = 0x8933
const GL_DRAW_BUFFER4_ATI                                             = 0x8829
const GL_REG_17_ATI                                                   = 0x8932
const GL_DRAW_BUFFER11_ATI                                            = 0x8830
const GL_NUM_PASSES_ATI                                               = 0x8970
const GL_NUM_INPUT_INTERPOLATOR_COMPONENTS_ATI                        = 0x8973
const GL_TEXTURE_FREE_MEMORY_ATI                                      = 0x87FC
const GL_CON_3_ATI                                                    = 0x8944
const GL_REG_11_ATI                                                   = 0x892C
const GL_DISCARD_ATI                                                  = 0x8763
const GL_CON_4_ATI                                                    = 0x8945
const GL_NUM_FRAGMENT_CONSTANTS_ATI                                   = 0x896F
const GL_SWIZZLE_STR_ATI                                              = 0x8976
const GL_ELEMENT_ARRAY_ATI                                            = 0x8768
const GL_OBJECT_BUFFER_USAGE_ATI                                      = 0x8765
const GL_DRAW_BUFFER8_ATI                                             = 0x882D
const GL_VERTEX_STREAM7_ATI                                           = 0x8773
const GL_REG_3_ATI                                                    = 0x8924
const GL_FRAGMENT_SHADER_ATI                                          = 0x8920
const GL_STENCIL_BACK_FAIL_ATI                                        = 0x8801
const GL_MODULATE_SIGNED_ADD_ATI                                      = 0x8745
const GL_DRAW_BUFFER15_ATI                                            = 0x8834
# Export everything!
export glDrawRangeElementArrayATI, glColorFragmentOp1ATI, glVertexStream4sATI, glVertexBlendEnvfATI, glVertexStream2sATI, glNormalStream3fATI, glMapObjectBufferATI, glVertexStream4iATI, glGetArrayObjectivATI, glVertexStream2dATI, glNormalStream3fvATI, glVertexStream4dATI, glVertexStream3ivATI, glAlphaFragmentOp3ATI, glVertexStream4ivATI, glVertexStream3fvATI, glVertexStream1fATI, glStencilOpSeparateATI, glGetObjectBufferfvATI, glVertexStream3sATI, glVertexStream4dvATI, glGenFragmentShadersATI, glEndFragmentShaderATI, glVertexStream1svATI, glDrawElementArrayATI, glGetArrayObjectfvATI, glAlphaFragmentOp1ATI, glUpdateObjectBufferATI, glVertexStream2svATI, glVertexStream3dvATI, glVertexBlendEnviATI, glDeleteFragmentShaderATI, glPNTrianglesfATI, glNewObjectBufferATI, glUnmapObjectBufferATI, glGetTexBumpParameterfvATI, glVertexStream2ivATI, glNormalStream3sATI, glGetVariantArrayObjectivATI, glArrayObjectATI, glVertexStream3dATI, glGetVertexAttribArrayObjectfvATI, glNormalStream3bATI, glBindFragmentShaderATI, glColorFragmentOp2ATI, glDrawBuffersATI, glNormalStream3dvATI, glTexBumpParameterfvATI, glVertexAttribArrayObjectATI, glGetObjectBufferivATI, glClientActiveVertexStreamATI, glElementPointerATI, glTexBumpParameterivATI, glGetVariantArrayObjectfvATI, glGetTexBumpParameterivATI, glColorFragmentOp3ATI, glPassTexCoordATI, glNormalStream3iATI, glNormalStream3svATI, glVertexStream2dvATI, glSampleMapATI, glVertexStream1dvATI, glFreeObjectBufferATI, glVertexStream1sATI, glVertexStream1dATI, glVertexStream2fATI, glVertexStream3svATI, glVertexStream3fATI, glVertexStream3iATI, glNormalStream3bvATI, glSetFragmentShaderConstantATI, glIsObjectBufferATI, glPNTrianglesiATI, glBeginFragmentShaderATI, glVertexStream4fATI, glVertexStream2iATI, glVertexStream1iATI, glVertexStream1fvATI, glNormalStream3dATI, glNormalStream3ivATI, glStencilFuncSeparateATI, glVertexStream2fvATI, glGetVertexAttribArrayObjectivATI, glVertexStream1ivATI, glVertexStream4fvATI, glAlphaFragmentOp2ATI, glVariantArrayObjectATI, glVertexStream4svATI, GL_DOT2_ADD_ATI, GL_DRAW_BUFFER3_ATI, GL_OBJECT_BUFFER_SIZE_ATI, GL_HALF_BIT_ATI, GL_REG_19_ATI, GL_VERTEX_STREAM5_ATI, GL_CON_9_ATI, GL_NEGATE_BIT_ATI, GL_VERTEX_STREAM1_ATI, GL_RGB_FLOAT16_ATI, GL_REG_28_ATI, GL_ALPHA_FLOAT16_ATI, GL_DRAW_BUFFER13_ATI, GL_MODULATE_SUBTRACT_ATI, GL_COLOR_ALPHA_PAIRING_ATI, GL_CON_26_ATI, GL_DRAW_BUFFER1_ATI, GL_DRAW_BUFFER2_ATI, GL_VERTEX_STREAM2_ATI, GL_BUMP_ROT_MATRIX_ATI, GL_MIRROR_CLAMP_ATI, GL_SUB_ATI, GL_DOT3_ATI, GL_REG_31_ATI, GL_MIRROR_CLAMP_TO_EDGE_ATI, GL_SATURATE_BIT_ATI, GL_PRESERVE_ATI, GL_CON_8_ATI, GL_EIGHTH_BIT_ATI, GL_STENCIL_BACK_FUNC_ATI, GL_VERTEX_SOURCE_ATI, GL_REG_0_ATI, GL_REG_21_ATI, GL_REG_4_ATI, GL_DRAW_BUFFER6_ATI, GL_PN_TRIANGLES_POINT_MODE_ATI, GL_LUMINANCE_ALPHA_FLOAT16_ATI, GL_REG_23_ATI, GL_DRAW_BUFFER0_ATI, GL_VERTEX_STREAM4_ATI, GL_REG_16_ATI, GL_CON_16_ATI, GL_CON_0_ATI, GL_CON_30_ATI, GL_CON_29_ATI, GL_REG_26_ATI, GL_REG_8_ATI, GL_REG_10_ATI, GL_REG_25_ATI, GL_MAD_ATI, GL_ARRAY_OBJECT_OFFSET_ATI, GL_CON_13_ATI, GL_REG_5_ATI, GL_REG_7_ATI, GL_DYNAMIC_ATI, GL_SWIZZLE_STR_DR_ATI, GL_REG_15_ATI, GL_REG_29_ATI, GL_RGBA_FLOAT16_ATI, GL_MAX_DRAW_BUFFERS_ATI, GL_CON_14_ATI, GL_DRAW_BUFFER10_ATI, GL_BUMP_NUM_TEX_UNITS_ATI, GL_PN_TRIANGLES_ATI, GL_CON_10_ATI, GL_PN_TRIANGLES_NORMAL_MODE_ATI, GL_CON_17_ATI, GL_CON_15_ATI, GL_TEXT_FRAGMENT_SHADER_ATI, GL_REG_27_ATI, GL_REG_6_ATI, GL_REG_9_ATI, GL_CON_23_ATI, GL_DRAW_BUFFER5_ATI, GL_BUMP_ROT_MATRIX_SIZE_ATI, GL_CON_2_ATI, GL_CON_19_ATI, GL_STENCIL_BACK_PASS_DEPTH_FAIL_ATI, GL_SWIZZLE_STQ_DQ_ATI, GL_CON_27_ATI, GL_VERTEX_STREAM0_ATI, GL_LERP_ATI, GL_REG_1_ATI, GL_REG_24_ATI, GL_NUM_LOOPBACK_COMPONENTS_ATI, GL_NUM_INSTRUCTIONS_TOTAL_ATI, GL_CON_18_ATI, GL_RED_BIT_ATI, GL_SECONDARY_INTERPOLATOR_ATI, GL_NUM_INSTRUCTIONS_PER_PASS_ATI, GL_STENCIL_BACK_PASS_DEPTH_PASS_ATI, GL_STATIC_ATI, GL_PN_TRIANGLES_NORMAL_MODE_QUADRATIC_ATI, GL_LUMINANCE_FLOAT16_ATI, GL_CON_31_ATI, GL_DUDV_ATI, GL_CON_22_ATI, GL_REG_20_ATI, GL_ELEMENT_ARRAY_TYPE_ATI, GL_CON_24_ATI, GL_PN_TRIANGLES_POINT_MODE_CUBIC_ATI, GL_COMP_BIT_ATI, GL_CND0_ATI, GL_CON_20_ATI, GL_GREEN_BIT_ATI, GL_X2X_BIT_ATI, GL_BUMP_TEX_UNITS_ATI, GL_DOT4_ATI, GL_INTENSITY_FLOAT32_ATI, GL_CON_21_ATI, GL_VBO_FREE_MEMORY_ATI, GL_BLUE_BIT_ATI, GL_MAX_PN_TRIANGLES_TESSELATION_LEVEL_ATI, GL_SWIZZLE_STQ_ATI, GL_CON_5_ATI, GL_X8X_BIT_ATI, GL_COLOR_CLEAR_UNCLAMPED_VALUE_ATI, GL_CON_6_ATI, GL_LUMINANCE_ALPHA_FLOAT32_ATI, GL_REG_22_ATI, GL_ADD_ATI, GL_INTENSITY_FLOAT16_ATI, GL_ARRAY_OBJECT_BUFFER_ATI, GL_BUMP_ENVMAP_ATI, GL_RGBA_FLOAT_MODE_ATI, GL_X4X_BIT_ATI, GL_CND_ATI, GL_CON_11_ATI, GL_BIAS_BIT_ATI, GL_SWIZZLE_STRQ_ATI, GL_PN_TRIANGLES_POINT_MODE_LINEAR_ATI, GL_RENDERBUFFER_FREE_MEMORY_ATI, GL_REG_30_ATI, GL_DRAW_BUFFER9_ATI, GL_MODULATE_ADD_ATI, GL_MAX_VERTEX_STREAMS_ATI, GL_ALPHA_FLOAT32_ATI, GL_REG_14_ATI, GL_ELEMENT_ARRAY_POINTER_ATI, GL_MUL_ATI, GL_NUM_FRAGMENT_REGISTERS_ATI, GL_VERTEX_STREAM6_ATI, GL_RGB_FLOAT32_ATI, GL_REG_12_ATI, GL_CON_12_ATI, GL_DRAW_BUFFER7_ATI, GL_LUMINANCE_FLOAT32_ATI, GL_QUARTER_BIT_ATI, GL_REG_13_ATI, GL_CON_28_ATI, GL_CON_7_ATI, GL_VERTEX_STREAM3_ATI, GL_RGBA_FLOAT32_ATI, GL_DRAW_BUFFER14_ATI, GL_MOV_ATI, GL_REG_2_ATI, GL_BUMP_TARGET_ATI, GL_DU8DV8_ATI, GL_SWIZZLE_STRQ_DQ_ATI, GL_PN_TRIANGLES_TESSELATION_LEVEL_ATI, GL_CON_1_ATI, GL_DRAW_BUFFER12_ATI, GL_CON_25_ATI, GL_PN_TRIANGLES_NORMAL_MODE_LINEAR_ATI, GL_REG_18_ATI, GL_DRAW_BUFFER4_ATI, GL_REG_17_ATI, GL_DRAW_BUFFER11_ATI, GL_NUM_PASSES_ATI, GL_NUM_INPUT_INTERPOLATOR_COMPONENTS_ATI, GL_TEXTURE_FREE_MEMORY_ATI, GL_CON_3_ATI, GL_REG_11_ATI, GL_DISCARD_ATI, GL_CON_4_ATI, GL_NUM_FRAGMENT_CONSTANTS_ATI, GL_SWIZZLE_STR_ATI, GL_ELEMENT_ARRAY_ATI, GL_OBJECT_BUFFER_USAGE_ATI, GL_DRAW_BUFFER8_ATI, GL_VERTEX_STREAM7_ATI, GL_REG_3_ATI, GL_FRAGMENT_SHADER_ATI, GL_STENCIL_BACK_FAIL_ATI, GL_MODULATE_SIGNED_ADD_ATI, GL_DRAW_BUFFER15_ATI
