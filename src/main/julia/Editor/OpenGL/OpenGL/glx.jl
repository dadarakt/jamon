#Types, functions and constants, needed on top of the common ones
#types
const GL_GLX_TYPES = [
]
#constants
const GL_GLX_CONSTANTS = [
:(const X_RENDERABLE                                                    = 0x8012),
:(const RGBA_FLOAT_TYPE_ARB                                             = 0x20B9),
:(const AUX_BUFFERS_BIT                                                 = 0x00000010),
:(const AUX1_EXT                                                        = 0x20E3),
:(const TRANSPARENT_RGB_EXT                                             = 0x8008),
:(const FRONT_RIGHT_BUFFER_BIT_SGIX                                     = 0x00000002),
:(const PBUFFER_HEIGHT                                                  = 0x8040),
:(const TRANSPARENT_RGB                                                 = 0x8008),
:(const COLOR_SAMPLES_NV                                                = 0x20B3),
:(const RGBA_UNSIGNED_FLOAT_TYPE_EXT                                    = 0x20B1),
:(const BIND_TO_TEXTURE_RGB_EXT                                         = 0x20D0),
:(const BAD_HYPERPIPE_SGIX                                              = 92),
:(const HYPERPIPE_ID_SGIX                                               = 0x8030),
:(const WIDTH                                                           = 0x801D),
:(const COLOR_INDEX_BIT                                                 = 0x00000002),
:(const STATIC_COLOR_EXT                                                = 0x8005),
:(const AUX2_EXT                                                        = 0x20E4),
:(const HYPERPIPE_RENDER_PIPE_SGIX                                      = 0x00000002),
:(const VIDEO_OUT_FRAME_NV                                              = 0x20C8),
:(const SAMPLES_ARB                                                     = 100001),
:(const COLOR_INDEX_BIT_SGIX                                            = 0x00000002),
:(const EVENT_MASK_SGIX                                                 = 0x801F),
:(const SYNC_SWAP_SGIX                                                  = 0x00000001),
:(const MAX_SWAP_INTERVAL_EXT                                           = 0x20F2),
:(const VIDEO_OUT_COLOR_AND_DEPTH_NV                                    = 0x20C7),
:(const PIXMAP_BIT_SGIX                                                 = 0x00000002),
:(const RENDER_TYPE                                                     = 0x8011),
:(const EVENT_MASK                                                      = 0x801F),
:(const VIDEO_OUT_STACKED_FIELDS_2_1_NV                                 = 0x20CC),
:(const HYPERPIPE_PIXEL_AVERAGE_SGIX                                    = 0x00000004),
:(const CONTEXT_MINOR_VERSION_ARB                                       = 0x2092),
:(const MIPMAP_TEXTURE_EXT                                              = 0x20D7),
:(const OPTIMAL_PBUFFER_HEIGHT_SGIX                                     = 0x801A),
:(const X3DFX_WINDOW_MODE_MESA                                          = 0x1),
:(const NON_CONFORMANT_CONFIG                                           = 0x800D),
:(const COLOR_INDEX_TYPE                                                = 0x8015),
:(const GPU_NUM_SIMD_AMD                                                = 0x21A6),
:(const SWAP_EXCHANGE_OML                                               = 0x8061),
:(const GRAY_SCALE                                                      = 0x8006),
:(const SLOW_VISUAL_EXT                                                 = 0x8001),
:(const HYPERPIPE_STEREO_SGIX                                           = 0x00000003),
:(const SAVED_SGIX                                                      = 0x8021),
:(const SAMPLES_SGIS                                                    = 100001),
:(const VIDEO_OUT_FIELD_2_NV                                            = 0x20CA),
:(const CONTEXT_ES2_PROFILE_BIT_EXT                                     = 0x00000004),
:(const SAMPLE_BUFFERS_3DFX                                             = 0x8050),
:(const GPU_RAM_AMD                                                     = 0x21A3),
:(const AUX7_EXT                                                        = 0x20E9),
:(const MAX_PBUFFER_HEIGHT                                              = 0x8017),
:(const PIXMAP_BIT                                                      = 0x00000002),
:(const AUX3_EXT                                                        = 0x20E5),
:(const TRANSPARENT_TYPE                                                = 0x23),
:(const CONTEXT_COMPATIBILITY_PROFILE_BIT_ARB                           = 0x00000002),
:(const VIDEO_OUT_ALPHA_NV                                              = 0x20C4),
:(const TRANSPARENT_INDEX_VALUE_EXT                                     = 0x24),
:(const VIDEO_OUT_COLOR_AND_ALPHA_NV                                    = 0x20C6),
:(const PRESERVED_CONTENTS_SGIX                                         = 0x801B),
:(const SWAP_INTERVAL_EXT                                               = 0x20F1),
:(const CONTEXT_PROFILE_MASK_ARB                                        = 0x9126),
:(const LOSE_CONTEXT_ON_RESET_ARB                                       = 0x8252),
:(const TRANSPARENT_ALPHA_VALUE_EXT                                     = 0x28),
:(const CONFIG_CAVEAT                                                   = 0x20),
:(const TRANSPARENT_RED_VALUE                                           = 0x25),
:(const X_RENDERABLE_SGIX                                               = 0x8012),
:(const SAMPLE_BUFFERS_ARB                                              = 100000),
:(const FRONT_RIGHT_EXT                                                 = 0x20DF),
:(const FBCONFIG_ID_SGIX                                                = 0x8013),
:(const LARGEST_PBUFFER                                                 = 0x801C),
:(const AUX_BUFFERS_BIT_SGIX                                            = 0x00000010),
:(const WINDOW_BIT                                                      = 0x00000001),
:(const CONTEXT_ROBUST_ACCESS_BIT_ARB                                   = 0x00000004),
:(const UNIQUE_ID_NV                                                    = 0x20CE),
:(const RGBA_TYPE                                                       = 0x8014),
:(const DRAWABLE_TYPE                                                   = 0x8010),
:(const WIDTH_SGIX                                                      = 0x801D),
:(const SAMPLE_BUFFERS_SGIS                                             = 100000),
:(const PIPE_RECT_LIMITS_SGIX                                           = 0x00000002),
:(const PBUFFER_WIDTH                                                   = 0x8041),
:(const ACCUM_BUFFER_BIT_SGIX                                           = 0x00000080),
:(const BACK_RIGHT_EXT                                                  = 0x20E1),
:(const PBUFFER_CLOBBER_MASK                                            = 0x08000000),
:(const X_VISUAL_TYPE_EXT                                               = 0x22),
:(const FLOAT_COMPONENTS_NV                                             = 0x20B0),
:(const COVERAGE_SAMPLES_NV                                             = 100001),
:(const AUX0_EXT                                                        = 0x20E2),
:(const TRUE_COLOR_EXT                                                  = 0x8002),
:(const FRAMEBUFFER_SRGB_CAPABLE_EXT                                    = 0x20B2),
:(const FRONT_LEFT_BUFFER_BIT_SGIX                                      = 0x00000001),
:(const FRONT_EXT                                                       = 0x20DE),
:(const MAX_PBUFFER_PIXELS_SGIX                                         = 0x8018),
:(const BACK_EXT                                                        = 0x20E0),
:(const PIPE_RECT_SGIX                                                  = 0x00000001),
:(const TRUE_COLOR                                                      = 0x8002),
:(const MAX_PBUFFER_WIDTH_SGIX                                          = 0x8016),
:(const BACK_RIGHT_BUFFER_BIT                                           = 0x00000008),
:(const VISUAL_ID                                                       = 0x800B),
:(const AUX8_EXT                                                        = 0x20EA),
:(const BUFFER_SWAP_COMPLETE_INTEL_MASK                                 = 0x04000000),
:(const GPU_NUM_RB_AMD                                                  = 0x21A7),
:(const TEXTURE_2D_BIT_EXT                                              = 0x00000002),
:(const TEXTURE_RECTANGLE_BIT_EXT                                       = 0x00000004),
:(const SWAP_COPY_OML                                                   = 0x8062),
:(const SAMPLE_BUFFERS_BIT_SGIX                                         = 0x00000100),
:(const BACK_LEFT_BUFFER_BIT                                            = 0x00000004),
:(const BAD_HYPERPIPE_CONFIG_SGIX                                       = 91),
:(const CONTEXT_ES_PROFILE_BIT_EXT                                      = 0x00000004),
:(const TRANSPARENT_BLUE_VALUE_EXT                                      = 0x27),
:(const CONTEXT_DEBUG_BIT_ARB                                           = 0x00000001),
:(const COPY_COMPLETE_INTEL                                             = 0x8181),
:(const GPU_VENDOR_AMD                                                  = 0x1F00),
:(const CONTEXT_MAJOR_VERSION_ARB                                       = 0x2091),
:(const VIDEO_OUT_COLOR_NV                                              = 0x20C3),
:(const PBUFFER_BIT_SGIX                                                = 0x00000004),
:(const NO_RESET_NOTIFICATION_ARB                                       = 0x8261),
:(const TEXTURE_FORMAT_RGBA_EXT                                         = 0x20DA),
:(const EXCHANGE_COMPLETE_INTEL                                         = 0x8180),
:(const X3DFX_FULLSCREEN_MODE_MESA                                      = 0x2),
:(const STATIC_GRAY_EXT                                                 = 0x8007),
:(const BACK_RIGHT_BUFFER_BIT_SGIX                                      = 0x00000008),
:(const NON_CONFORMANT_VISUAL_EXT                                       = 0x800D),
:(const RGBA_BIT_SGIX                                                   = 0x00000001),
:(const FRONT_LEFT_BUFFER_BIT                                           = 0x00000001),
:(const STATIC_COLOR                                                    = 0x8005),
:(const SHARE_CONTEXT_EXT                                               = 0x800A),
:(const GPU_NUM_PIPES_AMD                                               = 0x21A5),
:(const AUX5_EXT                                                        = 0x20E7),
:(const VIDEO_OUT_DEPTH_NV                                              = 0x20C5),
:(const VISUAL_SELECT_GROUP_SGIX                                        = 0x8028),
:(const GPU_NUM_SPI_AMD                                                 = 0x21A8),
:(const GPU_RENDERER_STRING_AMD                                         = 0x1F01),
:(const DIRECT_COLOR                                                    = 0x8003),
:(const NUM_VIDEO_SLOTS_NV                                              = 0x20F0),
:(const DAMAGED                                                         = 0x8020),
:(const MAX_PBUFFER_PIXELS                                              = 0x8018),
:(const DIGITAL_MEDIA_PBUFFER_SGIX                                      = 0x8024),
:(const FRONT_LEFT_EXT                                                  = 0x20DE),
:(const TEXTURE_2D_EXT                                                  = 0x20DC),
:(const HEIGHT                                                          = 0x801E),
:(const RENDER_TYPE_SGIX                                                = 0x8011),
:(const HYPERPIPE_DISPLAY_PIPE_SGIX                                     = 0x00000001),
:(const STENCIL_BUFFER_BIT_SGIX                                         = 0x00000040),
:(const RGBA_TYPE_SGIX                                                  = 0x8014),
:(const GPU_CLOCK_AMD                                                   = 0x21A4),
:(const PRESERVED_CONTENTS                                              = 0x801B),
:(const TEXTURE_FORMAT_EXT                                              = 0x20D5),
:(const PBUFFER_BIT                                                     = 0x00000004),
:(const TEXTURE_FORMAT_RGB_EXT                                          = 0x20D9),
:(const VISUAL_ID_EXT                                                   = 0x800B),
:(const DEVICE_ID_NV                                                    = 0x20CD),
:(const BIND_TO_TEXTURE_RGBA_EXT                                        = 0x20D1),
:(const MULTISAMPLE_SUB_RECT_HEIGHT_SGIS                                = 0x8027),
:(const SYNC_FRAME_SGIX                                                 = 0x00000000),
:(const TRANSPARENT_BLUE_VALUE                                          = 0x27),
:(const SCREEN                                                          = 0x800C),
:(const TRANSPARENT_INDEX                                               = 0x8009),
:(const DRAWABLE_TYPE_SGIX                                              = 0x8010),
:(const WINDOW                                                          = 0x8022),
:(const X_VISUAL_TYPE                                                   = 0x22),
:(const RGBA_UNSIGNED_FLOAT_BIT_EXT                                     = 0x00000008),
:(const BIND_TO_TEXTURE_TARGETS_EXT                                     = 0x20D3),
:(const Y_INVERTED_EXT                                                  = 0x20D4),
:(const SWAP_UNDEFINED_OML                                              = 0x8063),
:(const RGBA_BIT                                                        = 0x00000001),
:(const VIDEO_OUT_STACKED_FIELDS_1_2_NV                                 = 0x20CB),
:(const DEPTH_BUFFER_BIT_SGIX                                           = 0x00000020),
:(const BLENDED_RGBA_SGIS                                               = 0x8025),
:(const BUFFER_CLOBBER_MASK_SGIX                                        = 0x08000000),
:(const VISUAL_CAVEAT_EXT                                               = 0x20),
:(const MAX_PBUFFER_HEIGHT_SGIX                                         = 0x8017),
:(const TEXTURE_FORMAT_NONE_EXT                                         = 0x20D8),
:(const TRANSPARENT_GREEN_VALUE                                         = 0x26),
:(const AUX6_EXT                                                        = 0x20E8),
:(const PSEUDO_COLOR_EXT                                                = 0x8004),
:(const STATIC_GRAY                                                     = 0x8007),
:(const TEXTURE_TARGET_EXT                                              = 0x20D6),
:(const GRAY_SCALE_EXT                                                  = 0x8006),
:(const TRANSPARENT_INDEX_VALUE                                         = 0x24),
:(const WINDOW_BIT_SGIX                                                 = 0x00000001),
:(const LARGEST_PBUFFER_SGIX                                            = 0x801C),
:(const TEXTURE_RECTANGLE_EXT                                           = 0x20DD),
:(const HEIGHT_SGIX                                                     = 0x801E),
:(const LATE_SWAPS_TEAR_EXT                                             = 0x20F3),
:(const SAVED                                                           = 0x8021),
:(const SLOW_CONFIG                                                     = 0x8001),
:(const DAMAGED_SGIX                                                    = 0x8020),
:(const CONTEXT_FLAGS_ARB                                               = 0x2094),
:(const PBUFFER_SGIX                                                    = 0x8023),
:(const TEXTURE_1D_BIT_EXT                                              = 0x00000001),
:(const TRANSPARENT_INDEX_EXT                                           = 0x8009),
:(const PBUFFER                                                         = 0x8023),
:(const CONTEXT_FORWARD_COMPATIBLE_BIT_ARB                              = 0x00000002),
:(const GPU_OPENGL_VERSION_STRING_AMD                                   = 0x1F02),
:(const MAX_PBUFFER_WIDTH                                               = 0x8016),
:(const VIDEO_OUT_FIELD_1_NV                                            = 0x20C9),
:(const TEXTURE_1D_EXT                                                  = 0x20DB),
:(const FBCONFIG_ID                                                     = 0x8013),
:(const WINDOW_SGIX                                                     = 0x8022),
:(const CONTEXT_ALLOW_BUFFER_BYTE_ORDER_MISMATCH_ARB                    = 0x2095),
:(const FRAMEBUFFER_SRGB_CAPABLE_ARB                                    = 0x20B2),
:(const OPTIMAL_PBUFFER_WIDTH_SGIX                                      = 0x8019),
:(const BACK_LEFT_EXT                                                   = 0x20E0),
:(const COLOR_INDEX_TYPE_SGIX                                           = 0x8015),
:(const AUX4_EXT                                                        = 0x20E6),
:(const BIND_TO_MIPMAP_TEXTURE_EXT                                      = 0x20D2),
:(const CONTEXT_RESET_NOTIFICATION_STRATEGY_ARB                         = 0x8256),
:(const GPU_FASTEST_TARGET_GPUS_AMD                                     = 0x21A2),
:(const TRANSPARENT_TYPE_EXT                                            = 0x23),
:(const HYPERPIPE_PIPE_NAME_LENGTH_SGIX                                 = 80),
:(const TRANSPARENT_RED_VALUE_EXT                                       = 0x25),
:(const TRANSPARENT_GREEN_VALUE_EXT                                     = 0x26),
:(const RGBA_FLOAT_BIT_ARB                                              = 0x00000004),
:(const TRANSPARENT_ALPHA_VALUE                                         = 0x28),
:(const CONTEXT_CORE_PROFILE_BIT_ARB                                    = 0x00000001),
:(const PSEUDO_COLOR                                                    = 0x8004),
:(const BACK_BUFFER_AGE_EXT                                             = 0x20F4),
:(const FLIP_COMPLETE_INTEL                                             = 0x8182),
:(const AUX9_EXT                                                        = 0x20EB),
:(const FRONT_RIGHT_BUFFER_BIT                                          = 0x00000002),
:(const SAMPLES_3DFX                                                    = 0x8051),
:(const SWAP_METHOD_OML                                                 = 0x8060),
:(const NUM_VIDEO_CAPTURE_SLOTS_NV                                      = 0x20CF),
:(const MULTISAMPLE_SUB_RECT_WIDTH_SGIS                                 = 0x8026),
:(const DIRECT_COLOR_EXT                                                = 0x8003),
:(const BACK_LEFT_BUFFER_BIT_SGIX                                       = 0x00000004)]
#function bodies
const GL_GLX_FUNCTIONS = [
:(glxGetVideoSyncSGI(count::Ptr{uint32})::Cint),
:(glxChangeDrawableAttributes(drawable::GLint)::Void),
:(glxGetFBConfigFromVisualSGIX(dpy::Ptr{Display}, vis::XVisualInfo)::Ptr{Void}),
:(glxGetTransparentIndexSUN(dpy::Ptr{Display}, overlay::Window, underlay::Window, pTransparentIndex::Ptr{long})::Cint),
:(glxGetProcAddressARB(procName::Ptr{GLubyte})::Ptr{Void}),
:(glxBindHyperpipeSGIX(dpy::Ptr{Display}, hpId::Cint)::Cint),
:(glxCreateGLXPixmapMESA(dpy::Ptr{Display}, visual::XVisualInfo, pixmap::Pixmap, cmap::Colormap)::Ptr{Void}),
:(glxCreateNewContext(config::GLint, render_type::GLint, share_list::GLint, direct::GLint)::Void),
:(glxReleaseVideoCaptureDeviceNV(dpy::Ptr{Display}, device::GLXVideoCaptureDeviceNV)::Void),
:(glxCopyImageSubDataNV(dpy::Ptr{Display}, srcCtx::GLXContext, srcName::GLuint, srcTarget::GLenum, srcLevel::GLint, srcX::GLint, srcY::GLint, srcZ::GLint, dstCtx::GLXContext, dstName::GLuint, dstTarget::GLenum, dstLevel::GLint, dstX::GLint, dstY::GLint, dstZ::GLint, width::GLsizei, height::GLsizei, depth::GLsizei)::Void),
:(glxGetSelectedEventSGIX(dpy::Ptr{Display}, drawable::GLXDrawable, mask::Ptr{unsigned_long})::Void),
:(glxDestroyGLXVideoSourceSGIX(dpy::GLint, glxvideosource::GLint)::Void),
:(glxSelectEventSGIX(dpy::Ptr{Display}, drawable::GLXDrawable, mask::unsigned_long)::Void),
:(glxJoinSwapGroupNV(dpy::Ptr{Display}, drawable::GLXDrawable, group::GLuint)::Cint),
:(glxEnumerateVideoCaptureDevicesNV(dpy::Ptr{Display}, screen::Cint, nelements::Ptr{Cint})::Ptr{Void}),
:(glxCreateGLXPixmapWithConfigSGIX(config::GLint, pixmap::GLint, glxpixmap::GLint)::Void),
:(glxRenderLarge()::Void),
:(glxDestroyContext(context::GLint)::Void),
:(glxIsDirect(dpy::GLint, context::GLint)::Void),
:(glxCushionSGI(dpy::Ptr{Display}, window::Window, cushion::float32)::Void),
:(glxCreateWindow(config::GLint, window::GLint, glxwindow::GLint)::Void),
:(glxSwapBuffersMscOML(dpy::Ptr{Display}, drawable::GLXDrawable, target_msc::CClonglong, divisor::CClonglong, remainder::CClonglong)::CClonglong),
:(glxEnumerateVideoDevicesNV(dpy::Ptr{Display}, screen::Cint, nelements::Ptr{Cint})::Ptr{Cuint}),
:(glxQueryMaxSwapBarriersSGIX()::Void),
:(glxCopySubBufferMESA(dpy::Ptr{Display}, drawable::GLXDrawable, x::int, y::int, width::int, height::int)::Void),
:(glxGetFBConfigs()::Void),
:(glxGetFBConfigAttribSGIX(dpy::Ptr{Display}, config::GLXFBConfigSGIX, attribute::Cint, value::Ptr{Cint})::Cint),
:(glxReleaseBuffersMESA(dpy::Ptr{Display}, drawable::GLXDrawable)::Cint),
:(glxCopyContext(source::GLint, dest::GLint, mask::GLint)::Void),
:(glxChannelRectSyncSGIX(display::Ptr{Display}, screen::Cint, channel::Cint, synctype::GLenum)::Cint),
:(glxGetVisualConfigs()::Void),
:(glxDestroyHyperpipeConfigSGIX(dpy::Ptr{Display}, hpId::Cint)::Cint),
:(glxClientInfo()::Void),
:(glxCreatePbuffer(config::GLint, pbuffer::GLint)::Void),
:(glxBindVideoCaptureDeviceNV(dpy::Ptr{Display}, video_capture_slot::Cuint, device::GLXVideoCaptureDeviceNV)::Cint),
:(glxChangeDrawableAttributesSGIX(drawable::GLint)::Void),
:(glxQueryServerString(screen::GLint, name::GLint)::Void),
:(glxGetCurrentReadDrawable()::Ptr{Void}),
:(glxQueryContext()::Void),
:(glxDestroyPixmap(glxpixmap::GLint)::Void),
:(glxDestroyPbuffer(pbuffer::GLint)::Void),
:(glxDestroyGLXPixmap(pixmap::GLint)::Void),
:(glxQueryVersion(major::Ptr{GLint}, minor::Ptr{GLint})::Void),
:(glxGetVideoInfoNV(dpy::Ptr{Display}, screen::Cint, VideoDevice::GLXVideoDeviceNV, pulCounterOutputPbuffer::Ptr{Culong}, pulCounterOutputVideo::Ptr{Culong})::Cint),
:(glxGetVisualFromFBConfigSGIX(dpy::Ptr{Display}, config::GLXFBConfigSGIX)::Ptr{Void}),
:(glxCreateGLXVideoSourceSGIX(dpy::GLint, screen::GLint, server::GLint, path::GLint, class::GLint, node::GLint)::Void),
:(glxBindVideoDeviceNV(dpy::Ptr{Display}, video_slot::Cuint, video_device::Cuint, attrib_list::Ptr{Cint})::Cint),
:(glxGetDrawableAttributesSGIX(drawable::GLint)::Void),
:(glxSwapIntervalEXT(dpy::Ptr{Display}, drawable::GLXDrawable, interval::int)::Void),
:(glxCreateContextAttribsARB(dpy::Ptr{Display}, config::GLXFBConfig, share_context::GLXContext, direct::Cint, attrib_list::Ptr{Cint})::Ptr{Void}),
:(glxReleaseTexImageEXT(dpy::Ptr{Display}, drawable::GLXDrawable, buffer::int)::Void),
:(glxQueryHyperpipeConfigSGIX(dpy::Ptr{Display}, hpId::Cint, npipes::Ptr{Cint})::Ptr{Void}),
:(glxBindSwapBarrierNV(dpy::Ptr{Display}, group::GLuint, barrier::GLuint)::Cint),
:(glxBindChannelToWindowSGIX(display::Ptr{Display}, screen::Cint, channel::Cint, window::Window)::Cint),
:(glxBindSwapBarrierSGIX(window::GLint, barrier::GLint)::Void),
:(glxMakeContextCurrent(drawable::GLint, readdrawable::GLint, context::GLint)::Void),
:(glxWaitGL(context::GLint)::Void),
:(glxQuerySwapGroupNV(dpy::Ptr{Display}, drawable::GLXDrawable, group::Ptr{GLuint}, barrier::Ptr{GLuint})::Cint),
:(glxGetCurrentDisplayEXT()::Ptr{Void}),
:(glxGetSyncValuesOML(dpy::Ptr{Display}, drawable::GLXDrawable, ust::Ptr{Clonglong}, msc::Ptr{Clonglong}, sbc::Ptr{Clonglong})::Cint),
:(glxImportContextEXT(dpy::Ptr{Display}, contextID::GLXContextID)::Ptr{Void}),
:(glxQueryFrameCountNV(dpy::Ptr{Display}, screen::Cint, count::Ptr{GLuint})::Cint),
:(glxDestroyGLXPbufferSGIX(pbuffer::GLint)::Void),
:(glxBindVideoImageNV(dpy::Ptr{Display}, VideoDevice::GLXVideoDeviceNV, pbuf::GLXPbuffer, iVideoBuffer::Cint)::Cint),
:(glxQueryHyperpipeBestAttribSGIX(dpy::Ptr{Display}, timeSlice::Cint, attrib::Cint, size::Cint, attribList::Ptr{Void}, returnAttribList::Ptr{Void})::Cint),
:(glxHyperpipeAttribSGIX(dpy::Ptr{Display}, timeSlice::Cint, attrib::Cint, size::Cint, attribList::Ptr{Void})::Cint),
:(glxQueryDrawable(dpy::Ptr{Display}, draw::GLXDrawable, attribute::int, value::Ptr{uint32})::Void),
:(glxWaitForMscOML(dpy::Ptr{Display}, drawable::GLXDrawable, target_msc::CClonglong, divisor::CClonglong, remainder::CClonglong, ust::Ptr{Clonglong}, msc::Ptr{Clonglong}, sbc::Ptr{Clonglong})::Cint),
:(glxGetCurrentReadDrawableSGI()::Ptr{Void}),
:(glxSwapBuffers(drawable::GLint)::Void),
:(glxQueryContextInfoEXT()::Void),
:(glxSwapIntervalSGI()::Void),
:(glxHyperpipeConfigSGIX(dpy::Ptr{Display}, networkId::Cint, npipes::Cint, cfg::Ptr{GLXHyperpipeConfigSGIX}, hpId::Ptr{Cint})::Cint),
:(glxMakeCurrentReadSGI(drawable::GLint, readdrawable::GLint, context::GLint)::Void),
:(glxGetSelectedEvent(dpy::Ptr{Display}, draw::GLXDrawable, event_mask::Ptr{unsigned_long})::Void),
:(glxUseXFont(font::GLint, first::GLint, count::GLint, list_base::GLint)::Void),
:(glxSet3DfxModeMESA(mode::Cint)::Cint),
:(glxDestroyWindow(glxwindow::GLint)::Void),
:(glxCreateGLXPixmap(visual::GLint, pixmap::GLint, glxpixmap::GLint)::Void),
:(glxMakeCurrent(drawable::GLint, context::GLint)::Void),
:(glxAssociateDMPbufferSGIX(dpy::Ptr{Display}, pbuffer::GLXPbufferSGIX, params::DMparams, dmbuffer::DMbuffer)::Cint),
:(glxVendorPrivateWithReply()::Void),
:(glxReleaseVideoDeviceNV(dpy::Ptr{Display}, screen::Cint, VideoDevice::GLXVideoDeviceNV)::Cint),
:(glxChooseFBConfigSGIX(dpy::Ptr{Display}, screen::Cint, attrib_list::Ptr{Cint}, nelements::Ptr{Cint})::Ptr{Void}),
:(glxChooseFBConfig(dpy::Ptr{Display}, screen::Cint, attrib_list::Ptr{Cint}, nelements::Ptr{Cint})::Ptr{Void}),
:(glxWaitVideoSyncSGI(divisor::Cint, remainder::Cint, count::Ptr{uint32})::Cint),
:(glxGetProcAddress(procName::Ptr{GLubyte})::Ptr{Void}),
:(glxGetDrawableAttributes(drawable::GLint)::Void),
:(glxWaitX()::Void),
:(glxQueryHyperpipeNetworkSGIX(dpy::Ptr{Display}, npipes::Ptr{Cint})::Ptr{Void}),
:(glxFreeContextEXT(dpy::Ptr{Display}, context::GLXContext)::Void),
:(glxSelectEvent(dpy::Ptr{Display}, draw::GLXDrawable, event_mask::unsigned_long)::Void),
:(glxReleaseVideoImageNV(dpy::Ptr{Display}, pbuf::GLXPbuffer)::Cint),
:(glxQueryGLXPbufferSGIX(dpy::Ptr{Display}, pbuf::GLXPbufferSGIX, attribute::Cint, value::Ptr{uint32})::Cint),
:(glxQueryExtensionsString(screen::GLint)::Void),
:(glxGetAGPOffsetMESA(pointer::Ptr{Void})::Cuint),
:(glxSendPbufferToVideoNV(dpy::Ptr{Display}, pbuf::GLXPbuffer, iBufferType::Cint, pulCounterPbuffer::Ptr{Culong}, bBlock::GLboolean)::Cint),
:(glxGetMscRateOML(dpy::Ptr{Display}, drawable::GLXDrawable, numerator::Ptr{Cint}, denominator::Ptr{Cint})::Cint),
:(glxQueryChannelDeltasSGIX(display::Ptr{Display}, screen::Cint, channel::Cint, x::Ptr{Cint}, y::Ptr{Cint}, w::Ptr{Cint}, h::Ptr{Cint})::Cint),
:(glxCreateContextWithConfigSGIX(gc_id::GLint, screen::GLint, config::GLint, share_list::GLint)::Void),
:(glxBindTexImageEXT(dpy::Ptr{Display}, drawable::GLXDrawable, buffer::int, attrib_list::Ptr{int})::Void),
:(glxJoinSwapGroupSGIX(window::GLint, group::GLint)::Void),
:(glxGetVideoDeviceNV(dpy::Ptr{Display}, screen::Cint, numVideoDevices::Cint, pVideoDevice::GLXVideoDeviceNV)::Cint),
:(glxQueryMaxSwapGroupsNV(dpy::Ptr{Display}, screen::Cint, maxGroups::Ptr{GLuint}, maxBarriers::Ptr{GLuint})::Cint),
:(glxGetVisualFromFBConfig(dpy::Ptr{Display}, config::GLXFBConfig)::Ptr{Void}),
:(glxGetFBConfigAttrib(dpy::Ptr{Display}, config::GLXFBConfig, attribute::Cint, value::Ptr{Cint})::Cint),
:(glxCreateContext(gc_id::GLint, screen::GLint, visual::GLint, share_list::GLint)::Void),
:(glxWaitForSbcOML(dpy::Ptr{Display}, drawable::GLXDrawable, target_sbc::CClonglong, ust::Ptr{Clonglong}, msc::Ptr{Clonglong}, sbc::Ptr{Clonglong})::Cint),
:(glxQueryHyperpipeAttribSGIX(dpy::Ptr{Display}, timeSlice::Cint, attrib::Cint, size::Cint, returnAttribList::Ptr{Void})::Cint),
:(glxGetContextIDEXT(context::GLXContext)::Cuint),
:(glxCreatePixmap(config::GLint, pixmap::GLint, glxpixmap::GLint)::Void),
:(glxCreateGLXPbufferSGIX(config::GLint, pbuffer::GLint)::Void),
:(glxChannelRectSGIX(display::Ptr{Display}, screen::Cint, channel::Cint, x::Cint, y::Cint, w::Cint, h::Cint)::Cint),
:(glxGetCurrentDisplay()::Ptr{Void}),
:(glxGetFBConfigsSGIX()::Void),
:(glxResetFrameCountNV(dpy::Ptr{Display}, screen::Cint)::Cint),
:(glxLockVideoCaptureDeviceNV(dpy::Ptr{Display}, device::GLXVideoCaptureDeviceNV)::Void),
:(glxQueryVideoCaptureDeviceNV(dpy::Ptr{Display}, device::GLXVideoCaptureDeviceNV, attribute::Cint, value::Ptr{Cint})::Cint),
:(glxQueryChannelRectSGIX(display::Ptr{Display}, screen::Cint, channel::Cint, dx::Ptr{Cint}, dy::Ptr{Cint}, dw::Ptr{Cint}, dh::Ptr{Cint})::Cint),
:(glxRender()::Void),
:(glxVendorPrivate()::Void)]