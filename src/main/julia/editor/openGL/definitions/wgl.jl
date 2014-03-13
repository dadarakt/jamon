#function bodies
@createOpenGLFun wglUseFontBitmapsA(hDC::HDC, first::DWORD, count::DWORD, listBase::DWORD)::Cint
@createOpenGLFun wglGetPbufferDCARB(hPbuffer::HPBUFFERARB)::Ptr{Void}
@createOpenGLFun wglGetPixelFormatAttribfvEXT(hdc::HDC, iPixelFormat::Cint, iLayerPlane::Cint, nAttributes::Cuint, piAttributes::Ptr{Cint}, pfValues::Ptr{Cfloat})::Cint
@createOpenGLFun wglReleaseVideoDeviceNV(hVideoDevice::HPVIDEODEV)::Cint
@createOpenGLFun wglBindVideoCaptureDeviceNV(uVideoSlot::Cuint, hDevice::HVIDEOINPUTDEVICENV)::Cint
@createOpenGLFun wglGetGenlockSourceI3D(hDC::HDC, uSource::Ptr{Cuint})::Cint
@createOpenGLFun wglGetFrameUsageI3D(pUsage::Ptr{Cfloat})::Cint
@createOpenGLFun wglRealizeLayerPalette(hdc::HDC, iLayerPlane::Cint, bRealize::Bool)::Cint
@createOpenGLFun wglEnumGpusNV(iGpuIndex::Cuint, phGpu::HGPUNV)::Cint
@createOpenGLFun wglEnableGenlockI3D(hDC::HDC)::Cint
@createOpenGLFun wglGetDigitalVideoParametersI3D(hDC::HDC, iAttribute::Cint, piValue::Ptr{Cint})::Cint
@createOpenGLFun wglCreateContextAttribsARB(hDC::HDC, hShareContext::HGLRC, attribList::Ptr{Cint})::Ptr{Void}
@createOpenGLFun wglReleaseVideoCaptureDeviceNV(hDc::HDC, hDevice::HVIDEOINPUTDEVICENV)::Cint
@createOpenGLFun wglEnumGpusFromAffinityDCNV(hAffinityDC::HDC, iGpuIndex::Cuint, hGpu::HGPUNV)::Cint
@createOpenGLFun wglQueryPbufferEXT(hPbuffer::HPBUFFEREXT, iAttribute::Cint, piValue::Ptr{Cint})::Cint
@createOpenGLFun wglQueryVideoCaptureDeviceNV(hDc::HDC, hDevice::HVIDEOINPUTDEVICENV, iAttribute::Cint, piValue::Ptr{Cint})::Cint
@createOpenGLFun wglSendPbufferToVideoNV(hPbuffer::HPBUFFERARB, iBufferType::Cint, pulCounterPbuffer::Ptr{Culong}, bBlock::Bool)::Cint
@createOpenGLFun wglDXObjectAccessNV(hObject::HANDLE, access::GLenum)::Cint
@createOpenGLFun wglEnumGpuDevicesNV(hGpu::HGPUNV, iDeviceIndex::Cuint, lpGpuDevice::PGPU_DEVICE)::Cint
@createOpenGLFun wglGetGPUIDsAMD(maxCount::Cuint, ids::Ptr{Cuint})::Cuint
@createOpenGLFun wglCopyImageSubDataNV(hSrcRC::HGLRC, srcName::GLuint, srcTarget::GLenum, srcLevel::GLint, srcX::GLint, srcY::GLint, srcZ::GLint, hDstRC::HGLRC, dstName::GLuint, dstTarget::GLenum, dstLevel::GLint, dstX::GLint, dstY::GLint, dstZ::GLint, width::GLsizei, height::GLsizei, depth::GLsizei)::Cint
@createOpenGLFun wglGetPixelFormatAttribivARB(hdc::HDC, iPixelFormat::Cint, iLayerPlane::Cint, nAttributes::Cuint, piAttributes::Ptr{Cint}, piValues::Ptr{Cint})::Cint
@createOpenGLFun wglGetCurrentReadDCARB()::Ptr{Void}
@createOpenGLFun wglIsEnabledFrameLockI3D(pFlag::Ptr{Bool})::Cint
@createOpenGLFun wglDeleteAssociatedContextAMD(hglrc::HGLRC)::Cint
@createOpenGLFun wglDXUnlockObjectsNV(hDevice::HANDLE, count::GLint, hObjects::HANDLE)::Cint
@createOpenGLFun wglUseFontBitmapsW(hDC::HDC, first::DWORD, count::DWORD, listBase::DWORD)::Cint
@createOpenGLFun wglBindSwapBarrierNV(group::GLuint, barrier::GLuint)::Cint
@createOpenGLFun wglGetCurrentReadDCEXT()::Ptr{Void}
@createOpenGLFun wglSetPbufferAttribARB(hPbuffer::HPBUFFERARB, piAttribList::Ptr{Cint})::Cint
@createOpenGLFun wglQueryFrameTrackingI3D(pFrameCount::Ptr{DWORD}, pMissedFrames::Ptr{DWORD}, pLastMissedUsage::Ptr{Cfloat})::Cint
@createOpenGLFun wglCreateContext(hDc::HDC)::Ptr{Void}
@createOpenGLFun wglWaitForMscOML(hdc::HDC, target_msc::Clonglong, divisor::Clonglong, remainder::Clonglong, ust::Ptr{Clonglong}, msc::Ptr{Clonglong}, sbc::Ptr{Clonglong})::Cint
@createOpenGLFun wglSetGammaTableParametersI3D(hDC::HDC, iAttribute::Cint, piValue::Ptr{Cint})::Cint
@createOpenGLFun wglIsEnabledGenlockI3D(hDC::HDC, pFlag::Ptr{Bool})::Cint
@createOpenGLFun wglLoadDisplayColorTableEXT(table::Ptr{GLushort}, length::GLuint)::Bool
@createOpenGLFun wglSwapBuffers(hdc::HDC)::Cint
@createOpenGLFun wglBeginFrameTrackingI3D()::Cint
@createOpenGLFun wglGetPixelFormatAttribivEXT(hdc::HDC, iPixelFormat::Cint, iLayerPlane::Cint, nAttributes::Cuint, piAttributes::Ptr{Cint}, piValues::Ptr{Cint})::Cint
@createOpenGLFun wglGetDefaultProcAddress(lpszProc::LPCSTR)::Ptr{Void}
@createOpenGLFun wglCreateAssociatedContextAttribsAMD(id::Cuint, hShareContext::HGLRC, attribList::Ptr{Cint})::Ptr{Void}
@createOpenGLFun wglMakeContextCurrentEXT(hDrawDC::HDC, hReadDC::HDC, hglrc::HGLRC)::Cint
@createOpenGLFun wglGetSwapIntervalEXT()::Cint
@createOpenGLFun wglMakeAssociatedContextCurrentAMD(hglrc::HGLRC)::Cint
@createOpenGLFun wglDestroyPbufferEXT(hPbuffer::HPBUFFEREXT)::Cint
@createOpenGLFun wglGetVideoDeviceNV(hDC::HDC, numDevices::Cint, hVideoDevice::HPVIDEODEV)::Cint
@createOpenGLFun wglDXOpenDeviceNV(dxDevice::Ptr{Void})::Ptr{Void}
@createOpenGLFun wglShareLists(hrcSrvShare::HGLRC, hrcSrvSource::HGLRC)::Cint
@createOpenGLFun wglWaitForSbcOML(hdc::HDC, target_sbc::Clonglong, ust::Ptr{Clonglong}, msc::Ptr{Clonglong}, sbc::Ptr{Clonglong})::Cint
@createOpenGLFun wglRestoreBufferRegionARB(hRegion::HANDLE, x::Cint, y::Cint, width::Cint, height::Cint, xSrc::Cint, ySrc::Cint)::Cint
@createOpenGLFun wglGetGenlockSourceEdgeI3D(hDC::HDC, uEdge::Ptr{Cuint})::Cint
@createOpenGLFun wglCreateDisplayColorTableEXT(id::GLushort)::Bool
@createOpenGLFun wglGetMscRateOML(hdc::HDC, numerator::Ptr{Cint}, denominator::Ptr{Cint})::Cint
@createOpenGLFun wglGenlockSourceDelayI3D(hDC::HDC, uDelay::Cuint)::Cint
@createOpenGLFun wglSwapIntervalEXT(interval::Cint)::Cint
@createOpenGLFun wglCreateBufferRegionARB(hDC::HDC, iLayerPlane::Cint, uType::Cuint)::Ptr{Void}
@createOpenGLFun wglAssociateImageBufferEventsI3D(hDC::HDC, pEvent::HANDLE, pAddress::LPVOID, pSize::Ptr{DWORD}, count::Cuint)::Cint
@createOpenGLFun wglGetGenlockSampleRateI3D(hDC::HDC, uRate::Ptr{Cuint})::Cint
@createOpenGLFun wglGetPixelFormat(hdc::HDC)::Cint
@createOpenGLFun wglSetGammaTableI3D(hDC::HDC, iEntries::Cint, puRed::Ptr{Cushort}, puGreen::Ptr{Cushort}, puBlue::Ptr{Cushort})::Cint
@createOpenGLFun wglDestroyPbufferARB(hPbuffer::HPBUFFERARB)::Cint
@createOpenGLFun wglGetGammaTableParametersI3D(hDC::HDC, iAttribute::Cint, piValue::Ptr{Cint})::Cint
@createOpenGLFun wglDXCloseDeviceNV(hDevice::HANDLE)::Cint
@createOpenGLFun wglGetCurrentContext()::Ptr{Void}
@createOpenGLFun wglQuerySwapGroupNV(hDC::HDC, group::Ptr{GLuint}, barrier::Ptr{GLuint})::Cint
@createOpenGLFun wglGetPixelFormatAttribfvARB(hdc::HDC, iPixelFormat::Cint, iLayerPlane::Cint, nAttributes::Cuint, piAttributes::Ptr{Cint}, pfValues::Ptr{Cfloat})::Cint
@createOpenGLFun wglDXUnregisterObjectNV(hDevice::HANDLE, hObject::HANDLE)::Cint
@createOpenGLFun wglChoosePixelFormatARB(hdc::HDC, piAttribIList::Ptr{Cint}, pfAttribFList::Ptr{Cfloat}, nMaxFormats::Cuint, piFormats::Ptr{Cint}, nNumFormats::Ptr{Cuint})::Cint
@createOpenGLFun wglGenlockSourceI3D(hDC::HDC, uSource::Cuint)::Cint
@createOpenGLFun wglCreateAffinityDCNV(phGpuList::HGPUNV)::Ptr{Void}
@createOpenGLFun wglJoinSwapGroupNV(hDC::HDC, group::GLuint)::Cint
@createOpenGLFun wglMakeCurrent(hDc::HDC, newContext::HGLRC)::Cint
@createOpenGLFun wglGetGPUInfoAMD(id::Cuint, property::Cint, dataType::GLenum, size::Cuint, data::Ptr{Void})::Cint
@createOpenGLFun wglCreateAssociatedContextAMD(id::Cuint)::Ptr{Void}
@createOpenGLFun wglDestroyImageBufferI3D(hDC::HDC, pAddress::LPVOID)::Cint
@createOpenGLFun wglDXLockObjectsNV(hDevice::HANDLE, count::GLint, hObjects::HANDLE)::Cint
@createOpenGLFun wglEndFrameTrackingI3D()::Cint
@createOpenGLFun wglQueryFrameCountNV(hDC::HDC, count::Ptr{GLuint})::Cint
@createOpenGLFun wglGetSyncValuesOML(hdc::HDC, ust::Ptr{Clonglong}, msc::Ptr{Clonglong}, sbc::Ptr{Clonglong})::Cint
@createOpenGLFun wglGetCurrentAssociatedContextAMD()::Ptr{Void}
@createOpenGLFun wglDisableFrameLockI3D()::Cint
@createOpenGLFun wglLockVideoCaptureDeviceNV(hDc::HDC, hDevice::HVIDEOINPUTDEVICENV)::Cint
@createOpenGLFun wglCopyContext(hglrcSrc::HGLRC, hglrcDst::HGLRC, mask::Cuint)::Cint
@createOpenGLFun wglBindVideoDeviceNV(hDC::HDC, uVideoSlot::Cuint, hVideoDevice::HVIDEOOUTPUTDEVICENV, piAttribList::Ptr{Cint})::Cint
@createOpenGLFun wglSetPixelFormat(hdc::HDC, ipfd::Cint, ppfd::PIXELFORMATDESCRIPTOR)::Cint
@createOpenGLFun wglReleaseTexImageARB(hPbuffer::HPBUFFERARB, iBuffer::Cint)::Cint
@createOpenGLFun wglEnableFrameLockI3D()::Cint
@createOpenGLFun wglSetDigitalVideoParametersI3D(hDC::HDC, iAttribute::Cint, piValue::Ptr{Cint})::Cint
@createOpenGLFun wglChoosePixelFormat(hDc::HDC, pPfd::PIXELFORMATDESCRIPTOR)::Cint
@createOpenGLFun wglGetPbufferDCEXT(hPbuffer::HPBUFFEREXT)::Ptr{Void}
@createOpenGLFun wglReleasePbufferDCEXT(hPbuffer::HPBUFFEREXT, hDC::HDC)::Cint
@createOpenGLFun wglChoosePixelFormatEXT(hdc::HDC, piAttribIList::Ptr{Cint}, pfAttribFList::Ptr{Cfloat}, nMaxFormats::Cuint, piFormats::Ptr{Cint}, nNumFormats::Ptr{Cuint})::Cint
@createOpenGLFun wglGenlockSourceEdgeI3D(hDC::HDC, uEdge::Cuint)::Cint
@createOpenGLFun wglDXRegisterObjectNV(hDevice::HANDLE, dxObject::Ptr{Void}, name::GLuint, type_::GLenum, access::GLenum)::Ptr{Void}
@createOpenGLFun wglSaveBufferRegionARB(hRegion::HANDLE, x::Cint, y::Cint, width::Cint, height::Cint)::Cint
@createOpenGLFun wglAllocateMemoryNV(size::GLsizei, readfreq::GLfloat, writefreq::GLfloat, priority::GLfloat)::Ptr{Void}
@createOpenGLFun wglGetCurrentDC()::Ptr{Void}
@createOpenGLFun wglGetProcAddress(lpszProc::LPCSTR)::Ptr{Void}
@createOpenGLFun wglBindTexImageARB(hPbuffer::HPBUFFERARB, iBuffer::Cint)::Cint
@createOpenGLFun wglReleaseImageBufferEventsI3D(hDC::HDC, pAddress::LPVOID, count::Cuint)::Cint
@createOpenGLFun wglSwapLayerBuffers(hdc::HDC, fuFlags::Cuint)::Cint
@createOpenGLFun wglGetExtensionsStringARB(hdc::HDC)::Ptr{Cchar}
@createOpenGLFun wglGetExtensionsStringEXT()::Ptr{Cchar}
@createOpenGLFun wglCreateLayerContext(hDc::HDC, level::Cint)::Ptr{Void}
@createOpenGLFun wglDXSetResourceShareHandleNV(dxObject::Ptr{Void}, shareHandle::HANDLE)::Cint
@createOpenGLFun wglBindVideoImageNV(hVideoDevice::HPVIDEODEV, hPbuffer::HPBUFFERARB, iVideoBuffer::Cint)::Cint
@createOpenGLFun wglQueryCurrentContextNV(iAttribute::Cint, piValue::Ptr{Cint})::Cint
@createOpenGLFun wglSetStereoEmitterState3DL(hDC::HDC, uState::Cuint)::Cint
@createOpenGLFun wglReleaseVideoImageNV(hPbuffer::HPBUFFERARB, iVideoBuffer::Cint)::Cint
@createOpenGLFun wglGetVideoInfoNV(hpVideoDevice::HPVIDEODEV, pulCounterOutputPbuffer::Ptr{Culong}, pulCounterOutputVideo::Ptr{Culong})::Cint
@createOpenGLFun wglQueryPbufferARB(hPbuffer::HPBUFFERARB, iAttribute::Cint, piValue::Ptr{Cint})::Cint
@createOpenGLFun wglDisableGenlockI3D(hDC::HDC)::Cint
@createOpenGLFun wglCreateImageBufferI3D(hDC::HDC, dwSize::DWORD, uFlags::Cuint)::Ptr{Void}
@createOpenGLFun wglQueryMaxSwapGroupsNV(hDC::HDC, maxGroups::Ptr{GLuint}, maxBarriers::Ptr{GLuint})::Cint
@createOpenGLFun wglBindDisplayColorTableEXT(id::GLushort)::Bool
@createOpenGLFun wglGenlockSampleRateI3D(hDC::HDC, uRate::Cuint)::Cint
@createOpenGLFun wglGetContextGPUIDAMD(hglrc::HGLRC)::Cuint
@createOpenGLFun wglCreatePbufferARB(hDC::HDC, iPixelFormat::Cint, iWidth::Cint, iHeight::Cint, piAttribList::Ptr{Cint})::Ptr{Void}
@createOpenGLFun wglMakeContextCurrentARB(hDrawDC::HDC, hReadDC::HDC, hglrc::HGLRC)::Cint
@createOpenGLFun wglSwapLayerBuffersMscOML(hdc::HDC, fuPlanes::Cint, target_msc::Clonglong, divisor::Clonglong, remainder::Clonglong)::CClonglong
@createOpenGLFun wglSwapBuffersMscOML(hdc::HDC, target_msc::Clonglong, divisor::Clonglong, remainder::Clonglong)::CClonglong
@createOpenGLFun wglDeleteContext(oldContext::HGLRC)::Cint
@createOpenGLFun wglQueryFrameLockMasterI3D(pFlag::Ptr{Bool})::Cint
@createOpenGLFun wglDescribeLayerPlane(hDc::HDC, pixelFormat::Cint, layerPlane::Cint, nBytes::Cuint, plpd::LAYERPLANEDESCRIPTOR)::Cint
@createOpenGLFun wglGetGenlockSourceDelayI3D(hDC::HDC, uDelay::Ptr{Cuint})::Cint
@createOpenGLFun wglQueryGenlockMaxSourceDelayI3D(hDC::HDC, uMaxLineDelay::Ptr{Cuint}, uMaxPixelDelay::Ptr{Cuint})::Cint
@createOpenGLFun wglGetGammaTableI3D(hDC::HDC, iEntries::Cint, puRed::Ptr{Cushort}, puGreen::Ptr{Cushort}, puBlue::Ptr{Cushort})::Cint
@createOpenGLFun wglEnumerateVideoCaptureDevicesNV(hDc::HDC, phDeviceList::HVIDEOINPUTDEVICENV)::Cuint
@createOpenGLFun wglReleasePbufferDCARB(hPbuffer::HPBUFFERARB, hDC::HDC)::Cint
@createOpenGLFun wglEnumerateVideoDevicesNV(hDC::HDC, phDeviceList::HVIDEOOUTPUTDEVICENV)::Cint
@createOpenGLFun wglGetLayerPaletteEntries(hdc::HDC, iLayerPlane::Cint, iStart::Cint, cEntries::Cint, pcr::COLORREF)::Cint
@createOpenGLFun wglDeleteDCNV(hdc::HDC)::Cint
@createOpenGLFun wglCreatePbufferEXT(hDC::HDC, iPixelFormat::Cint, iWidth::Cint, iHeight::Cint, piAttribList::Ptr{Cint})::Ptr{Void}
@createOpenGLFun wglSetLayerPaletteEntries(hdc::HDC, iLayerPlane::Cint, iStart::Cint, cEntries::Cint, pcr::COLORREF)::Cint
@createOpenGLFun wglResetFrameCountNV(hDC::HDC)::Cint
#constants
const GL_WGL_MIPMAP_LEVEL_ARB                                         = 0x207B
const GL_WGL_GENLOCK_SOURCE_MULTIVIEW_I3D                             = 0x2044
const GL_WGL_BIND_TO_TEXTURE_RECTANGLE_RGB_NV                         = 0x20A0
const GL_WGL_DIGITAL_VIDEO_GAMMA_CORRECTED_I3D                        = 0x2053
const GL_WGL_AUX8_ARB                                                 = 0x208F
const GL_WGL_SWAP_LAYER_BUFFERS_EXT                                   = 0x2006
const GL_WGL_BIND_TO_TEXTURE_RGBA_ARB                                 = 0x2071
const GL_WGL_BIND_TO_VIDEO_RGB_AND_DEPTH_NV                           = 0x20C2
const GL_WGL_TYPE_RGBA_EXT                                            = 0x202B
const GL_WGL_AUX2_ARB                                                 = 0x2089
const GL_WGL_GENLOCK_SOURCE_DIGITAL_FIELD_I3D                         = 0x2049
const GL_WGL_AUX5_ARB                                                 = 0x208C
const GL_WGL_SAMPLE_BUFFERS_3DFX                                      = 0x2060
const GL_WGL_BLUE_SHIFT_ARB                                           = 0x201A
const GL_WGL_LOSE_CONTEXT_ON_RESET_ARB                                = 0x8252
const GL_WGL_STENCIL_BITS_EXT                                         = 0x2023
const GL_WGL_MAX_PBUFFER_WIDTH_ARB                                    = 0x202F
const GL_WGL_TRANSPARENT_EXT                                          = 0x200A
const GL_WGL_CONTEXT_RESET_NOTIFICATION_STRATEGY_ARB                  = 0x8256
const GL_WGL_GPU_NUM_PIPES_AMD                                        = 0x21A5
const GL_WGL_SWAP_EXCHANGE_ARB                                        = 0x2028
const GL_WGL_BIND_TO_TEXTURE_RECTANGLE_FLOAT_R_NV                     = 0x20B1
const GL_WGL_GPU_RENDERER_STRING_AMD                                  = 0x1F01
const GL_WGL_COVERAGE_SAMPLES_NV                                      = 0x2042
const GL_WGL_ACCUM_GREEN_BITS_ARB                                     = 0x201F
const GL_WGL_CONTEXT_ROBUST_ACCESS_BIT_ARB                            = 0x00000004
const GL_WGL_TEXTURE_CUBE_MAP_POSITIVE_Y_ARB                          = 0x207F
const GL_WGL_GENLOCK_SOURCE_EXTERNAL_TTL_I3D                          = 0x2047
const GL_WGL_BIND_TO_VIDEO_RGB_NV                                     = 0x20C0
const GL_WGL_SHARE_DEPTH_ARB                                          = 0x200C
const GL_WGL_PBUFFER_LOST_ARB                                         = 0x2036
const GL_WGL_TYPE_COLORINDEX_ARB                                      = 0x202C
const GL_WGL_SAMPLE_BUFFERS_EXT                                       = 0x2041
const GL_WGL_GENLOCK_SOURCE_EDGE_FALLING_I3D                          = 0x204A
const GL_WGL_BIND_TO_TEXTURE_RECTANGLE_RGBA_NV                        = 0x20A1
const GL_WGL_ACCUM_ALPHA_BITS_EXT                                     = 0x2021
const GL_WGL_NUMBER_UNDERLAYS_EXT                                     = 0x2009
const GL_WGL_VIDEO_OUT_STACKED_FIELDS_2_1                             = 0x20CC
const GL_WGL_SAMPLES_3DFX                                             = 0x2061
const GL_WGL_GREEN_BITS_ARB                                           = 0x2017
const GL_WGL_AUX7_ARB                                                 = 0x208E
const GL_WGL_DEPTH_BITS_EXT                                           = 0x2022
const GL_WGL_DRAW_TO_BITMAP_EXT                                       = 0x2002
const GL_WGL_CONTEXT_MINOR_VERSION_ARB                                = 0x2092
const GL_WGL_SUPPORT_OPENGL_EXT                                       = 0x2010
const GL_WGL_TYPE_RGBA_ARB                                            = 0x202B
const GL_WGL_AUX9_ARB                                                 = 0x2090
const GL_WGL_BIND_TO_TEXTURE_RECTANGLE_FLOAT_RGBA_NV                  = 0x20B4
const GL_WGL_RED_BITS_EXT                                             = 0x2015
const GL_WGL_SUPPORT_GDI_EXT                                          = 0x200F
const GL_WGL_BIND_TO_TEXTURE_RECTANGLE_FLOAT_RGB_NV                   = 0x20B3
const GL_WGL_GAMMA_EXCLUDE_DESKTOP_I3D                                = 0x204F
const GL_WGL_BACK_COLOR_BUFFER_BIT_ARB                                = 0x00000002
const GL_WGL_TEXTURE_FLOAT_R_NV                                       = 0x20B5
const GL_WGL_GENERIC_ACCELERATION_EXT                                 = 0x2026
const GL_WGL_IMAGE_BUFFER_LOCK_I3D                                    = 0x00000002
const GL_WGL_NUMBER_PIXEL_FORMATS_ARB                                 = 0x2000
const GL_WGL_ALPHA_SHIFT_EXT                                          = 0x201C
const GL_WGL_RED_BITS_ARB                                             = 0x2015
const GL_WGL_SAMPLES_EXT                                              = 0x2042
const GL_WGL_GREEN_SHIFT_EXT                                          = 0x2018
const GL_WGL_ACCESS_READ_ONLY_NV                                      = 0x00000000
const GL_WGL_TEXTURE_RGBA_ARB                                         = 0x2076
const GL_WGL_CUBE_MAP_FACE_ARB                                        = 0x207C
const GL_WGL_NO_RESET_NOTIFICATION_ARB                                = 0x8261
const GL_WGL_AUX1_ARB                                                 = 0x2088
const GL_WGL_ALPHA_BITS_ARB                                           = 0x201B
const GL_WGL_STEREO_EMITTER_ENABLE_3DL                                = 0x2055
const GL_WGL_ACCUM_BITS_ARB                                           = 0x201D
const GL_WGL_STEREO_POLARITY_NORMAL_3DL                               = 0x2057
const GL_WGL_CONTEXT_MAJOR_VERSION_ARB                                = 0x2091
const GL_WGL_TEXTURE_CUBE_MAP_POSITIVE_Z_ARB                          = 0x2081
const GL_WGL_COLOR_SAMPLES_NV                                         = 0x20B9
const GL_WGL_STENCIL_BUFFER_BIT_ARB                                   = 0x00000008
const GL_WGL_TRANSPARENT_VALUE_EXT                                    = 0x200B
const GL_WGL_GREEN_SHIFT_ARB                                          = 0x2018
const GL_WGL_SWAP_UNDEFINED_ARB                                       = 0x202A
const GL_WGL_DEPTH_TEXTURE_FORMAT_NV                                  = 0x20A5
const GL_WGL_NEED_PALETTE_EXT                                         = 0x2004
const GL_WGL_DRAW_TO_WINDOW_ARB                                       = 0x2001
const GL_WGL_AUX3_ARB                                                 = 0x208A
const GL_WGL_FULL_ACCELERATION_EXT                                    = 0x2027
const GL_WGL_ERROR_INCOMPATIBLE_AFFINITY_MASKS_NV                     = 0x20D0
const GL_WGL_RED_SHIFT_ARB                                            = 0x2016
const GL_WGL_MAX_PBUFFER_HEIGHT_EXT                                   = 0x2030
const GL_WGL_COLOR_BITS_EXT                                           = 0x2014
const GL_WGL_TEXTURE_CUBE_MAP_POSITIVE_X_ARB                          = 0x207D
const GL_WGL_NUM_VIDEO_CAPTURE_SLOTS_NV                               = 0x20CF
const GL_WGL_GENERIC_ACCELERATION_ARB                                 = 0x2026
const GL_WGL_BACK_RIGHT_ARB                                           = 0x2086
const GL_WGL_DEPTH_COMPONENT_NV                                       = 0x20A7
const GL_WGL_OPTIMAL_PBUFFER_WIDTH_EXT                                = 0x2031
const GL_WGL_ACCUM_ALPHA_BITS_ARB                                     = 0x2021
const GL_WGL_VIDEO_OUT_FIELD_2                                        = 0x20CA
const GL_ERROR_INCOMPATIBLE_DEVICE_CONTEXTS_ARB                       = 0x2054
const GL_WGL_DIGITAL_VIDEO_CURSOR_INCLUDED_I3D                        = 0x2052
const GL_WGL_AUX_BUFFERS_EXT                                          = 0x2024
const GL_WGL_DRAW_TO_WINDOW_EXT                                       = 0x2001
const GL_WGL_FLOAT_COMPONENTS_NV                                      = 0x20B0
const GL_WGL_ACCUM_BLUE_BITS_ARB                                      = 0x2020
const GL_WGL_TEXTURE_CUBE_MAP_NEGATIVE_Z_ARB                          = 0x2082
const GL_WGL_BACK_LEFT_ARB                                            = 0x2085
const GL_WGL_GREEN_BITS_EXT                                           = 0x2017
const GL_WGL_SWAP_LAYER_BUFFERS_ARB                                   = 0x2006
const GL_WGL_VIDEO_OUT_COLOR_NV                                       = 0x20C3
const GL_WGL_CONTEXT_FORWARD_COMPATIBLE_BIT_ARB                       = 0x00000002
const GL_WGL_STEREO_EXT                                               = 0x2012
const GL_WGL_PBUFFER_WIDTH_EXT                                        = 0x2034
const GL_WGL_DRAW_TO_PBUFFER_ARB                                      = 0x202D
const GL_WGL_DIGITAL_VIDEO_CURSOR_ALPHA_VALUE_I3D                     = 0x2051
const GL_WGL_CONTEXT_LAYER_PLANE_ARB                                  = 0x2093
const GL_WGL_TEXTURE_CUBE_MAP_NEGATIVE_X_ARB                          = 0x207E
const GL_WGL_TEXTURE_DEPTH_COMPONENT_NV                               = 0x20A6
const GL_WGL_NUMBER_PIXEL_FORMATS_EXT                                 = 0x2000
const GL_WGL_SWAP_COPY_EXT                                            = 0x2029
const GL_WGL_DEPTH_FLOAT_EXT                                          = 0x2040
const GL_WGL_GENLOCK_SOURCE_EDGE_RISING_I3D                           = 0x204B
const GL_WGL_TEXTURE_FORMAT_ARB                                       = 0x2072
const GL_WGL_VIDEO_OUT_COLOR_AND_ALPHA_NV                             = 0x20C6
const GL_WGL_BLUE_BITS_EXT                                            = 0x2019
const GL_WGL_MIPMAP_TEXTURE_ARB                                       = 0x2074
const GL_WGL_VIDEO_OUT_STACKED_FIELDS_1_2                             = 0x20CB
const GL_WGL_GPU_OPENGL_VERSION_STRING_AMD                            = 0x1F02
const GL_WGL_TEXTURE_1D_ARB                                           = 0x2079
const GL_WGL_FRONT_LEFT_ARB                                           = 0x2083
const GL_WGL_NUMBER_OVERLAYS_ARB                                      = 0x2008
const GL_WGL_DOUBLE_BUFFER_EXT                                        = 0x2011
const GL_WGL_DRAW_TO_BITMAP_ARB                                       = 0x2002
const GL_WGL_SHARE_STENCIL_ARB                                        = 0x200D
const GL_WGL_BLUE_BITS_ARB                                            = 0x2019
const GL_WGL_AUX4_ARB                                                 = 0x208B
const GL_WGL_BIND_TO_TEXTURE_RGB_ARB                                  = 0x2070
const GL_WGL_VIDEO_OUT_FIELD_1                                        = 0x20C9
const GL_WGL_MAX_PBUFFER_PIXELS_ARB                                   = 0x202E
const GL_WGL_MAX_PBUFFER_HEIGHT_ARB                                   = 0x2030
const GL_WGL_TYPE_COLORINDEX_EXT                                      = 0x202C
const GL_WGL_NO_ACCELERATION_ARB                                      = 0x2025
const GL_WGL_NUM_VIDEO_SLOTS_NV                                       = 0x20F0
const GL_WGL_STEREO_POLARITY_INVERT_3DL                               = 0x2058
const GL_WGL_NUMBER_OVERLAYS_EXT                                      = 0x2008
const GL_WGL_NEED_PALETTE_ARB                                         = 0x2004
const GL_WGL_STEREO_ARB                                               = 0x2012
const GL_WGL_SWAP_EXCHANGE_EXT                                        = 0x2028
const GL_WGL_SHARE_ACCUM_EXT                                          = 0x200E
const GL_WGL_FULL_ACCELERATION_ARB                                    = 0x2027
const GL_WGL_ACCELERATION_EXT                                         = 0x2003
const GL_WGL_SWAP_COPY_ARB                                            = 0x2029
const GL_WGL_NO_ACCELERATION_EXT                                      = 0x2025
const GL_WGL_OPTIMAL_PBUFFER_HEIGHT_EXT                               = 0x2032
const GL_WGL_PBUFFER_HEIGHT_ARB                                       = 0x2035
const GL_WGL_PBUFFER_WIDTH_ARB                                        = 0x2034
const GL_WGL_GPU_NUM_SIMD_AMD                                         = 0x21A6
const GL_WGL_PIXEL_TYPE_ARB                                           = 0x2013
const GL_WGL_BIND_TO_VIDEO_RGBA_NV                                    = 0x20C1
const GL_WGL_MAX_PBUFFER_PIXELS_EXT                                   = 0x202E
const GL_WGL_GPU_NUM_RB_AMD                                           = 0x21A7
const GL_WGL_SWAP_UNDEFINED_EXT                                       = 0x202A
const GL_WGL_GENLOCK_SOURCE_EXTERNAL_SYNC_I3D                         = 0x2045
const GL_WGL_MAX_PBUFFER_WIDTH_EXT                                    = 0x202F
const GL_WGL_TRANSPARENT_ARB                                          = 0x200A
const GL_WGL_CONTEXT_ES2_PROFILE_BIT_EXT                              = 0x00000004
const GL_WGL_ACCUM_RED_BITS_ARB                                       = 0x201E
const GL_WGL_VIDEO_OUT_ALPHA_NV                                       = 0x20C4
const GL_WGL_NEED_SYSTEM_PALETTE_EXT                                  = 0x2005
const GL_WGL_GENLOCK_SOURCE_DIGITAL_SYNC_I3D                          = 0x2048
const GL_WGL_FRONT_RIGHT_ARB                                          = 0x2084
const GL_WGL_AUX_BUFFERS_ARB                                          = 0x2024
const GL_WGL_ALPHA_BITS_EXT                                           = 0x201B
const GL_WGL_NEED_SYSTEM_PALETTE_ARB                                  = 0x2005
const GL_WGL_SWAP_METHOD_ARB                                          = 0x2007
const GL_ERROR_INVALID_PIXEL_TYPE_ARB                                 = 0x2043
const GL_WGL_SHARE_STENCIL_EXT                                        = 0x200D
const GL_WGL_DEPTH_BITS_ARB                                           = 0x2022
const GL_WGL_NO_TEXTURE_ARB                                           = 0x2077
const GL_WGL_BIND_TO_TEXTURE_DEPTH_NV                                 = 0x20A3
const GL_WGL_SAMPLES_ARB                                              = 0x2042
const GL_WGL_TEXTURE_TARGET_ARB                                       = 0x2073
const GL_ERROR_INVALID_PROFILE_ARB                                    = 0x2096
const GL_WGL_GPU_RAM_AMD                                              = 0x21A3
const GL_WGL_CONTEXT_PROFILE_MASK_ARB                                 = 0x9126
const GL_WGL_TEXTURE_RECTANGLE_NV                                     = 0x20A2
const GL_WGL_SAMPLE_BUFFERS_ARB                                       = 0x2041
const GL_WGL_ERROR_MISSING_AFFINITY_MASK_NV                           = 0x20D1
const GL_WGL_GENLOCK_SOURCE_EDGE_BOTH_I3D                             = 0x204C
const GL_WGL_VIDEO_OUT_COLOR_AND_DEPTH_NV                             = 0x20C7
const GL_WGL_GPU_CLOCK_AMD                                            = 0x21A4
const GL_WGL_STEREO_EMITTER_DISABLE_3DL                               = 0x2056
const GL_WGL_ALPHA_SHIFT_ARB                                          = 0x201C
const GL_WGL_FRAMEBUFFER_SRGB_CAPABLE_EXT                             = 0x20A9
const GL_WGL_PBUFFER_HEIGHT_EXT                                       = 0x2035
const GL_WGL_CONTEXT_DEBUG_BIT_ARB                                    = 0x00000001
const GL_WGL_ACCESS_READ_WRITE_NV                                     = 0x00000001
const GL_WGL_TYPE_RGBA_UNSIGNED_FLOAT_EXT                             = 0x20A8
const GL_WGL_BLUE_SHIFT_EXT                                           = 0x201A
const GL_WGL_VIDEO_OUT_DEPTH_NV                                       = 0x20C5
const GL_WGL_ACCELERATION_ARB                                         = 0x2003
const GL_WGL_ACCESS_WRITE_DISCARD_NV                                  = 0x00000002
const GL_WGL_CONTEXT_COMPATIBILITY_PROFILE_BIT_ARB                    = 0x00000002
const GL_WGL_SUPPORT_GDI_ARB                                          = 0x200F
const GL_WGL_ACCUM_GREEN_BITS_EXT                                     = 0x201F
const GL_WGL_TEXTURE_FLOAT_RGB_NV                                     = 0x20B7
const GL_WGL_TEXTURE_FLOAT_RG_NV                                      = 0x20B6
const GL_WGL_FRONT_COLOR_BUFFER_BIT_ARB                               = 0x00000001
const GL_WGL_DRAW_TO_PBUFFER_EXT                                      = 0x202D
const GL_WGL_NUMBER_UNDERLAYS_ARB                                     = 0x2009
const GL_WGL_FRAMEBUFFER_SRGB_CAPABLE_ARB                             = 0x20A9
const GL_WGL_BIND_TO_TEXTURE_RECTANGLE_FLOAT_RG_NV                    = 0x20B2
const GL_WGL_TYPE_RGBA_FLOAT_ARB                                      = 0x21A0
const GL_WGL_ACCUM_BITS_EXT                                           = 0x201D
const GL_WGL_BIND_TO_TEXTURE_RECTANGLE_DEPTH_NV                       = 0x20A4
const GL_WGL_DEPTH_BUFFER_BIT_ARB                                     = 0x00000004
const GL_WGL_IMAGE_BUFFER_MIN_ACCESS_I3D                              = 0x00000001
const GL_WGL_CONTEXT_CORE_PROFILE_BIT_ARB                             = 0x00000001
const GL_WGL_SHARE_DEPTH_EXT                                          = 0x200C
const GL_WGL_PBUFFER_LARGEST_ARB                                      = 0x2033
const GL_WGL_AUX6_ARB                                                 = 0x208D
const GL_WGL_UNIQUE_ID_NV                                             = 0x20CE
const GL_WGL_TYPE_RGBA_FLOAT_ATI                                      = 0x21A0
const GL_WGL_GPU_NUM_SPI_AMD                                          = 0x21A8
const GL_WGL_ACCUM_RED_BITS_EXT                                       = 0x201E
const GL_WGL_COLOR_BITS_ARB                                           = 0x2014
const GL_WGL_TEXTURE_CUBE_MAP_ARB                                     = 0x2078
const GL_WGL_TEXTURE_RGB_ARB                                          = 0x2075
const GL_WGL_GENLOCK_SOURCE_EXTERNAL_FIELD_I3D                        = 0x2046
const GL_WGL_GPU_VENDOR_AMD                                           = 0x1F00
const GL_WGL_TEXTURE_CUBE_MAP_NEGATIVE_Y_ARB                          = 0x2080
const GL_WGL_TEXTURE_FLOAT_RGBA_NV                                    = 0x20B8
const GL_WGL_SHARE_ACCUM_ARB                                          = 0x200E
const GL_WGL_PBUFFER_LARGEST_EXT                                      = 0x2033
const GL_WGL_GPU_FASTEST_TARGET_GPUS_AMD                              = 0x21A2
const GL_ERROR_INVALID_PIXEL_TYPE_EXT                                 = 0x2043
const GL_WGL_DOUBLE_BUFFER_ARB                                        = 0x2011
const GL_WGL_RED_SHIFT_EXT                                            = 0x2016
const GL_WGL_PIXEL_TYPE_EXT                                           = 0x2013
const GL_WGL_TEXTURE_2D_ARB                                           = 0x207A
const GL_WGL_ACCUM_BLUE_BITS_EXT                                      = 0x2020
const GL_WGL_DIGITAL_VIDEO_CURSOR_ALPHA_FRAMEBUFFER_I3D               = 0x2050
const GL_WGL_VIDEO_OUT_FRAME                                          = 0x20C8
const GL_WGL_AUX0_ARB                                                 = 0x2087
const GL_WGL_SWAP_METHOD_EXT                                          = 0x2007
const GL_WGL_CONTEXT_FLAGS_ARB                                        = 0x2094
const GL_WGL_STENCIL_BITS_ARB                                         = 0x2023
const GL_WGL_SUPPORT_OPENGL_ARB                                       = 0x2010
const GL_WGL_GAMMA_TABLE_SIZE_I3D                                     = 0x204E
const GL_ERROR_INVALID_VERSION_ARB                                    = 0x2095
# Export everything!
export wglUseFontBitmapsA, wglGetPbufferDCARB, wglGetPixelFormatAttribfvEXT, wglReleaseVideoDeviceNV, wglBindVideoCaptureDeviceNV, wglGetGenlockSourceI3D, wglGetFrameUsageI3D, wglRealizeLayerPalette, wglEnumGpusNV, wglEnableGenlockI3D, wglGetDigitalVideoParametersI3D, wglCreateContextAttribsARB, wglReleaseVideoCaptureDeviceNV, wglEnumGpusFromAffinityDCNV, wglQueryPbufferEXT, wglQueryVideoCaptureDeviceNV, wglSendPbufferToVideoNV, wglDXObjectAccessNV, wglEnumGpuDevicesNV, wglGetGPUIDsAMD, wglCopyImageSubDataNV, wglGetPixelFormatAttribivARB, wglGetCurrentReadDCARB, wglIsEnabledFrameLockI3D, wglDeleteAssociatedContextAMD, wglDXUnlockObjectsNV, wglUseFontBitmapsW, wglBindSwapBarrierNV, wglGetCurrentReadDCEXT, wglSetPbufferAttribARB, wglQueryFrameTrackingI3D, wglCreateContext, wglWaitForMscOML, wglSetGammaTableParametersI3D, wglIsEnabledGenlockI3D, wglLoadDisplayColorTableEXT, wglSwapBuffers, wglBeginFrameTrackingI3D, wglGetPixelFormatAttribivEXT, wglGetDefaultProcAddress, wglCreateAssociatedContextAttribsAMD, wglMakeContextCurrentEXT, wglGetSwapIntervalEXT, wglMakeAssociatedContextCurrentAMD, wglDestroyPbufferEXT, wglGetVideoDeviceNV, wglDXOpenDeviceNV, wglShareLists, wglWaitForSbcOML, wglRestoreBufferRegionARB, wglGetGenlockSourceEdgeI3D, wglCreateDisplayColorTableEXT, wglGetMscRateOML, wglGenlockSourceDelayI3D, wglSwapIntervalEXT, wglCreateBufferRegionARB, wglAssociateImageBufferEventsI3D, wglGetGenlockSampleRateI3D, wglGetPixelFormat, wglSetGammaTableI3D, wglDestroyPbufferARB, wglGetGammaTableParametersI3D, wglDXCloseDeviceNV, wglGetCurrentContext, wglQuerySwapGroupNV, wglGetPixelFormatAttribfvARB, wglDXUnregisterObjectNV, wglChoosePixelFormatARB, wglGenlockSourceI3D, wglCreateAffinityDCNV, wglJoinSwapGroupNV, wglMakeCurrent, wglGetGPUInfoAMD, wglCreateAssociatedContextAMD, wglDestroyImageBufferI3D, wglDXLockObjectsNV, wglEndFrameTrackingI3D, wglQueryFrameCountNV, wglGetSyncValuesOML, wglGetCurrentAssociatedContextAMD, wglDisableFrameLockI3D, wglLockVideoCaptureDeviceNV, wglCopyContext, wglBindVideoDeviceNV, wglSetPixelFormat, wglReleaseTexImageARB, wglEnableFrameLockI3D, wglSetDigitalVideoParametersI3D, wglChoosePixelFormat, wglGetPbufferDCEXT, wglReleasePbufferDCEXT, wglChoosePixelFormatEXT, wglGenlockSourceEdgeI3D, wglDXRegisterObjectNV, wglSaveBufferRegionARB, wglAllocateMemoryNV, wglGetCurrentDC, wglGetProcAddress, wglBindTexImageARB, wglReleaseImageBufferEventsI3D, wglSwapLayerBuffers, wglGetExtensionsStringARB, wglGetExtensionsStringEXT, wglCreateLayerContext, wglDXSetResourceShareHandleNV, wglBindVideoImageNV, wglQueryCurrentContextNV, wglSetStereoEmitterState3DL, wglReleaseVideoImageNV, wglGetVideoInfoNV, wglQueryPbufferARB, wglDisableGenlockI3D, wglCreateImageBufferI3D, wglQueryMaxSwapGroupsNV, wglBindDisplayColorTableEXT, wglGenlockSampleRateI3D, wglGetContextGPUIDAMD, wglCreatePbufferARB, wglMakeContextCurrentARB, wglSwapLayerBuffersMscOML, wglSwapBuffersMscOML, wglDeleteContext, wglQueryFrameLockMasterI3D, wglDescribeLayerPlane, wglGetGenlockSourceDelayI3D, wglQueryGenlockMaxSourceDelayI3D, wglGetGammaTableI3D, wglEnumerateVideoCaptureDevicesNV, wglReleasePbufferDCARB, wglEnumerateVideoDevicesNV, wglGetLayerPaletteEntries, wglDeleteDCNV, wglCreatePbufferEXT, wglSetLayerPaletteEntries, wglResetFrameCountNV, GL_WGL_MIPMAP_LEVEL_ARB, GL_WGL_GENLOCK_SOURCE_MULTIVIEW_I3D, GL_WGL_BIND_TO_TEXTURE_RECTANGLE_RGB_NV, GL_WGL_DIGITAL_VIDEO_GAMMA_CORRECTED_I3D, GL_WGL_AUX8_ARB, GL_WGL_SWAP_LAYER_BUFFERS_EXT, GL_WGL_BIND_TO_TEXTURE_RGBA_ARB, GL_WGL_BIND_TO_VIDEO_RGB_AND_DEPTH_NV, GL_WGL_TYPE_RGBA_EXT, GL_WGL_AUX2_ARB, GL_WGL_GENLOCK_SOURCE_DIGITAL_FIELD_I3D, GL_WGL_AUX5_ARB, GL_WGL_SAMPLE_BUFFERS_3DFX, GL_WGL_BLUE_SHIFT_ARB, GL_WGL_LOSE_CONTEXT_ON_RESET_ARB, GL_WGL_STENCIL_BITS_EXT, GL_WGL_MAX_PBUFFER_WIDTH_ARB, GL_WGL_TRANSPARENT_EXT, GL_WGL_CONTEXT_RESET_NOTIFICATION_STRATEGY_ARB, GL_WGL_GPU_NUM_PIPES_AMD, GL_WGL_SWAP_EXCHANGE_ARB, GL_WGL_BIND_TO_TEXTURE_RECTANGLE_FLOAT_R_NV, GL_WGL_GPU_RENDERER_STRING_AMD, GL_WGL_COVERAGE_SAMPLES_NV, GL_WGL_ACCUM_GREEN_BITS_ARB, GL_WGL_CONTEXT_ROBUST_ACCESS_BIT_ARB, GL_WGL_TEXTURE_CUBE_MAP_POSITIVE_Y_ARB, GL_WGL_GENLOCK_SOURCE_EXTERNAL_TTL_I3D, GL_WGL_BIND_TO_VIDEO_RGB_NV, GL_WGL_SHARE_DEPTH_ARB, GL_WGL_PBUFFER_LOST_ARB, GL_WGL_TYPE_COLORINDEX_ARB, GL_WGL_SAMPLE_BUFFERS_EXT, GL_WGL_GENLOCK_SOURCE_EDGE_FALLING_I3D, GL_WGL_BIND_TO_TEXTURE_RECTANGLE_RGBA_NV, GL_WGL_ACCUM_ALPHA_BITS_EXT, GL_WGL_NUMBER_UNDERLAYS_EXT, GL_WGL_VIDEO_OUT_STACKED_FIELDS_2_1, GL_WGL_SAMPLES_3DFX, GL_WGL_GREEN_BITS_ARB, GL_WGL_AUX7_ARB, GL_WGL_DEPTH_BITS_EXT, GL_WGL_DRAW_TO_BITMAP_EXT, GL_WGL_CONTEXT_MINOR_VERSION_ARB, GL_WGL_SUPPORT_OPENGL_EXT, GL_WGL_TYPE_RGBA_ARB, GL_WGL_AUX9_ARB, GL_WGL_BIND_TO_TEXTURE_RECTANGLE_FLOAT_RGBA_NV, GL_WGL_RED_BITS_EXT, GL_WGL_SUPPORT_GDI_EXT, GL_WGL_BIND_TO_TEXTURE_RECTANGLE_FLOAT_RGB_NV, GL_WGL_GAMMA_EXCLUDE_DESKTOP_I3D, GL_WGL_BACK_COLOR_BUFFER_BIT_ARB, GL_WGL_TEXTURE_FLOAT_R_NV, GL_WGL_GENERIC_ACCELERATION_EXT, GL_WGL_IMAGE_BUFFER_LOCK_I3D, GL_WGL_NUMBER_PIXEL_FORMATS_ARB, GL_WGL_ALPHA_SHIFT_EXT, GL_WGL_RED_BITS_ARB, GL_WGL_SAMPLES_EXT, GL_WGL_GREEN_SHIFT_EXT, GL_WGL_ACCESS_READ_ONLY_NV, GL_WGL_TEXTURE_RGBA_ARB, GL_WGL_CUBE_MAP_FACE_ARB, GL_WGL_NO_RESET_NOTIFICATION_ARB, GL_WGL_AUX1_ARB, GL_WGL_ALPHA_BITS_ARB, GL_WGL_STEREO_EMITTER_ENABLE_3DL, GL_WGL_ACCUM_BITS_ARB, GL_WGL_STEREO_POLARITY_NORMAL_3DL, GL_WGL_CONTEXT_MAJOR_VERSION_ARB, GL_WGL_TEXTURE_CUBE_MAP_POSITIVE_Z_ARB, GL_WGL_COLOR_SAMPLES_NV, GL_WGL_STENCIL_BUFFER_BIT_ARB, GL_WGL_TRANSPARENT_VALUE_EXT, GL_WGL_GREEN_SHIFT_ARB, GL_WGL_SWAP_UNDEFINED_ARB, GL_WGL_DEPTH_TEXTURE_FORMAT_NV, GL_WGL_NEED_PALETTE_EXT, GL_WGL_DRAW_TO_WINDOW_ARB, GL_WGL_AUX3_ARB, GL_WGL_FULL_ACCELERATION_EXT, GL_WGL_ERROR_INCOMPATIBLE_AFFINITY_MASKS_NV, GL_WGL_RED_SHIFT_ARB, GL_WGL_MAX_PBUFFER_HEIGHT_EXT, GL_WGL_COLOR_BITS_EXT, GL_WGL_TEXTURE_CUBE_MAP_POSITIVE_X_ARB, GL_WGL_NUM_VIDEO_CAPTURE_SLOTS_NV, GL_WGL_GENERIC_ACCELERATION_ARB, GL_WGL_BACK_RIGHT_ARB, GL_WGL_DEPTH_COMPONENT_NV, GL_WGL_OPTIMAL_PBUFFER_WIDTH_EXT, GL_WGL_ACCUM_ALPHA_BITS_ARB, GL_WGL_VIDEO_OUT_FIELD_2, GL_ERROR_INCOMPATIBLE_DEVICE_CONTEXTS_ARB, GL_WGL_DIGITAL_VIDEO_CURSOR_INCLUDED_I3D, GL_WGL_AUX_BUFFERS_EXT, GL_WGL_DRAW_TO_WINDOW_EXT, GL_WGL_FLOAT_COMPONENTS_NV, GL_WGL_ACCUM_BLUE_BITS_ARB, GL_WGL_TEXTURE_CUBE_MAP_NEGATIVE_Z_ARB, GL_WGL_BACK_LEFT_ARB, GL_WGL_GREEN_BITS_EXT, GL_WGL_SWAP_LAYER_BUFFERS_ARB, GL_WGL_VIDEO_OUT_COLOR_NV, GL_WGL_CONTEXT_FORWARD_COMPATIBLE_BIT_ARB, GL_WGL_STEREO_EXT, GL_WGL_PBUFFER_WIDTH_EXT, GL_WGL_DRAW_TO_PBUFFER_ARB, GL_WGL_DIGITAL_VIDEO_CURSOR_ALPHA_VALUE_I3D, GL_WGL_CONTEXT_LAYER_PLANE_ARB, GL_WGL_TEXTURE_CUBE_MAP_NEGATIVE_X_ARB, GL_WGL_TEXTURE_DEPTH_COMPONENT_NV, GL_WGL_NUMBER_PIXEL_FORMATS_EXT, GL_WGL_SWAP_COPY_EXT, GL_WGL_DEPTH_FLOAT_EXT, GL_WGL_GENLOCK_SOURCE_EDGE_RISING_I3D, GL_WGL_TEXTURE_FORMAT_ARB, GL_WGL_VIDEO_OUT_COLOR_AND_ALPHA_NV, GL_WGL_BLUE_BITS_EXT, GL_WGL_MIPMAP_TEXTURE_ARB, GL_WGL_VIDEO_OUT_STACKED_FIELDS_1_2, GL_WGL_GPU_OPENGL_VERSION_STRING_AMD, GL_WGL_TEXTURE_1D_ARB, GL_WGL_FRONT_LEFT_ARB, GL_WGL_NUMBER_OVERLAYS_ARB, GL_WGL_DOUBLE_BUFFER_EXT, GL_WGL_DRAW_TO_BITMAP_ARB, GL_WGL_SHARE_STENCIL_ARB, GL_WGL_BLUE_BITS_ARB, GL_WGL_AUX4_ARB, GL_WGL_BIND_TO_TEXTURE_RGB_ARB, GL_WGL_VIDEO_OUT_FIELD_1, GL_WGL_MAX_PBUFFER_PIXELS_ARB, GL_WGL_MAX_PBUFFER_HEIGHT_ARB, GL_WGL_TYPE_COLORINDEX_EXT, GL_WGL_NO_ACCELERATION_ARB, GL_WGL_NUM_VIDEO_SLOTS_NV, GL_WGL_STEREO_POLARITY_INVERT_3DL, GL_WGL_NUMBER_OVERLAYS_EXT, GL_WGL_NEED_PALETTE_ARB, GL_WGL_STEREO_ARB, GL_WGL_SWAP_EXCHANGE_EXT, GL_WGL_SHARE_ACCUM_EXT, GL_WGL_FULL_ACCELERATION_ARB, GL_WGL_ACCELERATION_EXT, GL_WGL_SWAP_COPY_ARB, GL_WGL_NO_ACCELERATION_EXT, GL_WGL_OPTIMAL_PBUFFER_HEIGHT_EXT, GL_WGL_PBUFFER_HEIGHT_ARB, GL_WGL_PBUFFER_WIDTH_ARB, GL_WGL_GPU_NUM_SIMD_AMD, GL_WGL_PIXEL_TYPE_ARB, GL_WGL_BIND_TO_VIDEO_RGBA_NV, GL_WGL_MAX_PBUFFER_PIXELS_EXT, GL_WGL_GPU_NUM_RB_AMD, GL_WGL_SWAP_UNDEFINED_EXT, GL_WGL_GENLOCK_SOURCE_EXTERNAL_SYNC_I3D, GL_WGL_MAX_PBUFFER_WIDTH_EXT, GL_WGL_TRANSPARENT_ARB, GL_WGL_CONTEXT_ES2_PROFILE_BIT_EXT, GL_WGL_ACCUM_RED_BITS_ARB, GL_WGL_VIDEO_OUT_ALPHA_NV, GL_WGL_NEED_SYSTEM_PALETTE_EXT, GL_WGL_GENLOCK_SOURCE_DIGITAL_SYNC_I3D, GL_WGL_FRONT_RIGHT_ARB, GL_WGL_AUX_BUFFERS_ARB, GL_WGL_ALPHA_BITS_EXT, GL_WGL_NEED_SYSTEM_PALETTE_ARB, GL_WGL_SWAP_METHOD_ARB, GL_ERROR_INVALID_PIXEL_TYPE_ARB, GL_WGL_SHARE_STENCIL_EXT, GL_WGL_DEPTH_BITS_ARB, GL_WGL_NO_TEXTURE_ARB, GL_WGL_BIND_TO_TEXTURE_DEPTH_NV, GL_WGL_SAMPLES_ARB, GL_WGL_TEXTURE_TARGET_ARB, GL_ERROR_INVALID_PROFILE_ARB, GL_WGL_GPU_RAM_AMD, GL_WGL_CONTEXT_PROFILE_MASK_ARB, GL_WGL_TEXTURE_RECTANGLE_NV, GL_WGL_SAMPLE_BUFFERS_ARB, GL_WGL_ERROR_MISSING_AFFINITY_MASK_NV, GL_WGL_GENLOCK_SOURCE_EDGE_BOTH_I3D, GL_WGL_VIDEO_OUT_COLOR_AND_DEPTH_NV, GL_WGL_GPU_CLOCK_AMD, GL_WGL_STEREO_EMITTER_DISABLE_3DL, GL_WGL_ALPHA_SHIFT_ARB, GL_WGL_FRAMEBUFFER_SRGB_CAPABLE_EXT, GL_WGL_PBUFFER_HEIGHT_EXT, GL_WGL_CONTEXT_DEBUG_BIT_ARB, GL_WGL_ACCESS_READ_WRITE_NV, GL_WGL_TYPE_RGBA_UNSIGNED_FLOAT_EXT, GL_WGL_BLUE_SHIFT_EXT, GL_WGL_VIDEO_OUT_DEPTH_NV, GL_WGL_ACCELERATION_ARB, GL_WGL_ACCESS_WRITE_DISCARD_NV, GL_WGL_CONTEXT_COMPATIBILITY_PROFILE_BIT_ARB, GL_WGL_SUPPORT_GDI_ARB, GL_WGL_ACCUM_GREEN_BITS_EXT, GL_WGL_TEXTURE_FLOAT_RGB_NV, GL_WGL_TEXTURE_FLOAT_RG_NV, GL_WGL_FRONT_COLOR_BUFFER_BIT_ARB, GL_WGL_DRAW_TO_PBUFFER_EXT, GL_WGL_NUMBER_UNDERLAYS_ARB, GL_WGL_FRAMEBUFFER_SRGB_CAPABLE_ARB, GL_WGL_BIND_TO_TEXTURE_RECTANGLE_FLOAT_RG_NV, GL_WGL_TYPE_RGBA_FLOAT_ARB, GL_WGL_ACCUM_BITS_EXT, GL_WGL_BIND_TO_TEXTURE_RECTANGLE_DEPTH_NV, GL_WGL_DEPTH_BUFFER_BIT_ARB, GL_WGL_IMAGE_BUFFER_MIN_ACCESS_I3D, GL_WGL_CONTEXT_CORE_PROFILE_BIT_ARB, GL_WGL_SHARE_DEPTH_EXT, GL_WGL_PBUFFER_LARGEST_ARB, GL_WGL_AUX6_ARB, GL_WGL_UNIQUE_ID_NV, GL_WGL_TYPE_RGBA_FLOAT_ATI, GL_WGL_GPU_NUM_SPI_AMD, GL_WGL_ACCUM_RED_BITS_EXT, GL_WGL_COLOR_BITS_ARB, GL_WGL_TEXTURE_CUBE_MAP_ARB, GL_WGL_TEXTURE_RGB_ARB, GL_WGL_GENLOCK_SOURCE_EXTERNAL_FIELD_I3D, GL_WGL_GPU_VENDOR_AMD, GL_WGL_TEXTURE_CUBE_MAP_NEGATIVE_Y_ARB, GL_WGL_TEXTURE_FLOAT_RGBA_NV, GL_WGL_SHARE_ACCUM_ARB, GL_WGL_PBUFFER_LARGEST_EXT, GL_WGL_GPU_FASTEST_TARGET_GPUS_AMD, GL_ERROR_INVALID_PIXEL_TYPE_EXT, GL_WGL_DOUBLE_BUFFER_ARB, GL_WGL_RED_SHIFT_EXT, GL_WGL_PIXEL_TYPE_EXT, GL_WGL_TEXTURE_2D_ARB, GL_WGL_ACCUM_BLUE_BITS_EXT, GL_WGL_DIGITAL_VIDEO_CURSOR_ALPHA_FRAMEBUFFER_I3D, GL_WGL_VIDEO_OUT_FRAME, GL_WGL_AUX0_ARB, GL_WGL_SWAP_METHOD_EXT, GL_WGL_CONTEXT_FLAGS_ARB, GL_WGL_STENCIL_BITS_ARB, GL_WGL_SUPPORT_OPENGL_ARB, GL_WGL_GAMMA_TABLE_SIZE_I3D, GL_ERROR_INVALID_VERSION_ARB
