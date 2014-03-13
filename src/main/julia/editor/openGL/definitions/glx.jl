#function bodies
@createOpenGLFun glxDestroyPixmap(glxpixmap::GLint)::Void
@createOpenGLFun glxCreateNewContext(config::GLint, render_type::GLint, share_list::GLint, direct::GLint)::Void
@createOpenGLFun glxGetContextIDEXT(context::GLXContext)::Cuint
@createOpenGLFun glxRenderLarge()::Void
@createOpenGLFun glxCopyContext(source::GLint, dest::GLint, mask::GLint)::Void
@createOpenGLFun glxGetFBConfigFromVisualSGIX(dpy::Ptr{Display}, vis::XVisualInfo)::Ptr{Void}
@createOpenGLFun glxImportContextEXT(dpy::Ptr{Display}, contextID::GLXContextID)::Ptr{Void}
@createOpenGLFun glxGetAGPOffsetMESA(pointer::Ptr{Void})::Cuint
@createOpenGLFun glxChooseFBConfig(dpy::Ptr{Display}, screen::Cint, attrib_list::Ptr{Cint}, nelements::Ptr{Cint})::Ptr{Void}
@createOpenGLFun glxQueryChannelRectSGIX(display::Ptr{Display}, screen::Cint, channel::Cint, dx::Ptr{Cint}, dy::Ptr{Cint}, dw::Ptr{Cint}, dh::Ptr{Cint})::Cint
@createOpenGLFun glxReleaseVideoCaptureDeviceNV(dpy::Ptr{Display}, device::GLXVideoCaptureDeviceNV)::Void
@createOpenGLFun glxJoinSwapGroupNV(dpy::Ptr{Display}, drawable::GLXDrawable, group::GLuint)::Cint
@createOpenGLFun glxReleaseTexImageEXT(dpy::Ptr{Display}, drawable::GLXDrawable, buffer::int)::Void
@createOpenGLFun glxQuerySwapGroupNV(dpy::Ptr{Display}, drawable::GLXDrawable, group::Ptr{GLuint}, barrier::Ptr{GLuint})::Cint
@createOpenGLFun glxSendPbufferToVideoNV(dpy::Ptr{Display}, pbuf::GLXPbuffer, iBufferType::Cint, pulCounterPbuffer::Ptr{Culong}, bBlock::GLboolean)::Cint
@createOpenGLFun glxHyperpipeAttribSGIX(dpy::Ptr{Display}, timeSlice::Cint, attrib::Cint, size::Cint, attribList::Ptr{Void})::Cint
@createOpenGLFun glxChooseFBConfigSGIX(dpy::Ptr{Display}, screen::Cint, attrib_list::Ptr{Cint}, nelements::Ptr{Cint})::Ptr{Void}
@createOpenGLFun glxEnumerateVideoCaptureDevicesNV(dpy::Ptr{Display}, screen::Cint, nelements::Ptr{Cint})::Ptr{Void}
@createOpenGLFun glxGetVisualFromFBConfigSGIX(dpy::Ptr{Display}, config::GLXFBConfigSGIX)::Ptr{Void}
@createOpenGLFun glxVendorPrivate()::Void
@createOpenGLFun glxGetProcAddress(procName::Ptr{GLubyte})::Ptr{Void}
@createOpenGLFun glxHyperpipeConfigSGIX(dpy::Ptr{Display}, networkId::Cint, npipes::Cint, cfg::Ptr{GLXHyperpipeConfigSGIX}, hpId::Ptr{Cint})::Cint
@createOpenGLFun glxChannelRectSyncSGIX(display::Ptr{Display}, screen::Cint, channel::Cint, synctype::GLenum)::Cint
@createOpenGLFun glxGetTransparentIndexSUN(dpy::Ptr{Display}, overlay::Window, underlay::Window, pTransparentIndex::Ptr{long})::Cint
@createOpenGLFun glxGetCurrentReadDrawableSGI()::Ptr{Void}
@createOpenGLFun glxCreateGLXPbufferSGIX(config::GLint, pbuffer::GLint)::Void
@createOpenGLFun glxCreatePbuffer(config::GLint, pbuffer::GLint)::Void
@createOpenGLFun glxGetFBConfigAttribSGIX(dpy::Ptr{Display}, config::GLXFBConfigSGIX, attribute::Cint, value::Ptr{Cint})::Cint
@createOpenGLFun glxQueryMaxSwapBarriersSGIX()::Void
@createOpenGLFun glxBindHyperpipeSGIX(dpy::Ptr{Display}, hpId::Cint)::Cint
@createOpenGLFun glxQueryDrawable(dpy::Ptr{Display}, draw::GLXDrawable, attribute::int, value::Ptr{uint32})::Void
@createOpenGLFun glxCushionSGI(dpy::Ptr{Display}, window::Window, cushion::float32)::Void
@createOpenGLFun glxQueryVideoCaptureDeviceNV(dpy::Ptr{Display}, device::GLXVideoCaptureDeviceNV, attribute::Cint, value::Ptr{Cint})::Cint
@createOpenGLFun glxWaitVideoSyncSGI(divisor::Cint, remainder::Cint, count::Ptr{uint32})::Cint
@createOpenGLFun glxCreateContext(gc_id::GLint, screen::GLint, visual::GLint, share_list::GLint)::Void
@createOpenGLFun glxCreateContextAttribsARB(dpy::Ptr{Display}, config::GLXFBConfig, share_context::GLXContext, direct::Cint, attrib_list::Ptr{Cint})::Ptr{Void}
@createOpenGLFun glxQueryMaxSwapGroupsNV(dpy::Ptr{Display}, screen::Cint, maxGroups::Ptr{GLuint}, maxBarriers::Ptr{GLuint})::Cint
@createOpenGLFun glxGetVideoSyncSGI(count::Ptr{uint32})::Cint
@createOpenGLFun glxSelectEvent(dpy::Ptr{Display}, draw::GLXDrawable, event_mask::unsigned_long)::Void
@createOpenGLFun glxChangeDrawableAttributes(drawable::GLint)::Void
@createOpenGLFun glxQueryHyperpipeConfigSGIX(dpy::Ptr{Display}, hpId::Cint, npipes::Ptr{Cint})::Ptr{Void}
@createOpenGLFun glxBindSwapBarrierNV(dpy::Ptr{Display}, group::GLuint, barrier::GLuint)::Cint
@createOpenGLFun glxCreateGLXPixmap(visual::GLint, pixmap::GLint, glxpixmap::GLint)::Void
@createOpenGLFun glxDestroyWindow(glxwindow::GLint)::Void
@createOpenGLFun glxClientInfo()::Void
@createOpenGLFun glxGetFBConfigsSGIX()::Void
@createOpenGLFun glxDestroyHyperpipeConfigSGIX(dpy::Ptr{Display}, hpId::Cint)::Cint
@createOpenGLFun glxVendorPrivateWithReply()::Void
@createOpenGLFun glxSwapBuffers(drawable::GLint)::Void
@createOpenGLFun glxCopySubBufferMESA(dpy::Ptr{Display}, drawable::GLXDrawable, x::int, y::int, width::int, height::int)::Void
@createOpenGLFun glxCreateGLXPixmapMESA(dpy::Ptr{Display}, visual::XVisualInfo, pixmap::Pixmap, cmap::Colormap)::Ptr{Void}
@createOpenGLFun glxReleaseBuffersMESA(dpy::Ptr{Display}, drawable::GLXDrawable)::Cint
@createOpenGLFun glxDestroyGLXPbufferSGIX(pbuffer::GLint)::Void
@createOpenGLFun glxQueryHyperpipeAttribSGIX(dpy::Ptr{Display}, timeSlice::Cint, attrib::Cint, size::Cint, returnAttribList::Ptr{Void})::Cint
@createOpenGLFun glxGetMscRateOML(dpy::Ptr{Display}, drawable::GLXDrawable, numerator::Ptr{Cint}, denominator::Ptr{Cint})::Cint
@createOpenGLFun glxFreeContextEXT(dpy::Ptr{Display}, context::GLXContext)::Void
@createOpenGLFun glxReleaseVideoDeviceNV(dpy::Ptr{Display}, screen::Cint, VideoDevice::GLXVideoDeviceNV)::Cint
@createOpenGLFun glxWaitForMscOML(dpy::Ptr{Display}, drawable::GLXDrawable, target_msc::CClonglong, divisor::CClonglong, remainder::CClonglong, ust::Ptr{Clonglong}, msc::Ptr{Clonglong}, sbc::Ptr{Clonglong})::Cint
@createOpenGLFun glxCreateGLXPixmapWithConfigSGIX(config::GLint, pixmap::GLint, glxpixmap::GLint)::Void
@createOpenGLFun glxDestroyGLXVideoSourceSGIX(dpy::GLint, glxvideosource::GLint)::Void
@createOpenGLFun glxWaitForSbcOML(dpy::Ptr{Display}, drawable::GLXDrawable, target_sbc::CClonglong, ust::Ptr{Clonglong}, msc::Ptr{Clonglong}, sbc::Ptr{Clonglong})::Cint
@createOpenGLFun glxSelectEventSGIX(dpy::Ptr{Display}, drawable::GLXDrawable, mask::unsigned_long)::Void
@createOpenGLFun glxGetFBConfigs()::Void
@createOpenGLFun glxDestroyGLXPixmap(pixmap::GLint)::Void
@createOpenGLFun glxRender()::Void
@createOpenGLFun glxBindChannelToWindowSGIX(display::Ptr{Display}, screen::Cint, channel::Cint, window::Window)::Cint
@createOpenGLFun glxBindTexImageEXT(dpy::Ptr{Display}, drawable::GLXDrawable, buffer::int, attrib_list::Ptr{int})::Void
@createOpenGLFun glxSwapIntervalSGI()::Void
@createOpenGLFun glxQueryChannelDeltasSGIX(display::Ptr{Display}, screen::Cint, channel::Cint, x::Ptr{Cint}, y::Ptr{Cint}, w::Ptr{Cint}, h::Ptr{Cint})::Cint
@createOpenGLFun glxLockVideoCaptureDeviceNV(dpy::Ptr{Display}, device::GLXVideoCaptureDeviceNV)::Void
@createOpenGLFun glxGetFBConfigAttrib(dpy::Ptr{Display}, config::GLXFBConfig, attribute::Cint, value::Ptr{Cint})::Cint
@createOpenGLFun glxQueryContext()::Void
@createOpenGLFun glxGetSelectedEvent(dpy::Ptr{Display}, draw::GLXDrawable, event_mask::Ptr{unsigned_long})::Void
@createOpenGLFun glxCreateWindow(config::GLint, window::GLint, glxwindow::GLint)::Void
@createOpenGLFun glxQueryHyperpipeBestAttribSGIX(dpy::Ptr{Display}, timeSlice::Cint, attrib::Cint, size::Cint, attribList::Ptr{Void}, returnAttribList::Ptr{Void})::Cint
@createOpenGLFun glxIsDirect(dpy::GLint, context::GLint)::Void
@createOpenGLFun glxChannelRectSGIX(display::Ptr{Display}, screen::Cint, channel::Cint, x::Cint, y::Cint, w::Cint, h::Cint)::Cint
@createOpenGLFun glxGetCurrentDisplay()::Ptr{Void}
@createOpenGLFun glxBindSwapBarrierSGIX(window::GLint, barrier::GLint)::Void
@createOpenGLFun glxCopyImageSubDataNV(dpy::Ptr{Display}, srcCtx::GLXContext, srcName::GLuint, srcTarget::GLenum, srcLevel::GLint, srcX::GLint, srcY::GLint, srcZ::GLint, dstCtx::GLXContext, dstName::GLuint, dstTarget::GLenum, dstLevel::GLint, dstX::GLint, dstY::GLint, dstZ::GLint, width::GLsizei, height::GLsizei, depth::GLsizei)::Void
@createOpenGLFun glxQueryContextInfoEXT()::Void
@createOpenGLFun glxGetVideoInfoNV(dpy::Ptr{Display}, screen::Cint, VideoDevice::GLXVideoDeviceNV, pulCounterOutputPbuffer::Ptr{Culong}, pulCounterOutputVideo::Ptr{Culong})::Cint
@createOpenGLFun glxWaitX()::Void
@createOpenGLFun glxQueryServerString(screen::GLint, name::GLint)::Void
@createOpenGLFun glxJoinSwapGroupSGIX(window::GLint, group::GLint)::Void
@createOpenGLFun glxQueryVersion(major::Ptr{GLint}, minor::Ptr{GLint})::Void
@createOpenGLFun glxGetCurrentReadDrawable()::Ptr{Void}
@createOpenGLFun glxUseXFont(font::GLint, first::GLint, count::GLint, list_base::GLint)::Void
@createOpenGLFun glxReleaseVideoImageNV(dpy::Ptr{Display}, pbuf::GLXPbuffer)::Cint
@createOpenGLFun glxCreateGLXVideoSourceSGIX(dpy::GLint, screen::GLint, server::GLint, path::GLint, class::GLint, node::GLint)::Void
@createOpenGLFun glxQueryFrameCountNV(dpy::Ptr{Display}, screen::Cint, count::Ptr{GLuint})::Cint
@createOpenGLFun glxQueryGLXPbufferSGIX(dpy::Ptr{Display}, pbuf::GLXPbufferSGIX, attribute::Cint, value::Ptr{uint32})::Cint
@createOpenGLFun glxEnumerateVideoDevicesNV(dpy::Ptr{Display}, screen::Cint, nelements::Ptr{Cint})::Ptr{Cuint}
@createOpenGLFun glxSwapBuffersMscOML(dpy::Ptr{Display}, drawable::GLXDrawable, target_msc::CClonglong, divisor::CClonglong, remainder::CClonglong)::CClonglong
@createOpenGLFun glxQueryHyperpipeNetworkSGIX(dpy::Ptr{Display}, npipes::Ptr{Cint})::Ptr{Void}
@createOpenGLFun glxGetProcAddressARB(procName::Ptr{GLubyte})::Ptr{Void}
@createOpenGLFun glxGetSyncValuesOML(dpy::Ptr{Display}, drawable::GLXDrawable, ust::Ptr{Clonglong}, msc::Ptr{Clonglong}, sbc::Ptr{Clonglong})::Cint
@createOpenGLFun glxWaitGL(context::GLint)::Void
@createOpenGLFun glxMakeCurrentReadSGI(drawable::GLint, readdrawable::GLint, context::GLint)::Void
@createOpenGLFun glxDestroyContext(context::GLint)::Void
@createOpenGLFun glxAssociateDMPbufferSGIX(dpy::Ptr{Display}, pbuffer::GLXPbufferSGIX, params::DMparams, dmbuffer::DMbuffer)::Cint
@createOpenGLFun glxSet3DfxModeMESA(mode::Cint)::Cint
@createOpenGLFun glxGetSelectedEventSGIX(dpy::Ptr{Display}, drawable::GLXDrawable, mask::Ptr{unsigned_long})::Void
@createOpenGLFun glxBindVideoCaptureDeviceNV(dpy::Ptr{Display}, video_capture_slot::Cuint, device::GLXVideoCaptureDeviceNV)::Cint
@createOpenGLFun glxMakeCurrent(drawable::GLint, context::GLint)::Void
@createOpenGLFun glxCreateContextWithConfigSGIX(gc_id::GLint, screen::GLint, config::GLint, share_list::GLint)::Void
@createOpenGLFun glxCreatePixmap(config::GLint, pixmap::GLint, glxpixmap::GLint)::Void
@createOpenGLFun glxBindVideoDeviceNV(dpy::Ptr{Display}, video_slot::Cuint, video_device::Cuint, attrib_list::Ptr{Cint})::Cint
@createOpenGLFun glxDestroyPbuffer(pbuffer::GLint)::Void
@createOpenGLFun glxGetVisualConfigs()::Void
@createOpenGLFun glxGetCurrentDisplayEXT()::Ptr{Void}
@createOpenGLFun glxBindVideoImageNV(dpy::Ptr{Display}, VideoDevice::GLXVideoDeviceNV, pbuf::GLXPbuffer, iVideoBuffer::Cint)::Cint
@createOpenGLFun glxQueryExtensionsString(screen::GLint)::Void
@createOpenGLFun glxSwapIntervalEXT(dpy::Ptr{Display}, drawable::GLXDrawable, interval::int)::Void
@createOpenGLFun glxGetVisualFromFBConfig(dpy::Ptr{Display}, config::GLXFBConfig)::Ptr{Void}
@createOpenGLFun glxGetDrawableAttributes(drawable::GLint)::Void
@createOpenGLFun glxResetFrameCountNV(dpy::Ptr{Display}, screen::Cint)::Cint
@createOpenGLFun glxMakeContextCurrent(drawable::GLint, readdrawable::GLint, context::GLint)::Void
@createOpenGLFun glxGetDrawableAttributesSGIX(drawable::GLint)::Void
@createOpenGLFun glxChangeDrawableAttributesSGIX(drawable::GLint)::Void
@createOpenGLFun glxGetVideoDeviceNV(dpy::Ptr{Display}, screen::Cint, numVideoDevices::Cint, pVideoDevice::GLXVideoDeviceNV)::Cint
#constants
const GL_VIDEO_OUT_COLOR_AND_ALPHA_NV                                 = 0x20C6
const GL_SAMPLES_SGIS                                                 = 100001
const GL_HEIGHT_SGIX                                                  = 0x801E
const GL_PIXMAP_BIT_SGIX                                              = 0x00000002
const GL_AUX4_EXT                                                     = 0x20E6
const GL_FRONT_LEFT_EXT                                               = 0x20DE
const GL_TEXTURE_RECTANGLE_BIT_EXT                                    = 0x00000004
const GL_CONTEXT_MAJOR_VERSION_ARB                                    = 0x2091
const GL_TRANSPARENT_RED_VALUE                                        = 0x25
const GL_SCREEN                                                       = 0x800C
const GL_TRANSPARENT_GREEN_VALUE                                      = 0x26
const GL_TEXTURE_FORMAT_EXT                                           = 0x20D5
const GL_MAX_PBUFFER_HEIGHT_SGIX                                      = 0x8017
const GL_TEXTURE_FORMAT_NONE_EXT                                      = 0x20D8
const GL_TRANSPARENT_ALPHA_VALUE                                      = 0x28
const GL_GPU_CLOCK_AMD                                                = 0x21A4
const GL_LATE_SWAPS_TEAR_EXT                                          = 0x20F3
const GL_BIND_TO_TEXTURE_TARGETS_EXT                                  = 0x20D3
const GL_DIRECT_COLOR_EXT                                             = 0x8003
const GL_CONFIG_CAVEAT                                                = 0x20
const GL_GPU_FASTEST_TARGET_GPUS_AMD                                  = 0x21A2
const GL_BUFFER_SWAP_COMPLETE_INTEL_MASK                              = 0x04000000
const GL_VISUAL_CAVEAT_EXT                                            = 0x20
const GL_PSEUDO_COLOR_EXT                                             = 0x8004
const GL_PBUFFER_BIT                                                  = 0x00000004
const GL_AUX5_EXT                                                     = 0x20E7
const GL_RENDER_TYPE                                                  = 0x8011
const GL_PIPE_RECT_LIMITS_SGIX                                        = 0x00000002
const GL_MAX_PBUFFER_WIDTH                                            = 0x8016
const GL_FLIP_COMPLETE_INTEL                                          = 0x8182
const GL_TRUE_COLOR_EXT                                               = 0x8002
const GL_BACK_EXT                                                     = 0x20E0
const GL_GPU_OPENGL_VERSION_STRING_AMD                                = 0x1F02
const GL_AUX_BUFFERS_BIT                                              = 0x00000010
const GL_TEXTURE_FORMAT_RGB_EXT                                       = 0x20D9
const GL_VISUAL_ID                                                    = 0x800B
const GL_AUX7_EXT                                                     = 0x20E9
const GL_PIXMAP_BIT                                                   = 0x00000002
const GL_NO_RESET_NOTIFICATION_ARB                                    = 0x8261
const GL_DIRECT_COLOR                                                 = 0x8003
const GL_WINDOW_BIT                                                   = 0x00000001
const GL_CONTEXT_FLAGS_ARB                                            = 0x2094
const GL_TRANSPARENT_BLUE_VALUE                                       = 0x27
const GL_BIND_TO_TEXTURE_RGB_EXT                                      = 0x20D0
const GL_DEPTH_BUFFER_BIT                                             = 0x00000020
const GL_LOSE_CONTEXT_ON_RESET_ARB                                    = 0x8252
const GL_RGBA_TYPE                                                    = 0x8014
const GL_SAMPLE_BUFFERS_ARB                                           = 100000
const GL_X_RENDERABLE                                                 = 0x8012
const GL_COPY_COMPLETE_INTEL                                          = 0x8181
const GL_NONE                                                         = 0x8000
const GL_MAX_SWAP_INTERVAL_EXT                                        = 0x20F2
const GL_BIND_TO_MIPMAP_TEXTURE_EXT                                   = 0x20D2
const GL_SWAP_EXCHANGE_OML                                            = 0x8061
const GL_SHARE_CONTEXT_EXT                                            = 0x800A
const GL_TRANSPARENT_BLUE_VALUE_EXT                                   = 0x27
const GL_X_VISUAL_TYPE                                                = 0x22
const GL_HYPERPIPE_DISPLAY_PIPE_SGIX                                  = 0x00000001
const GL_SAMPLES_ARB                                                  = 100001
const GL_BACK_RIGHT_BUFFER_BIT                                        = 0x00000008
const GL_GPU_NUM_SIMD_AMD                                             = 0x21A6
const GL_BACK_LEFT_BUFFER_BIT_SGIX                                    = 0x00000004
const GL_SLOW_VISUAL_EXT                                              = 0x8001
const GL_VISUAL_ID_EXT                                                = 0x800B
const GL_COLOR_INDEX_TYPE_SGIX                                        = 0x8015
const GL_BLENDED_RGBA_SGIS                                            = 0x8025
const GL_MAX_PBUFFER_HEIGHT                                           = 0x8017
const GL_TRUE_COLOR                                                   = 0x8002
const GL_SWAP_COPY_OML                                                = 0x8062
const GL_VIDEO_OUT_COLOR_AND_DEPTH_NV                                 = 0x20C7
const GL_FRONT_RIGHT_BUFFER_BIT                                       = 0x00000002
const GL_MULTISAMPLE_SUB_RECT_HEIGHT_SGIS                             = 0x8027
const GL_WINDOW_BIT_SGIX                                              = 0x00000001
const GL_WINDOW_SGIX                                                  = 0x8022
const GL_PBUFFER_WIDTH                                                = 0x8041
const GL_UNIQUE_ID_NV                                                 = 0x20CE
const GL_NON_CONFORMANT_CONFIG                                        = 0x800D
const GL_SLOW_CONFIG                                                  = 0x8001
const GL_SYNC_FRAME_SGIX                                              = 0x00000000
const GL_BAD_HYPERPIPE_CONFIG_SGIX                                    = 91
const GL_BACK_LEFT_EXT                                                = 0x20E0
const GL_TEXTURE_TARGET_EXT                                           = 0x20D6
const GL_SAMPLE_BUFFERS_SGIS                                          = 100000
const GL_DRAWABLE_TYPE_SGIX                                           = 0x8010
const GL_SWAP_INTERVAL_EXT                                            = 0x20F1
const GL_SWAP_UNDEFINED_OML                                           = 0x8063
const GL_MIPMAP_TEXTURE_EXT                                           = 0x20D7
const GL_FLOAT_COMPONENTS_NV                                          = 0x20B0
const GL_STENCIL_BUFFER_BIT                                           = 0x00000040
const GL_AUX8_EXT                                                     = 0x20EA
const GL_COVERAGE_SAMPLES_NV                                          = 100001
const GL_DRAWABLE_TYPE                                                = 0x8010
const GL_BAD_HYPERPIPE_SGIX                                           = 92
const GL_AUX1_EXT                                                     = 0x20E3
const GL_PBUFFER_BIT_SGIX                                             = 0x00000004
const GL_GPU_NUM_PIPES_AMD                                            = 0x21A5
const GL_TRANSPARENT_RED_VALUE_EXT                                    = 0x25
const GL_TRANSPARENT_INDEX                                            = 0x8009
const GL_VIDEO_OUT_ALPHA_NV                                           = 0x20C4
const GL_STATIC_COLOR_EXT                                             = 0x8005
const GL_TRANSPARENT_INDEX_EXT                                        = 0x8009
const GL_CONTEXT_ES_PROFILE_BIT_EXT                                   = 0x00000004
const GL_GRAY_SCALE_EXT                                               = 0x8006
const GL_HYPERPIPE_STEREO_SGIX                                        = 0x00000003
const GL_SAMPLE_BUFFERS_3DFX                                          = 0x8050
const GL_MAX_PBUFFER_WIDTH_SGIX                                       = 0x8016
const GL_ACCUM_BUFFER_BIT                                             = 0x00000080
const GL_FRONT_LEFT_BUFFER_BIT_SGIX                                   = 0x00000001
const GL_DEVICE_ID_NV                                                 = 0x20CD
const GL_RGBA_FLOAT_TYPE_ARB                                          = 0x20B9
const GL_PBUFFER_SGIX                                                 = 0x8023
const GL_GPU_NUM_SPI_AMD                                              = 0x21A8
const GL_VIDEO_OUT_DEPTH_NV                                           = 0x20C5
const GL_FRONT_RIGHT_BUFFER_BIT_SGIX                                  = 0x00000002
const GL_TRANSPARENT_GREEN_VALUE_EXT                                  = 0x26
const GL_COLOR_INDEX_BIT                                              = 0x00000002
const GL_RENDER_TYPE_SGIX                                             = 0x8011
const GL_SAVED                                                        = 0x8021
const GL_VIDEO_OUT_STACKED_FIELDS_1_2_NV                              = 0x20CB
const GL_FRAMEBUFFER_SRGB_CAPABLE_ARB                                 = 0x20B2
const GL_STENCIL_BUFFER_BIT_SGIX                                      = 0x00000040
const GL_BIND_TO_TEXTURE_RGBA_EXT                                     = 0x20D1
const GL_X3DFX_WINDOW_MODE_MESA                                       = 0x1
const GL_PBUFFER_HEIGHT                                               = 0x8040
const GL_HYPERPIPE_PIXEL_AVERAGE_SGIX                                 = 0x00000004
const GL_OPTIMAL_PBUFFER_HEIGHT_SGIX                                  = 0x801A
const GL_HYPERPIPE_RENDER_PIPE_SGIX                                   = 0x00000002
const GL_GPU_VENDOR_AMD                                               = 0x1F00
const GL_VIDEO_OUT_FIELD_1_NV                                         = 0x20C9
const GL_PBUFFER                                                      = 0x8023
const GL_BACK_RIGHT_BUFFER_BIT_SGIX                                   = 0x00000008
const GL_TRANSPARENT_RGB                                              = 0x8008
const GL_CONTEXT_ALLOW_BUFFER_BYTE_ORDER_MISMATCH_ARB                 = 0x2095
const GL_EVENT_MASK_SGIX                                              = 0x801F
const GL_AUX_BUFFERS_BIT_SGIX                                         = 0x00000010
const GL_COLOR_SAMPLES_NV                                             = 0x20B3
const GL_STATIC_GRAY                                                  = 0x8007
const GL_BUFFER_CLOBBER_MASK_SGIX                                     = 0x08000000
const GL_BACK_LEFT_BUFFER_BIT                                         = 0x00000004
const GL_RGBA_FLOAT_BIT_ARB                                           = 0x00000004
const GL_VIDEO_OUT_STACKED_FIELDS_2_1_NV                              = 0x20CC
const GL_PRESERVED_CONTENTS_SGIX                                      = 0x801B
const GL_GRAY_SCALE                                                   = 0x8006
const GL_RGBA_UNSIGNED_FLOAT_TYPE_EXT                                 = 0x20B1
const GL_AUX2_EXT                                                     = 0x20E4
const GL_SAVED_SGIX                                                   = 0x8021
const GL_EXCHANGE_COMPLETE_INTEL                                      = 0x8180
const GL_GPU_NUM_RB_AMD                                               = 0x21A7
const GL_NUM_VIDEO_CAPTURE_SLOTS_NV                                   = 0x20CF
const GL_VIDEO_OUT_FRAME_NV                                           = 0x20C8
const GL_TRANSPARENT_ALPHA_VALUE_EXT                                  = 0x28
const GL_PIPE_RECT_SGIX                                               = 0x00000001
const GL_DEPTH_BUFFER_BIT_SGIX                                        = 0x00000020
const GL_SYNC_SWAP_SGIX                                               = 0x00000001
const GL_SAMPLES                                                      = 100001
const GL_SWAP_METHOD_OML                                              = 0x8060
const GL_TEXTURE_FORMAT_RGBA_EXT                                      = 0x20DA
const GL_HEIGHT                                                       = 0x801E
const GL_AUX9_EXT                                                     = 0x20EB
const GL_AUX0_EXT                                                     = 0x20E2
const GL_DAMAGED                                                      = 0x8020
const GL_TEXTURE_2D_EXT                                               = 0x20DC
const GL_DONT_CARE                                                    = 0xFFFFFFFF
const GL_X_RENDERABLE_SGIX                                            = 0x8012
const GL_NON_CONFORMANT_VISUAL_EXT                                    = 0x800D
const GL_VISUAL_SELECT_GROUP_SGIX                                     = 0x8028
const GL_TEXTURE_2D_BIT_EXT                                           = 0x00000002
const GL_DAMAGED_SGIX                                                 = 0x8020
const GL_VIDEO_OUT_COLOR_NV                                           = 0x20C3
const GL_CONTEXT_MINOR_VERSION_ARB                                    = 0x2092
const GL_ACCUM_BUFFER_BIT_SGIX                                        = 0x00000080
const GL_STATIC_GRAY_EXT                                              = 0x8007
const GL_FBCONFIG_ID                                                  = 0x8013
const GL_CONTEXT_CORE_PROFILE_BIT_ARB                                 = 0x00000001
const GL_TRANSPARENT_INDEX_VALUE_EXT                                  = 0x24
const GL_HYPERPIPE_PIPE_NAME_LENGTH_SGIX                              = 80
const GL_CONTEXT_PROFILE_MASK_ARB                                     = 0x9126
const GL_TEXTURE_1D_EXT                                               = 0x20DB
const GL_MULTISAMPLE_SUB_RECT_WIDTH_SGIS                              = 0x8026
const GL_TRANSPARENT_INDEX_VALUE                                      = 0x24
const GL_X_VISUAL_TYPE_EXT                                            = 0x22
const GL_RGBA_BIT                                                     = 0x00000001
const GL_LARGEST_PBUFFER                                              = 0x801C
const GL_RGBA_BIT_SGIX                                                = 0x00000001
const GL_SAMPLES_3DFX                                                 = 0x8051
const GL_WIDTH                                                        = 0x801D
const GL_PBUFFER_CLOBBER_MASK                                         = 0x08000000
const GL_WINDOW                                                       = 0x8022
const GL_PSEUDO_COLOR                                                 = 0x8004
const GL_WIDTH_SGIX                                                   = 0x801D
const GL_CONTEXT_COMPATIBILITY_PROFILE_BIT_ARB                        = 0x00000002
const GL_CONTEXT_RESET_NOTIFICATION_STRATEGY_ARB                      = 0x8256
const GL_BACK_BUFFER_AGE_EXT                                          = 0x20F4
const GL_FRAMEBUFFER_SRGB_CAPABLE_EXT                                 = 0x20B2
const GL_TRANSPARENT_TYPE                                             = 0x23
const GL_TRANSPARENT_TYPE_EXT                                         = 0x23
const GL_VIDEO_OUT_FIELD_2_NV                                         = 0x20CA
const GL_AUX6_EXT                                                     = 0x20E8
const GL_FBCONFIG_ID_SGIX                                             = 0x8013
const GL_BACK_RIGHT_EXT                                               = 0x20E1
const GL_AUX3_EXT                                                     = 0x20E5
const GL_STATIC_COLOR                                                 = 0x8005
const GL_FRONT_EXT                                                    = 0x20DE
const GL_COLOR_INDEX_BIT_SGIX                                         = 0x00000002
const GL_CONTEXT_ROBUST_ACCESS_BIT_ARB                                = 0x00000004
const GL_EVENT_MASK                                                   = 0x801F
const GL_CONTEXT_DEBUG_BIT_ARB                                        = 0x00000001
const GL_FRONT_RIGHT_EXT                                              = 0x20DF
const GL_COLOR_INDEX_TYPE                                             = 0x8015
const GL_CONTEXT_FORWARD_COMPATIBLE_BIT_ARB                           = 0x00000002
const GL_Y_INVERTED_EXT                                               = 0x20D4
const GL_SAMPLE_BUFFERS                                               = 100000
const GL_FRONT_LEFT_BUFFER_BIT                                        = 0x00000001
const GL_CONTEXT_ES2_PROFILE_BIT_EXT                                  = 0x00000004
const GL_PRESERVED_CONTENTS                                           = 0x801B
const GL_TEXTURE_1D_BIT_EXT                                           = 0x00000001
const GL_TRANSPARENT_RGB_EXT                                          = 0x8008
const GL_LARGEST_PBUFFER_SGIX                                         = 0x801C
const GL_GPU_RAM_AMD                                                  = 0x21A3
const GL_RGBA_UNSIGNED_FLOAT_BIT_EXT                                  = 0x00000008
const GL_MAX_PBUFFER_PIXELS_SGIX                                      = 0x8018
const GL_X3DFX_FULLSCREEN_MODE_MESA                                   = 0x2
const GL_TEXTURE_RECTANGLE_EXT                                        = 0x20DD
const GL_RGBA_TYPE_SGIX                                               = 0x8014
const GL_GPU_RENDERER_STRING_AMD                                      = 0x1F01
const GL_NUM_VIDEO_SLOTS_NV                                           = 0x20F0
const GL_SAMPLE_BUFFERS_BIT_SGIX                                      = 0x00000100
const GL_MAX_PBUFFER_PIXELS                                           = 0x8018
const GL_HYPERPIPE_ID_SGIX                                            = 0x8030
const GL_OPTIMAL_PBUFFER_WIDTH_SGIX                                   = 0x8019
const GL_DIGITAL_MEDIA_PBUFFER_SGIX                                   = 0x8024
# Export everything!
export glxDestroyPixmap, glxCreateNewContext, glxGetContextIDEXT, glxRenderLarge, glxCopyContext, glxGetFBConfigFromVisualSGIX, glxImportContextEXT, glxGetAGPOffsetMESA, glxChooseFBConfig, glxQueryChannelRectSGIX, glxReleaseVideoCaptureDeviceNV, glxJoinSwapGroupNV, glxReleaseTexImageEXT, glxQuerySwapGroupNV, glxSendPbufferToVideoNV, glxHyperpipeAttribSGIX, glxChooseFBConfigSGIX, glxEnumerateVideoCaptureDevicesNV, glxGetVisualFromFBConfigSGIX, glxVendorPrivate, glxGetProcAddress, glxHyperpipeConfigSGIX, glxChannelRectSyncSGIX, glxGetTransparentIndexSUN, glxGetCurrentReadDrawableSGI, glxCreateGLXPbufferSGIX, glxCreatePbuffer, glxGetFBConfigAttribSGIX, glxQueryMaxSwapBarriersSGIX, glxBindHyperpipeSGIX, glxQueryDrawable, glxCushionSGI, glxQueryVideoCaptureDeviceNV, glxWaitVideoSyncSGI, glxCreateContext, glxCreateContextAttribsARB, glxQueryMaxSwapGroupsNV, glxGetVideoSyncSGI, glxSelectEvent, glxChangeDrawableAttributes, glxQueryHyperpipeConfigSGIX, glxBindSwapBarrierNV, glxCreateGLXPixmap, glxDestroyWindow, glxClientInfo, glxGetFBConfigsSGIX, glxDestroyHyperpipeConfigSGIX, glxVendorPrivateWithReply, glxSwapBuffers, glxCopySubBufferMESA, glxCreateGLXPixmapMESA, glxReleaseBuffersMESA, glxDestroyGLXPbufferSGIX, glxQueryHyperpipeAttribSGIX, glxGetMscRateOML, glxFreeContextEXT, glxReleaseVideoDeviceNV, glxWaitForMscOML, glxCreateGLXPixmapWithConfigSGIX, glxDestroyGLXVideoSourceSGIX, glxWaitForSbcOML, glxSelectEventSGIX, glxGetFBConfigs, glxDestroyGLXPixmap, glxRender, glxBindChannelToWindowSGIX, glxBindTexImageEXT, glxSwapIntervalSGI, glxQueryChannelDeltasSGIX, glxLockVideoCaptureDeviceNV, glxGetFBConfigAttrib, glxQueryContext, glxGetSelectedEvent, glxCreateWindow, glxQueryHyperpipeBestAttribSGIX, glxIsDirect, glxChannelRectSGIX, glxGetCurrentDisplay, glxBindSwapBarrierSGIX, glxCopyImageSubDataNV, glxQueryContextInfoEXT, glxGetVideoInfoNV, glxWaitX, glxQueryServerString, glxJoinSwapGroupSGIX, glxQueryVersion, glxGetCurrentReadDrawable, glxUseXFont, glxReleaseVideoImageNV, glxCreateGLXVideoSourceSGIX, glxQueryFrameCountNV, glxQueryGLXPbufferSGIX, glxEnumerateVideoDevicesNV, glxSwapBuffersMscOML, glxQueryHyperpipeNetworkSGIX, glxGetProcAddressARB, glxGetSyncValuesOML, glxWaitGL, glxMakeCurrentReadSGI, glxDestroyContext, glxAssociateDMPbufferSGIX, glxSet3DfxModeMESA, glxGetSelectedEventSGIX, glxBindVideoCaptureDeviceNV, glxMakeCurrent, glxCreateContextWithConfigSGIX, glxCreatePixmap, glxBindVideoDeviceNV, glxDestroyPbuffer, glxGetVisualConfigs, glxGetCurrentDisplayEXT, glxBindVideoImageNV, glxQueryExtensionsString, glxSwapIntervalEXT, glxGetVisualFromFBConfig, glxGetDrawableAttributes, glxResetFrameCountNV, glxMakeContextCurrent, glxGetDrawableAttributesSGIX, glxChangeDrawableAttributesSGIX, glxGetVideoDeviceNV, GL_VIDEO_OUT_COLOR_AND_ALPHA_NV, GL_SAMPLES_SGIS, GL_HEIGHT_SGIX, GL_PIXMAP_BIT_SGIX, GL_AUX4_EXT, GL_FRONT_LEFT_EXT, GL_TEXTURE_RECTANGLE_BIT_EXT, GL_CONTEXT_MAJOR_VERSION_ARB, GL_TRANSPARENT_RED_VALUE, GL_SCREEN, GL_TRANSPARENT_GREEN_VALUE, GL_TEXTURE_FORMAT_EXT, GL_MAX_PBUFFER_HEIGHT_SGIX, GL_TEXTURE_FORMAT_NONE_EXT, GL_TRANSPARENT_ALPHA_VALUE, GL_GPU_CLOCK_AMD, GL_LATE_SWAPS_TEAR_EXT, GL_BIND_TO_TEXTURE_TARGETS_EXT, GL_DIRECT_COLOR_EXT, GL_CONFIG_CAVEAT, GL_GPU_FASTEST_TARGET_GPUS_AMD, GL_BUFFER_SWAP_COMPLETE_INTEL_MASK, GL_VISUAL_CAVEAT_EXT, GL_PSEUDO_COLOR_EXT, GL_PBUFFER_BIT, GL_AUX5_EXT, GL_RENDER_TYPE, GL_PIPE_RECT_LIMITS_SGIX, GL_MAX_PBUFFER_WIDTH, GL_FLIP_COMPLETE_INTEL, GL_TRUE_COLOR_EXT, GL_BACK_EXT, GL_GPU_OPENGL_VERSION_STRING_AMD, GL_AUX_BUFFERS_BIT, GL_TEXTURE_FORMAT_RGB_EXT, GL_VISUAL_ID, GL_AUX7_EXT, GL_PIXMAP_BIT, GL_NO_RESET_NOTIFICATION_ARB, GL_DIRECT_COLOR, GL_WINDOW_BIT, GL_CONTEXT_FLAGS_ARB, GL_TRANSPARENT_BLUE_VALUE, GL_BIND_TO_TEXTURE_RGB_EXT, GL_DEPTH_BUFFER_BIT, GL_LOSE_CONTEXT_ON_RESET_ARB, GL_RGBA_TYPE, GL_SAMPLE_BUFFERS_ARB, GL_X_RENDERABLE, GL_COPY_COMPLETE_INTEL, GL_NONE, GL_MAX_SWAP_INTERVAL_EXT, GL_BIND_TO_MIPMAP_TEXTURE_EXT, GL_SWAP_EXCHANGE_OML, GL_SHARE_CONTEXT_EXT, GL_TRANSPARENT_BLUE_VALUE_EXT, GL_X_VISUAL_TYPE, GL_HYPERPIPE_DISPLAY_PIPE_SGIX, GL_SAMPLES_ARB, GL_BACK_RIGHT_BUFFER_BIT, GL_GPU_NUM_SIMD_AMD, GL_BACK_LEFT_BUFFER_BIT_SGIX, GL_SLOW_VISUAL_EXT, GL_VISUAL_ID_EXT, GL_COLOR_INDEX_TYPE_SGIX, GL_BLENDED_RGBA_SGIS, GL_MAX_PBUFFER_HEIGHT, GL_TRUE_COLOR, GL_SWAP_COPY_OML, GL_VIDEO_OUT_COLOR_AND_DEPTH_NV, GL_FRONT_RIGHT_BUFFER_BIT, GL_MULTISAMPLE_SUB_RECT_HEIGHT_SGIS, GL_WINDOW_BIT_SGIX, GL_WINDOW_SGIX, GL_PBUFFER_WIDTH, GL_UNIQUE_ID_NV, GL_NON_CONFORMANT_CONFIG, GL_SLOW_CONFIG, GL_SYNC_FRAME_SGIX, GL_BAD_HYPERPIPE_CONFIG_SGIX, GL_BACK_LEFT_EXT, GL_TEXTURE_TARGET_EXT, GL_SAMPLE_BUFFERS_SGIS, GL_DRAWABLE_TYPE_SGIX, GL_SWAP_INTERVAL_EXT, GL_SWAP_UNDEFINED_OML, GL_MIPMAP_TEXTURE_EXT, GL_FLOAT_COMPONENTS_NV, GL_STENCIL_BUFFER_BIT, GL_AUX8_EXT, GL_COVERAGE_SAMPLES_NV, GL_DRAWABLE_TYPE, GL_BAD_HYPERPIPE_SGIX, GL_AUX1_EXT, GL_PBUFFER_BIT_SGIX, GL_GPU_NUM_PIPES_AMD, GL_TRANSPARENT_RED_VALUE_EXT, GL_TRANSPARENT_INDEX, GL_VIDEO_OUT_ALPHA_NV, GL_STATIC_COLOR_EXT, GL_TRANSPARENT_INDEX_EXT, GL_CONTEXT_ES_PROFILE_BIT_EXT, GL_GRAY_SCALE_EXT, GL_HYPERPIPE_STEREO_SGIX, GL_SAMPLE_BUFFERS_3DFX, GL_MAX_PBUFFER_WIDTH_SGIX, GL_ACCUM_BUFFER_BIT, GL_FRONT_LEFT_BUFFER_BIT_SGIX, GL_DEVICE_ID_NV, GL_RGBA_FLOAT_TYPE_ARB, GL_PBUFFER_SGIX, GL_GPU_NUM_SPI_AMD, GL_VIDEO_OUT_DEPTH_NV, GL_FRONT_RIGHT_BUFFER_BIT_SGIX, GL_TRANSPARENT_GREEN_VALUE_EXT, GL_COLOR_INDEX_BIT, GL_RENDER_TYPE_SGIX, GL_SAVED, GL_VIDEO_OUT_STACKED_FIELDS_1_2_NV, GL_FRAMEBUFFER_SRGB_CAPABLE_ARB, GL_STENCIL_BUFFER_BIT_SGIX, GL_BIND_TO_TEXTURE_RGBA_EXT, GL_X3DFX_WINDOW_MODE_MESA, GL_PBUFFER_HEIGHT, GL_HYPERPIPE_PIXEL_AVERAGE_SGIX, GL_OPTIMAL_PBUFFER_HEIGHT_SGIX, GL_HYPERPIPE_RENDER_PIPE_SGIX, GL_GPU_VENDOR_AMD, GL_VIDEO_OUT_FIELD_1_NV, GL_PBUFFER, GL_BACK_RIGHT_BUFFER_BIT_SGIX, GL_TRANSPARENT_RGB, GL_CONTEXT_ALLOW_BUFFER_BYTE_ORDER_MISMATCH_ARB, GL_EVENT_MASK_SGIX, GL_AUX_BUFFERS_BIT_SGIX, GL_COLOR_SAMPLES_NV, GL_STATIC_GRAY, GL_BUFFER_CLOBBER_MASK_SGIX, GL_BACK_LEFT_BUFFER_BIT, GL_RGBA_FLOAT_BIT_ARB, GL_VIDEO_OUT_STACKED_FIELDS_2_1_NV, GL_PRESERVED_CONTENTS_SGIX, GL_GRAY_SCALE, GL_RGBA_UNSIGNED_FLOAT_TYPE_EXT, GL_AUX2_EXT, GL_SAVED_SGIX, GL_EXCHANGE_COMPLETE_INTEL, GL_GPU_NUM_RB_AMD, GL_NUM_VIDEO_CAPTURE_SLOTS_NV, GL_VIDEO_OUT_FRAME_NV, GL_TRANSPARENT_ALPHA_VALUE_EXT, GL_PIPE_RECT_SGIX, GL_DEPTH_BUFFER_BIT_SGIX, GL_SYNC_SWAP_SGIX, GL_SAMPLES, GL_SWAP_METHOD_OML, GL_TEXTURE_FORMAT_RGBA_EXT, GL_HEIGHT, GL_AUX9_EXT, GL_AUX0_EXT, GL_DAMAGED, GL_TEXTURE_2D_EXT, GL_DONT_CARE, GL_X_RENDERABLE_SGIX, GL_NON_CONFORMANT_VISUAL_EXT, GL_VISUAL_SELECT_GROUP_SGIX, GL_TEXTURE_2D_BIT_EXT, GL_DAMAGED_SGIX, GL_VIDEO_OUT_COLOR_NV, GL_CONTEXT_MINOR_VERSION_ARB, GL_ACCUM_BUFFER_BIT_SGIX, GL_STATIC_GRAY_EXT, GL_FBCONFIG_ID, GL_CONTEXT_CORE_PROFILE_BIT_ARB, GL_TRANSPARENT_INDEX_VALUE_EXT, GL_HYPERPIPE_PIPE_NAME_LENGTH_SGIX, GL_CONTEXT_PROFILE_MASK_ARB, GL_TEXTURE_1D_EXT, GL_MULTISAMPLE_SUB_RECT_WIDTH_SGIS, GL_TRANSPARENT_INDEX_VALUE, GL_X_VISUAL_TYPE_EXT, GL_RGBA_BIT, GL_LARGEST_PBUFFER, GL_RGBA_BIT_SGIX, GL_SAMPLES_3DFX, GL_WIDTH, GL_PBUFFER_CLOBBER_MASK, GL_WINDOW, GL_PSEUDO_COLOR, GL_WIDTH_SGIX, GL_CONTEXT_COMPATIBILITY_PROFILE_BIT_ARB, GL_CONTEXT_RESET_NOTIFICATION_STRATEGY_ARB, GL_BACK_BUFFER_AGE_EXT, GL_FRAMEBUFFER_SRGB_CAPABLE_EXT, GL_TRANSPARENT_TYPE, GL_TRANSPARENT_TYPE_EXT, GL_VIDEO_OUT_FIELD_2_NV, GL_AUX6_EXT, GL_FBCONFIG_ID_SGIX, GL_BACK_RIGHT_EXT, GL_AUX3_EXT, GL_STATIC_COLOR, GL_FRONT_EXT, GL_COLOR_INDEX_BIT_SGIX, GL_CONTEXT_ROBUST_ACCESS_BIT_ARB, GL_EVENT_MASK, GL_CONTEXT_DEBUG_BIT_ARB, GL_FRONT_RIGHT_EXT, GL_COLOR_INDEX_TYPE, GL_CONTEXT_FORWARD_COMPATIBLE_BIT_ARB, GL_Y_INVERTED_EXT, GL_SAMPLE_BUFFERS, GL_FRONT_LEFT_BUFFER_BIT, GL_CONTEXT_ES2_PROFILE_BIT_EXT, GL_PRESERVED_CONTENTS, GL_TEXTURE_1D_BIT_EXT, GL_TRANSPARENT_RGB_EXT, GL_LARGEST_PBUFFER_SGIX, GL_GPU_RAM_AMD, GL_RGBA_UNSIGNED_FLOAT_BIT_EXT, GL_MAX_PBUFFER_PIXELS_SGIX, GL_X3DFX_FULLSCREEN_MODE_MESA, GL_TEXTURE_RECTANGLE_EXT, GL_RGBA_TYPE_SGIX, GL_GPU_RENDERER_STRING_AMD, GL_NUM_VIDEO_SLOTS_NV, GL_SAMPLE_BUFFERS_BIT_SGIX, GL_MAX_PBUFFER_PIXELS, GL_HYPERPIPE_ID_SGIX, GL_OPTIMAL_PBUFFER_WIDTH_SGIX, GL_DIGITAL_MEDIA_PBUFFER_SGIX
