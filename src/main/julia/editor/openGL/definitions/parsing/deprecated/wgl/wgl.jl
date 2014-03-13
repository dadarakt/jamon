module WGL 

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
const WGL_SAMPLES_3DFX = 0x2061
export WGL_SAMPLES_3DFX
const WGL_SAMPLE_BUFFERS_3DFX = 0x2060
export WGL_SAMPLE_BUFFERS_3DFX
const WGL_STEREO_EMITTER_DISABLE_3DL = 0x2056
export WGL_STEREO_EMITTER_DISABLE_3DL
const WGL_STEREO_EMITTER_ENABLE_3DL = 0x2055
export WGL_STEREO_EMITTER_ENABLE_3DL
const WGL_STEREO_POLARITY_INVERT_3DL = 0x2058
export WGL_STEREO_POLARITY_INVERT_3DL
const WGL_STEREO_POLARITY_NORMAL_3DL = 0x2057
export WGL_STEREO_POLARITY_NORMAL_3DL
const WGL_GPU_CLOCK_AMD = 0x21A4
export WGL_GPU_CLOCK_AMD
const WGL_GPU_FASTEST_TARGET_GPUS_AMD = 0x21A2
export WGL_GPU_FASTEST_TARGET_GPUS_AMD
const WGL_GPU_NUM_PIPES_AMD = 0x21A5
export WGL_GPU_NUM_PIPES_AMD
const WGL_GPU_NUM_RB_AMD = 0x21A7
export WGL_GPU_NUM_RB_AMD
const WGL_GPU_NUM_SIMD_AMD = 0x21A6
export WGL_GPU_NUM_SIMD_AMD
const WGL_GPU_NUM_SPI_AMD = 0x21A8
export WGL_GPU_NUM_SPI_AMD
const WGL_GPU_OPENGL_VERSION_STRING_AMD = 0x1F02
export WGL_GPU_OPENGL_VERSION_STRING_AMD
const WGL_GPU_RAM_AMD = 0x21A3
export WGL_GPU_RAM_AMD
const WGL_GPU_RENDERER_STRING_AMD = 0x1F01
export WGL_GPU_RENDERER_STRING_AMD
const WGL_GPU_VENDOR_AMD = 0x1F00
export WGL_GPU_VENDOR_AMD
const WGL_BACK_COLOR_BUFFER_BIT_ARB = 0x00000002
export WGL_BACK_COLOR_BUFFER_BIT_ARB
const WGL_DEPTH_BUFFER_BIT_ARB = 0x00000004
export WGL_DEPTH_BUFFER_BIT_ARB
const WGL_FRONT_COLOR_BUFFER_BIT_ARB = 0x00000001
export WGL_FRONT_COLOR_BUFFER_BIT_ARB
const WGL_STENCIL_BUFFER_BIT_ARB = 0x00000008
export WGL_STENCIL_BUFFER_BIT_ARB
const ERROR_INVALID_VERSION_ARB = 0x2095
export ERROR_INVALID_VERSION_ARB
const WGL_CONTEXT_DEBUG_BIT_ARB = 0x00000001
export WGL_CONTEXT_DEBUG_BIT_ARB
const WGL_CONTEXT_FLAGS_ARB = 0x2094
export WGL_CONTEXT_FLAGS_ARB
const WGL_CONTEXT_FORWARD_COMPATIBLE_BIT_ARB = 0x00000002
export WGL_CONTEXT_FORWARD_COMPATIBLE_BIT_ARB
const WGL_CONTEXT_LAYER_PLANE_ARB = 0x2093
export WGL_CONTEXT_LAYER_PLANE_ARB
const WGL_CONTEXT_MAJOR_VERSION_ARB = 0x2091
export WGL_CONTEXT_MAJOR_VERSION_ARB
const WGL_CONTEXT_MINOR_VERSION_ARB = 0x2092
export WGL_CONTEXT_MINOR_VERSION_ARB
const ERROR_INVALID_PROFILE_ARB = 0x2096
export ERROR_INVALID_PROFILE_ARB
const WGL_CONTEXT_COMPATIBILITY_PROFILE_BIT_ARB = 0x00000002
export WGL_CONTEXT_COMPATIBILITY_PROFILE_BIT_ARB
const WGL_CONTEXT_CORE_PROFILE_BIT_ARB = 0x00000001
export WGL_CONTEXT_CORE_PROFILE_BIT_ARB
const WGL_CONTEXT_PROFILE_MASK_ARB = 0x9126
export WGL_CONTEXT_PROFILE_MASK_ARB
const WGL_CONTEXT_RESET_NOTIFICATION_STRATEGY_ARB = 0x8256
export WGL_CONTEXT_RESET_NOTIFICATION_STRATEGY_ARB
const WGL_CONTEXT_ROBUST_ACCESS_BIT_ARB = 0x00000004
export WGL_CONTEXT_ROBUST_ACCESS_BIT_ARB
const WGL_LOSE_CONTEXT_ON_RESET_ARB = 0x8252
export WGL_LOSE_CONTEXT_ON_RESET_ARB
const WGL_NO_RESET_NOTIFICATION_ARB = 0x8261
export WGL_NO_RESET_NOTIFICATION_ARB
const WGL_FRAMEBUFFER_SRGB_CAPABLE_ARB = 0x20A9
export WGL_FRAMEBUFFER_SRGB_CAPABLE_ARB
const ERROR_INCOMPATIBLE_DEVICE_CONTEXTS_ARB = 0x2054
export ERROR_INCOMPATIBLE_DEVICE_CONTEXTS_ARB
const ERROR_INVALID_PIXEL_TYPE_ARB = 0x2043
export ERROR_INVALID_PIXEL_TYPE_ARB
const WGL_SAMPLES_ARB = 0x2042
export WGL_SAMPLES_ARB
const WGL_SAMPLE_BUFFERS_ARB = 0x2041
export WGL_SAMPLE_BUFFERS_ARB
const WGL_DRAW_TO_PBUFFER_ARB = 0x202D
export WGL_DRAW_TO_PBUFFER_ARB
const WGL_MAX_PBUFFER_HEIGHT_ARB = 0x2030
export WGL_MAX_PBUFFER_HEIGHT_ARB
const WGL_MAX_PBUFFER_PIXELS_ARB = 0x202E
export WGL_MAX_PBUFFER_PIXELS_ARB
const WGL_MAX_PBUFFER_WIDTH_ARB = 0x202F
export WGL_MAX_PBUFFER_WIDTH_ARB
const WGL_PBUFFER_HEIGHT_ARB = 0x2035
export WGL_PBUFFER_HEIGHT_ARB
const WGL_PBUFFER_LARGEST_ARB = 0x2033
export WGL_PBUFFER_LARGEST_ARB
const WGL_PBUFFER_LOST_ARB = 0x2036
export WGL_PBUFFER_LOST_ARB
const WGL_PBUFFER_WIDTH_ARB = 0x2034
export WGL_PBUFFER_WIDTH_ARB
const WGL_ACCELERATION_ARB = 0x2003
export WGL_ACCELERATION_ARB
const WGL_ACCUM_ALPHA_BITS_ARB = 0x2021
export WGL_ACCUM_ALPHA_BITS_ARB
const WGL_ACCUM_BITS_ARB = 0x201D
export WGL_ACCUM_BITS_ARB
const WGL_ACCUM_BLUE_BITS_ARB = 0x2020
export WGL_ACCUM_BLUE_BITS_ARB
const WGL_ACCUM_GREEN_BITS_ARB = 0x201F
export WGL_ACCUM_GREEN_BITS_ARB
const WGL_ACCUM_RED_BITS_ARB = 0x201E
export WGL_ACCUM_RED_BITS_ARB
const WGL_ALPHA_BITS_ARB = 0x201B
export WGL_ALPHA_BITS_ARB
const WGL_ALPHA_SHIFT_ARB = 0x201C
export WGL_ALPHA_SHIFT_ARB
const WGL_AUX_BUFFERS_ARB = 0x2024
export WGL_AUX_BUFFERS_ARB
const WGL_BLUE_BITS_ARB = 0x2019
export WGL_BLUE_BITS_ARB
const WGL_BLUE_SHIFT_ARB = 0x201A
export WGL_BLUE_SHIFT_ARB
const WGL_COLOR_BITS_ARB = 0x2014
export WGL_COLOR_BITS_ARB
const WGL_DEPTH_BITS_ARB = 0x2022
export WGL_DEPTH_BITS_ARB
const WGL_DOUBLE_BUFFER_ARB = 0x2011
export WGL_DOUBLE_BUFFER_ARB
const WGL_DRAW_TO_BITMAP_ARB = 0x2002
export WGL_DRAW_TO_BITMAP_ARB
const WGL_DRAW_TO_WINDOW_ARB = 0x2001
export WGL_DRAW_TO_WINDOW_ARB
const WGL_FULL_ACCELERATION_ARB = 0x2027
export WGL_FULL_ACCELERATION_ARB
const WGL_GENERIC_ACCELERATION_ARB = 0x2026
export WGL_GENERIC_ACCELERATION_ARB
const WGL_GREEN_BITS_ARB = 0x2017
export WGL_GREEN_BITS_ARB
const WGL_GREEN_SHIFT_ARB = 0x2018
export WGL_GREEN_SHIFT_ARB
const WGL_NEED_PALETTE_ARB = 0x2004
export WGL_NEED_PALETTE_ARB
const WGL_NEED_SYSTEM_PALETTE_ARB = 0x2005
export WGL_NEED_SYSTEM_PALETTE_ARB
const WGL_NO_ACCELERATION_ARB = 0x2025
export WGL_NO_ACCELERATION_ARB
const WGL_NUMBER_OVERLAYS_ARB = 0x2008
export WGL_NUMBER_OVERLAYS_ARB
const WGL_NUMBER_PIXEL_FORMATS_ARB = 0x2000
export WGL_NUMBER_PIXEL_FORMATS_ARB
const WGL_NUMBER_UNDERLAYS_ARB = 0x2009
export WGL_NUMBER_UNDERLAYS_ARB
const WGL_PIXEL_TYPE_ARB = 0x2013
export WGL_PIXEL_TYPE_ARB
const WGL_RED_BITS_ARB = 0x2015
export WGL_RED_BITS_ARB
const WGL_RED_SHIFT_ARB = 0x2016
export WGL_RED_SHIFT_ARB
const WGL_SHARE_ACCUM_ARB = 0x200E
export WGL_SHARE_ACCUM_ARB
const WGL_SHARE_DEPTH_ARB = 0x200C
export WGL_SHARE_DEPTH_ARB
const WGL_SHARE_STENCIL_ARB = 0x200D
export WGL_SHARE_STENCIL_ARB
const WGL_STENCIL_BITS_ARB = 0x2023
export WGL_STENCIL_BITS_ARB
const WGL_STEREO_ARB = 0x2012
export WGL_STEREO_ARB
const WGL_SUPPORT_GDI_ARB = 0x200F
export WGL_SUPPORT_GDI_ARB
const WGL_SUPPORT_OPENGL_ARB = 0x2010
export WGL_SUPPORT_OPENGL_ARB
const WGL_SWAP_COPY_ARB = 0x2029
export WGL_SWAP_COPY_ARB
const WGL_SWAP_EXCHANGE_ARB = 0x2028
export WGL_SWAP_EXCHANGE_ARB
const WGL_SWAP_LAYER_BUFFERS_ARB = 0x2006
export WGL_SWAP_LAYER_BUFFERS_ARB
const WGL_SWAP_METHOD_ARB = 0x2007
export WGL_SWAP_METHOD_ARB
const WGL_SWAP_UNDEFINED_ARB = 0x202A
export WGL_SWAP_UNDEFINED_ARB
const WGL_TRANSPARENT_ARB = 0x200A
export WGL_TRANSPARENT_ARB
const WGL_TYPE_COLORINDEX_ARB = 0x202C
export WGL_TYPE_COLORINDEX_ARB
const WGL_TYPE_RGBA_ARB = 0x202B
export WGL_TYPE_RGBA_ARB
const WGL_TYPE_RGBA_FLOAT_ARB = 0x21A0
export WGL_TYPE_RGBA_FLOAT_ARB
const WGL_AUX0_ARB = 0x2087
export WGL_AUX0_ARB
const WGL_AUX1_ARB = 0x2088
export WGL_AUX1_ARB
const WGL_AUX2_ARB = 0x2089
export WGL_AUX2_ARB
const WGL_AUX3_ARB = 0x208A
export WGL_AUX3_ARB
const WGL_AUX4_ARB = 0x208B
export WGL_AUX4_ARB
const WGL_AUX5_ARB = 0x208C
export WGL_AUX5_ARB
const WGL_AUX6_ARB = 0x208D
export WGL_AUX6_ARB
const WGL_AUX7_ARB = 0x208E
export WGL_AUX7_ARB
const WGL_AUX8_ARB = 0x208F
export WGL_AUX8_ARB
const WGL_AUX9_ARB = 0x2090
export WGL_AUX9_ARB
const WGL_BACK_LEFT_ARB = 0x2085
export WGL_BACK_LEFT_ARB
const WGL_BACK_RIGHT_ARB = 0x2086
export WGL_BACK_RIGHT_ARB
const WGL_BIND_TO_TEXTURE_RGBA_ARB = 0x2071
export WGL_BIND_TO_TEXTURE_RGBA_ARB
const WGL_BIND_TO_TEXTURE_RGB_ARB = 0x2070
export WGL_BIND_TO_TEXTURE_RGB_ARB
const WGL_CUBE_MAP_FACE_ARB = 0x207C
export WGL_CUBE_MAP_FACE_ARB
const WGL_FRONT_LEFT_ARB = 0x2083
export WGL_FRONT_LEFT_ARB
const WGL_FRONT_RIGHT_ARB = 0x2084
export WGL_FRONT_RIGHT_ARB
const WGL_MIPMAP_LEVEL_ARB = 0x207B
export WGL_MIPMAP_LEVEL_ARB
const WGL_MIPMAP_TEXTURE_ARB = 0x2074
export WGL_MIPMAP_TEXTURE_ARB
const WGL_NO_TEXTURE_ARB = 0x2077
export WGL_NO_TEXTURE_ARB
const WGL_TEXTURE_1D_ARB = 0x2079
export WGL_TEXTURE_1D_ARB
const WGL_TEXTURE_2D_ARB = 0x207A
export WGL_TEXTURE_2D_ARB
const WGL_TEXTURE_CUBE_MAP_ARB = 0x2078
export WGL_TEXTURE_CUBE_MAP_ARB
const WGL_TEXTURE_CUBE_MAP_NEGATIVE_X_ARB = 0x207E
export WGL_TEXTURE_CUBE_MAP_NEGATIVE_X_ARB
const WGL_TEXTURE_CUBE_MAP_NEGATIVE_Y_ARB = 0x2080
export WGL_TEXTURE_CUBE_MAP_NEGATIVE_Y_ARB
const WGL_TEXTURE_CUBE_MAP_NEGATIVE_Z_ARB = 0x2082
export WGL_TEXTURE_CUBE_MAP_NEGATIVE_Z_ARB
const WGL_TEXTURE_CUBE_MAP_POSITIVE_X_ARB = 0x207D
export WGL_TEXTURE_CUBE_MAP_POSITIVE_X_ARB
const WGL_TEXTURE_CUBE_MAP_POSITIVE_Y_ARB = 0x207F
export WGL_TEXTURE_CUBE_MAP_POSITIVE_Y_ARB
const WGL_TEXTURE_CUBE_MAP_POSITIVE_Z_ARB = 0x2081
export WGL_TEXTURE_CUBE_MAP_POSITIVE_Z_ARB
const WGL_TEXTURE_FORMAT_ARB = 0x2072
export WGL_TEXTURE_FORMAT_ARB
const WGL_TEXTURE_RGBA_ARB = 0x2076
export WGL_TEXTURE_RGBA_ARB
const WGL_TEXTURE_RGB_ARB = 0x2075
export WGL_TEXTURE_RGB_ARB
const WGL_TEXTURE_TARGET_ARB = 0x2073
export WGL_TEXTURE_TARGET_ARB
const WGL_TYPE_RGBA_FLOAT_ATI = 0x21A0
export WGL_TYPE_RGBA_FLOAT_ATI
const WGL_CONTEXT_ES2_PROFILE_BIT_EXT = 0x00000004
export WGL_CONTEXT_ES2_PROFILE_BIT_EXT
const WGL_DEPTH_FLOAT_EXT = 0x2040
export WGL_DEPTH_FLOAT_EXT
const WGL_FRAMEBUFFER_SRGB_CAPABLE_EXT = 0x20A9
export WGL_FRAMEBUFFER_SRGB_CAPABLE_EXT
const ERROR_INVALID_PIXEL_TYPE_EXT = 0x2043
export ERROR_INVALID_PIXEL_TYPE_EXT
const WGL_SAMPLES_EXT = 0x2042
export WGL_SAMPLES_EXT
const WGL_SAMPLE_BUFFERS_EXT = 0x2041
export WGL_SAMPLE_BUFFERS_EXT
const WGL_DRAW_TO_PBUFFER_EXT = 0x202D
export WGL_DRAW_TO_PBUFFER_EXT
const WGL_MAX_PBUFFER_HEIGHT_EXT = 0x2030
export WGL_MAX_PBUFFER_HEIGHT_EXT
const WGL_MAX_PBUFFER_PIXELS_EXT = 0x202E
export WGL_MAX_PBUFFER_PIXELS_EXT
const WGL_MAX_PBUFFER_WIDTH_EXT = 0x202F
export WGL_MAX_PBUFFER_WIDTH_EXT
const WGL_OPTIMAL_PBUFFER_HEIGHT_EXT = 0x2032
export WGL_OPTIMAL_PBUFFER_HEIGHT_EXT
const WGL_OPTIMAL_PBUFFER_WIDTH_EXT = 0x2031
export WGL_OPTIMAL_PBUFFER_WIDTH_EXT
const WGL_PBUFFER_HEIGHT_EXT = 0x2035
export WGL_PBUFFER_HEIGHT_EXT
const WGL_PBUFFER_LARGEST_EXT = 0x2033
export WGL_PBUFFER_LARGEST_EXT
const WGL_PBUFFER_WIDTH_EXT = 0x2034
export WGL_PBUFFER_WIDTH_EXT
const WGL_ACCELERATION_EXT = 0x2003
export WGL_ACCELERATION_EXT
const WGL_ACCUM_ALPHA_BITS_EXT = 0x2021
export WGL_ACCUM_ALPHA_BITS_EXT
const WGL_ACCUM_BITS_EXT = 0x201D
export WGL_ACCUM_BITS_EXT
const WGL_ACCUM_BLUE_BITS_EXT = 0x2020
export WGL_ACCUM_BLUE_BITS_EXT
const WGL_ACCUM_GREEN_BITS_EXT = 0x201F
export WGL_ACCUM_GREEN_BITS_EXT
const WGL_ACCUM_RED_BITS_EXT = 0x201E
export WGL_ACCUM_RED_BITS_EXT
const WGL_ALPHA_BITS_EXT = 0x201B
export WGL_ALPHA_BITS_EXT
const WGL_ALPHA_SHIFT_EXT = 0x201C
export WGL_ALPHA_SHIFT_EXT
const WGL_AUX_BUFFERS_EXT = 0x2024
export WGL_AUX_BUFFERS_EXT
const WGL_BLUE_BITS_EXT = 0x2019
export WGL_BLUE_BITS_EXT
const WGL_BLUE_SHIFT_EXT = 0x201A
export WGL_BLUE_SHIFT_EXT
const WGL_COLOR_BITS_EXT = 0x2014
export WGL_COLOR_BITS_EXT
const WGL_DEPTH_BITS_EXT = 0x2022
export WGL_DEPTH_BITS_EXT
const WGL_DOUBLE_BUFFER_EXT = 0x2011
export WGL_DOUBLE_BUFFER_EXT
const WGL_DRAW_TO_BITMAP_EXT = 0x2002
export WGL_DRAW_TO_BITMAP_EXT
const WGL_DRAW_TO_WINDOW_EXT = 0x2001
export WGL_DRAW_TO_WINDOW_EXT
const WGL_FULL_ACCELERATION_EXT = 0x2027
export WGL_FULL_ACCELERATION_EXT
const WGL_GENERIC_ACCELERATION_EXT = 0x2026
export WGL_GENERIC_ACCELERATION_EXT
const WGL_GREEN_BITS_EXT = 0x2017
export WGL_GREEN_BITS_EXT
const WGL_GREEN_SHIFT_EXT = 0x2018
export WGL_GREEN_SHIFT_EXT
const WGL_NEED_PALETTE_EXT = 0x2004
export WGL_NEED_PALETTE_EXT
const WGL_NEED_SYSTEM_PALETTE_EXT = 0x2005
export WGL_NEED_SYSTEM_PALETTE_EXT
const WGL_NO_ACCELERATION_EXT = 0x2025
export WGL_NO_ACCELERATION_EXT
const WGL_NUMBER_OVERLAYS_EXT = 0x2008
export WGL_NUMBER_OVERLAYS_EXT
const WGL_NUMBER_PIXEL_FORMATS_EXT = 0x2000
export WGL_NUMBER_PIXEL_FORMATS_EXT
const WGL_NUMBER_UNDERLAYS_EXT = 0x2009
export WGL_NUMBER_UNDERLAYS_EXT
const WGL_PIXEL_TYPE_EXT = 0x2013
export WGL_PIXEL_TYPE_EXT
const WGL_RED_BITS_EXT = 0x2015
export WGL_RED_BITS_EXT
const WGL_RED_SHIFT_EXT = 0x2016
export WGL_RED_SHIFT_EXT
const WGL_SHARE_ACCUM_EXT = 0x200E
export WGL_SHARE_ACCUM_EXT
const WGL_SHARE_DEPTH_EXT = 0x200C
export WGL_SHARE_DEPTH_EXT
const WGL_SHARE_STENCIL_EXT = 0x200D
export WGL_SHARE_STENCIL_EXT
const WGL_STENCIL_BITS_EXT = 0x2023
export WGL_STENCIL_BITS_EXT
const WGL_STEREO_EXT = 0x2012
export WGL_STEREO_EXT
const WGL_SUPPORT_GDI_EXT = 0x200F
export WGL_SUPPORT_GDI_EXT
const WGL_SUPPORT_OPENGL_EXT = 0x2010
export WGL_SUPPORT_OPENGL_EXT
const WGL_SWAP_COPY_EXT = 0x2029
export WGL_SWAP_COPY_EXT
const WGL_SWAP_EXCHANGE_EXT = 0x2028
export WGL_SWAP_EXCHANGE_EXT
const WGL_SWAP_LAYER_BUFFERS_EXT = 0x2006
export WGL_SWAP_LAYER_BUFFERS_EXT
const WGL_SWAP_METHOD_EXT = 0x2007
export WGL_SWAP_METHOD_EXT
const WGL_SWAP_UNDEFINED_EXT = 0x202A
export WGL_SWAP_UNDEFINED_EXT
const WGL_TRANSPARENT_EXT = 0x200A
export WGL_TRANSPARENT_EXT
const WGL_TRANSPARENT_VALUE_EXT = 0x200B
export WGL_TRANSPARENT_VALUE_EXT
const WGL_TYPE_COLORINDEX_EXT = 0x202C
export WGL_TYPE_COLORINDEX_EXT
const WGL_TYPE_RGBA_EXT = 0x202B
export WGL_TYPE_RGBA_EXT
const WGL_TYPE_RGBA_UNSIGNED_FLOAT_EXT = 0x20A8
export WGL_TYPE_RGBA_UNSIGNED_FLOAT_EXT
const WGL_DIGITAL_VIDEO_CURSOR_ALPHA_FRAMEBUFFER_I3D = 0x2050
export WGL_DIGITAL_VIDEO_CURSOR_ALPHA_FRAMEBUFFER_I3D
const WGL_DIGITAL_VIDEO_CURSOR_ALPHA_VALUE_I3D = 0x2051
export WGL_DIGITAL_VIDEO_CURSOR_ALPHA_VALUE_I3D
const WGL_DIGITAL_VIDEO_CURSOR_INCLUDED_I3D = 0x2052
export WGL_DIGITAL_VIDEO_CURSOR_INCLUDED_I3D
const WGL_DIGITAL_VIDEO_GAMMA_CORRECTED_I3D = 0x2053
export WGL_DIGITAL_VIDEO_GAMMA_CORRECTED_I3D
const WGL_GAMMA_EXCLUDE_DESKTOP_I3D = 0x204F
export WGL_GAMMA_EXCLUDE_DESKTOP_I3D
const WGL_GAMMA_TABLE_SIZE_I3D = 0x204E
export WGL_GAMMA_TABLE_SIZE_I3D
const WGL_GENLOCK_SOURCE_DIGITAL_FIELD_I3D = 0x2049
export WGL_GENLOCK_SOURCE_DIGITAL_FIELD_I3D
const WGL_GENLOCK_SOURCE_DIGITAL_SYNC_I3D = 0x2048
export WGL_GENLOCK_SOURCE_DIGITAL_SYNC_I3D
const WGL_GENLOCK_SOURCE_EDGE_BOTH_I3D = 0x204C
export WGL_GENLOCK_SOURCE_EDGE_BOTH_I3D
const WGL_GENLOCK_SOURCE_EDGE_FALLING_I3D = 0x204A
export WGL_GENLOCK_SOURCE_EDGE_FALLING_I3D
const WGL_GENLOCK_SOURCE_EDGE_RISING_I3D = 0x204B
export WGL_GENLOCK_SOURCE_EDGE_RISING_I3D
const WGL_GENLOCK_SOURCE_EXTERNAL_FIELD_I3D = 0x2046
export WGL_GENLOCK_SOURCE_EXTERNAL_FIELD_I3D
const WGL_GENLOCK_SOURCE_EXTERNAL_SYNC_I3D = 0x2045
export WGL_GENLOCK_SOURCE_EXTERNAL_SYNC_I3D
const WGL_GENLOCK_SOURCE_EXTERNAL_TTL_I3D = 0x2047
export WGL_GENLOCK_SOURCE_EXTERNAL_TTL_I3D
const WGL_GENLOCK_SOURCE_MULTIVIEW_I3D = 0x2044
export WGL_GENLOCK_SOURCE_MULTIVIEW_I3D
const WGL_IMAGE_BUFFER_LOCK_I3D = 0x00000002
export WGL_IMAGE_BUFFER_LOCK_I3D
const WGL_IMAGE_BUFFER_MIN_ACCESS_I3D = 0x00000001
export WGL_IMAGE_BUFFER_MIN_ACCESS_I3D
const WGL_ACCESS_READ_ONLY_NV = 0x00000000
export WGL_ACCESS_READ_ONLY_NV
const WGL_ACCESS_READ_WRITE_NV = 0x00000001
export WGL_ACCESS_READ_WRITE_NV
const WGL_ACCESS_WRITE_DISCARD_NV = 0x00000002
export WGL_ACCESS_WRITE_DISCARD_NV
const WGL_BIND_TO_TEXTURE_RECTANGLE_FLOAT_RGBA_NV = 0x20B4
export WGL_BIND_TO_TEXTURE_RECTANGLE_FLOAT_RGBA_NV
const WGL_BIND_TO_TEXTURE_RECTANGLE_FLOAT_RGB_NV = 0x20B3
export WGL_BIND_TO_TEXTURE_RECTANGLE_FLOAT_RGB_NV
const WGL_BIND_TO_TEXTURE_RECTANGLE_FLOAT_RG_NV = 0x20B2
export WGL_BIND_TO_TEXTURE_RECTANGLE_FLOAT_RG_NV
const WGL_BIND_TO_TEXTURE_RECTANGLE_FLOAT_R_NV = 0x20B1
export WGL_BIND_TO_TEXTURE_RECTANGLE_FLOAT_R_NV
const WGL_FLOAT_COMPONENTS_NV = 0x20B0
export WGL_FLOAT_COMPONENTS_NV
const WGL_TEXTURE_FLOAT_RGBA_NV = 0x20B8
export WGL_TEXTURE_FLOAT_RGBA_NV
const WGL_TEXTURE_FLOAT_RGB_NV = 0x20B7
export WGL_TEXTURE_FLOAT_RGB_NV
const WGL_TEXTURE_FLOAT_RG_NV = 0x20B6
export WGL_TEXTURE_FLOAT_RG_NV
const WGL_TEXTURE_FLOAT_R_NV = 0x20B5
export WGL_TEXTURE_FLOAT_R_NV
const WGL_ERROR_INCOMPATIBLE_AFFINITY_MASKS_NV = 0x20D0
export WGL_ERROR_INCOMPATIBLE_AFFINITY_MASKS_NV
const WGL_ERROR_MISSING_AFFINITY_MASK_NV = 0x20D1
export WGL_ERROR_MISSING_AFFINITY_MASK_NV
const WGL_COLOR_SAMPLES_NV = 0x20B9
export WGL_COLOR_SAMPLES_NV
const WGL_COVERAGE_SAMPLES_NV = 0x2042
export WGL_COVERAGE_SAMPLES_NV
const WGL_NUM_VIDEO_SLOTS_NV = 0x20F0
export WGL_NUM_VIDEO_SLOTS_NV
const WGL_BIND_TO_TEXTURE_DEPTH_NV = 0x20A3
export WGL_BIND_TO_TEXTURE_DEPTH_NV
const WGL_BIND_TO_TEXTURE_RECTANGLE_DEPTH_NV = 0x20A4
export WGL_BIND_TO_TEXTURE_RECTANGLE_DEPTH_NV
const WGL_DEPTH_COMPONENT_NV = 0x20A7
export WGL_DEPTH_COMPONENT_NV
const WGL_DEPTH_TEXTURE_FORMAT_NV = 0x20A5
export WGL_DEPTH_TEXTURE_FORMAT_NV
const WGL_TEXTURE_DEPTH_COMPONENT_NV = 0x20A6
export WGL_TEXTURE_DEPTH_COMPONENT_NV
const WGL_BIND_TO_TEXTURE_RECTANGLE_RGBA_NV = 0x20A1
export WGL_BIND_TO_TEXTURE_RECTANGLE_RGBA_NV
const WGL_BIND_TO_TEXTURE_RECTANGLE_RGB_NV = 0x20A0
export WGL_BIND_TO_TEXTURE_RECTANGLE_RGB_NV
const WGL_TEXTURE_RECTANGLE_NV = 0x20A2
export WGL_TEXTURE_RECTANGLE_NV
const WGL_NUM_VIDEO_CAPTURE_SLOTS_NV = 0x20CF
export WGL_NUM_VIDEO_CAPTURE_SLOTS_NV
const WGL_UNIQUE_ID_NV = 0x20CE
export WGL_UNIQUE_ID_NV
const WGL_BIND_TO_VIDEO_RGBA_NV = 0x20C1
export WGL_BIND_TO_VIDEO_RGBA_NV
const WGL_BIND_TO_VIDEO_RGB_AND_DEPTH_NV = 0x20C2
export WGL_BIND_TO_VIDEO_RGB_AND_DEPTH_NV
const WGL_BIND_TO_VIDEO_RGB_NV = 0x20C0
export WGL_BIND_TO_VIDEO_RGB_NV
const WGL_VIDEO_OUT_ALPHA_NV = 0x20C4
export WGL_VIDEO_OUT_ALPHA_NV
const WGL_VIDEO_OUT_COLOR_AND_ALPHA_NV = 0x20C6
export WGL_VIDEO_OUT_COLOR_AND_ALPHA_NV
const WGL_VIDEO_OUT_COLOR_AND_DEPTH_NV = 0x20C7
export WGL_VIDEO_OUT_COLOR_AND_DEPTH_NV
const WGL_VIDEO_OUT_COLOR_NV = 0x20C3
export WGL_VIDEO_OUT_COLOR_NV
const WGL_VIDEO_OUT_DEPTH_NV = 0x20C5
export WGL_VIDEO_OUT_DEPTH_NV
const WGL_VIDEO_OUT_FIELD_1 = 0x20C9
export WGL_VIDEO_OUT_FIELD_1
const WGL_VIDEO_OUT_FIELD_2 = 0x20CA
export WGL_VIDEO_OUT_FIELD_2
const WGL_VIDEO_OUT_FRAME = 0x20C8
export WGL_VIDEO_OUT_FRAME
const WGL_VIDEO_OUT_STACKED_FIELDS_1_2 = 0x20CB
export WGL_VIDEO_OUT_STACKED_FIELDS_1_2
const WGL_VIDEO_OUT_STACKED_FIELDS_2_1 = 0x20CC
export WGL_VIDEO_OUT_STACKED_FIELDS_2_1
@getCFun "libGL" wglSetStereoEmitterState3DL wglSetStereoEmitterState3DL(hDC::HDC, uState::Cuint)::Cint
export wglSetStereoEmitterState3DL
@getCFun "libGL" wglGetGPUIDsAMD wglGetGPUIDsAMD(maxCount::Cuint, ids::Ptr{Cuint})::Cuint
export wglGetGPUIDsAMD
@getCFun "libGL" wglGetGPUInfoAMD wglGetGPUInfoAMD(id::Cuint, property::Cint, dataType::GLenum, size::Cuint, data::Ptr{Void})::Cint
export wglGetGPUInfoAMD
@getCFun "libGL" wglGetContextGPUIDAMD wglGetContextGPUIDAMD(hglrc::HGLRC)::Cuint
export wglGetContextGPUIDAMD
@getCFun "libGL" wglCreateAssociatedContextAMD wglCreateAssociatedContextAMD(id::Cuint)::Ptr{Void}
export wglCreateAssociatedContextAMD
@getCFun "libGL" wglCreateAssociatedContextAttribsAMD wglCreateAssociatedContextAttribsAMD(id::Cuint, hShareContext::HGLRC, attribList::Ptr{Cint})::Ptr{Void}
export wglCreateAssociatedContextAttribsAMD
@getCFun "libGL" wglDeleteAssociatedContextAMD wglDeleteAssociatedContextAMD(hglrc::HGLRC)::Cint
export wglDeleteAssociatedContextAMD
@getCFun "libGL" wglMakeAssociatedContextCurrentAMD wglMakeAssociatedContextCurrentAMD(hglrc::HGLRC)::Cint
export wglMakeAssociatedContextCurrentAMD
@getCFun "libGL" wglGetCurrentAssociatedContextAMD wglGetCurrentAssociatedContextAMD()::Ptr{Void}
export wglGetCurrentAssociatedContextAMD
@getCFun "libGL" wglCreateBufferRegionARB wglCreateBufferRegionARB(hDC::HDC, iLayerPlane::Cint, uType::Cuint)::Ptr{Void}
export wglCreateBufferRegionARB
@getCFun "libGL" wglSaveBufferRegionARB wglSaveBufferRegionARB(hRegion::HANDLE, x::Cint, y::Cint, width::Cint, height::Cint)::Cint
export wglSaveBufferRegionARB
@getCFun "libGL" wglRestoreBufferRegionARB wglRestoreBufferRegionARB(hRegion::HANDLE, x::Cint, y::Cint, width::Cint, height::Cint, xSrc::Cint, ySrc::Cint)::Cint
export wglRestoreBufferRegionARB
@getCFun "libGL" wglCreateContextAttribsARB wglCreateContextAttribsARB(hDC::HDC, hShareContext::HGLRC, attribList::Ptr{Cint})::Ptr{Void}
export wglCreateContextAttribsARB
@getCFun "libGL" wglGetExtensionsStringARB wglGetExtensionsStringARB(hdc::HDC)::Ptr{Cchar}
export wglGetExtensionsStringARB
@getCFun "libGL" wglMakeContextCurrentARB wglMakeContextCurrentARB(hDrawDC::HDC, hReadDC::HDC, hglrc::HGLRC)::Cint
export wglMakeContextCurrentARB
@getCFun "libGL" wglGetCurrentReadDCARB wglGetCurrentReadDCARB()::Ptr{Void}
export wglGetCurrentReadDCARB
@getCFun "libGL" wglCreatePbufferARB wglCreatePbufferARB(hDC::HDC, iPixelFormat::Cint, iWidth::Cint, iHeight::Cint, piAttribList::Ptr{Cint})::Ptr{Void}
export wglCreatePbufferARB
@getCFun "libGL" wglGetPbufferDCARB wglGetPbufferDCARB(hPbuffer::HPBUFFERARB)::Ptr{Void}
export wglGetPbufferDCARB
@getCFun "libGL" wglReleasePbufferDCARB wglReleasePbufferDCARB(hPbuffer::HPBUFFERARB, hDC::HDC)::Cint
export wglReleasePbufferDCARB
@getCFun "libGL" wglDestroyPbufferARB wglDestroyPbufferARB(hPbuffer::HPBUFFERARB)::Cint
export wglDestroyPbufferARB
@getCFun "libGL" wglQueryPbufferARB wglQueryPbufferARB(hPbuffer::HPBUFFERARB, iAttribute::Cint, piValue::Ptr{Cint})::Cint
export wglQueryPbufferARB
@getCFun "libGL" wglGetPixelFormatAttribivARB wglGetPixelFormatAttribivARB(hdc::HDC, iPixelFormat::Cint, iLayerPlane::Cint, nAttributes::Cuint, piAttributes::Ptr{Cint}, piValues::Ptr{Cint})::Cint
export wglGetPixelFormatAttribivARB
@getCFun "libGL" wglGetPixelFormatAttribfvARB wglGetPixelFormatAttribfvARB(hdc::HDC, iPixelFormat::Cint, iLayerPlane::Cint, nAttributes::Cuint, piAttributes::Ptr{Cint}, pfValues::Ptr{Cfloat})::Cint
export wglGetPixelFormatAttribfvARB
@getCFun "libGL" wglChoosePixelFormatARB wglChoosePixelFormatARB(hdc::HDC, piAttribIList::Ptr{Cint}, pfAttribFList::Ptr{Cfloat}, nMaxFormats::Cuint, piFormats::Ptr{Cint}, nNumFormats::Ptr{Cuint})::Cint
export wglChoosePixelFormatARB
@getCFun "libGL" wglBindTexImageARB wglBindTexImageARB(hPbuffer::HPBUFFERARB, iBuffer::Cint)::Cint
export wglBindTexImageARB
@getCFun "libGL" wglReleaseTexImageARB wglReleaseTexImageARB(hPbuffer::HPBUFFERARB, iBuffer::Cint)::Cint
export wglReleaseTexImageARB
@getCFun "libGL" wglSetPbufferAttribARB wglSetPbufferAttribARB(hPbuffer::HPBUFFERARB, piAttribList::Ptr{Cint})::Cint
export wglSetPbufferAttribARB
@getCFun "libGL" wglCreateDisplayColorTableEXT wglCreateDisplayColorTableEXT(id::GLushort)::Bool
export wglCreateDisplayColorTableEXT
@getCFun "libGL" wglLoadDisplayColorTableEXT wglLoadDisplayColorTableEXT(table::Ptr{GLushort}, length::GLuint)::Bool
export wglLoadDisplayColorTableEXT
@getCFun "libGL" wglBindDisplayColorTableEXT wglBindDisplayColorTableEXT(id::GLushort)::Bool
export wglBindDisplayColorTableEXT
@getCFun "libGL" wglGetExtensionsStringEXT wglGetExtensionsStringEXT()::Ptr{Cchar}
export wglGetExtensionsStringEXT
@getCFun "libGL" wglMakeContextCurrentEXT wglMakeContextCurrentEXT(hDrawDC::HDC, hReadDC::HDC, hglrc::HGLRC)::Cint
export wglMakeContextCurrentEXT
@getCFun "libGL" wglGetCurrentReadDCEXT wglGetCurrentReadDCEXT()::Ptr{Void}
export wglGetCurrentReadDCEXT
@getCFun "libGL" wglCreatePbufferEXT wglCreatePbufferEXT(hDC::HDC, iPixelFormat::Cint, iWidth::Cint, iHeight::Cint, piAttribList::Ptr{Cint})::Ptr{Void}
export wglCreatePbufferEXT
@getCFun "libGL" wglGetPbufferDCEXT wglGetPbufferDCEXT(hPbuffer::HPBUFFEREXT)::Ptr{Void}
export wglGetPbufferDCEXT
@getCFun "libGL" wglReleasePbufferDCEXT wglReleasePbufferDCEXT(hPbuffer::HPBUFFEREXT, hDC::HDC)::Cint
export wglReleasePbufferDCEXT
@getCFun "libGL" wglDestroyPbufferEXT wglDestroyPbufferEXT(hPbuffer::HPBUFFEREXT)::Cint
export wglDestroyPbufferEXT
@getCFun "libGL" wglQueryPbufferEXT wglQueryPbufferEXT(hPbuffer::HPBUFFEREXT, iAttribute::Cint, piValue::Ptr{Cint})::Cint
export wglQueryPbufferEXT
@getCFun "libGL" wglGetPixelFormatAttribivEXT wglGetPixelFormatAttribivEXT(hdc::HDC, iPixelFormat::Cint, iLayerPlane::Cint, nAttributes::Cuint, piAttributes::Ptr{Cint}, piValues::Ptr{Cint})::Cint
export wglGetPixelFormatAttribivEXT
@getCFun "libGL" wglGetPixelFormatAttribfvEXT wglGetPixelFormatAttribfvEXT(hdc::HDC, iPixelFormat::Cint, iLayerPlane::Cint, nAttributes::Cuint, piAttributes::Ptr{Cint}, pfValues::Ptr{Cfloat})::Cint
export wglGetPixelFormatAttribfvEXT
@getCFun "libGL" wglChoosePixelFormatEXT wglChoosePixelFormatEXT(hdc::HDC, piAttribIList::Ptr{Cint}, pfAttribFList::Ptr{Cfloat}, nMaxFormats::Cuint, piFormats::Ptr{Cint}, nNumFormats::Ptr{Cuint})::Cint
export wglChoosePixelFormatEXT
@getCFun "libGL" wglSwapIntervalEXT wglSwapIntervalEXT(interval::Cint)::Cint
export wglSwapIntervalEXT
@getCFun "libGL" wglGetSwapIntervalEXT wglGetSwapIntervalEXT()::Cint
export wglGetSwapIntervalEXT
@getCFun "libGL" wglGetDigitalVideoParametersI3D wglGetDigitalVideoParametersI3D(hDC::HDC, iAttribute::Cint, piValue::Ptr{Cint})::Cint
export wglGetDigitalVideoParametersI3D
@getCFun "libGL" wglSetDigitalVideoParametersI3D wglSetDigitalVideoParametersI3D(hDC::HDC, iAttribute::Cint, piValue::Ptr{Cint})::Cint
export wglSetDigitalVideoParametersI3D
@getCFun "libGL" wglGetGammaTableParametersI3D wglGetGammaTableParametersI3D(hDC::HDC, iAttribute::Cint, piValue::Ptr{Cint})::Cint
export wglGetGammaTableParametersI3D
@getCFun "libGL" wglSetGammaTableParametersI3D wglSetGammaTableParametersI3D(hDC::HDC, iAttribute::Cint, piValue::Ptr{Cint})::Cint
export wglSetGammaTableParametersI3D
@getCFun "libGL" wglGetGammaTableI3D wglGetGammaTableI3D(hDC::HDC, iEntries::Cint, puRed::Ptr{Cushort}, puGreen::Ptr{Cushort}, puBlue::Ptr{Cushort})::Cint
export wglGetGammaTableI3D
@getCFun "libGL" wglSetGammaTableI3D wglSetGammaTableI3D(hDC::HDC, iEntries::Cint, puRed::Ptr{Cushort}, puGreen::Ptr{Cushort}, puBlue::Ptr{Cushort})::Cint
export wglSetGammaTableI3D
@getCFun "libGL" wglEnableGenlockI3D wglEnableGenlockI3D(hDC::HDC)::Cint
export wglEnableGenlockI3D
@getCFun "libGL" wglDisableGenlockI3D wglDisableGenlockI3D(hDC::HDC)::Cint
export wglDisableGenlockI3D
@getCFun "libGL" wglIsEnabledGenlockI3D wglIsEnabledGenlockI3D(hDC::HDC, pFlag::Ptr{Bool})::Cint
export wglIsEnabledGenlockI3D
@getCFun "libGL" wglGenlockSourceI3D wglGenlockSourceI3D(hDC::HDC, uSource::Cuint)::Cint
export wglGenlockSourceI3D
@getCFun "libGL" wglGetGenlockSourceI3D wglGetGenlockSourceI3D(hDC::HDC, uSource::Ptr{Cuint})::Cint
export wglGetGenlockSourceI3D
@getCFun "libGL" wglGenlockSourceEdgeI3D wglGenlockSourceEdgeI3D(hDC::HDC, uEdge::Cuint)::Cint
export wglGenlockSourceEdgeI3D
@getCFun "libGL" wglGetGenlockSourceEdgeI3D wglGetGenlockSourceEdgeI3D(hDC::HDC, uEdge::Ptr{Cuint})::Cint
export wglGetGenlockSourceEdgeI3D
@getCFun "libGL" wglGenlockSampleRateI3D wglGenlockSampleRateI3D(hDC::HDC, uRate::Cuint)::Cint
export wglGenlockSampleRateI3D
@getCFun "libGL" wglGetGenlockSampleRateI3D wglGetGenlockSampleRateI3D(hDC::HDC, uRate::Ptr{Cuint})::Cint
export wglGetGenlockSampleRateI3D
@getCFun "libGL" wglGenlockSourceDelayI3D wglGenlockSourceDelayI3D(hDC::HDC, uDelay::Cuint)::Cint
export wglGenlockSourceDelayI3D
@getCFun "libGL" wglGetGenlockSourceDelayI3D wglGetGenlockSourceDelayI3D(hDC::HDC, uDelay::Ptr{Cuint})::Cint
export wglGetGenlockSourceDelayI3D
@getCFun "libGL" wglQueryGenlockMaxSourceDelayI3D wglQueryGenlockMaxSourceDelayI3D(hDC::HDC, uMaxLineDelay::Ptr{Cuint}, uMaxPixelDelay::Ptr{Cuint})::Cint
export wglQueryGenlockMaxSourceDelayI3D
@getCFun "libGL" wglCreateImageBufferI3D wglCreateImageBufferI3D(hDC::HDC, dwSize::DWORD, uFlags::Cuint)::Ptr{Void}
export wglCreateImageBufferI3D
@getCFun "libGL" wglDestroyImageBufferI3D wglDestroyImageBufferI3D(hDC::HDC, pAddress::LPVOID)::Cint
export wglDestroyImageBufferI3D
@getCFun "libGL" wglAssociateImageBufferEventsI3D wglAssociateImageBufferEventsI3D(hDC::HDC, pEvent::HANDLE, pAddress::LPVOID, pSize::Ptr{DWORD}, count::Cuint)::Cint
export wglAssociateImageBufferEventsI3D
@getCFun "libGL" wglReleaseImageBufferEventsI3D wglReleaseImageBufferEventsI3D(hDC::HDC, pAddress::LPVOID, count::Cuint)::Cint
export wglReleaseImageBufferEventsI3D
@getCFun "libGL" wglEnableFrameLockI3D wglEnableFrameLockI3D()::Cint
export wglEnableFrameLockI3D
@getCFun "libGL" wglDisableFrameLockI3D wglDisableFrameLockI3D()::Cint
export wglDisableFrameLockI3D
@getCFun "libGL" wglIsEnabledFrameLockI3D wglIsEnabledFrameLockI3D(pFlag::Ptr{Bool})::Cint
export wglIsEnabledFrameLockI3D
@getCFun "libGL" wglQueryFrameLockMasterI3D wglQueryFrameLockMasterI3D(pFlag::Ptr{Bool})::Cint
export wglQueryFrameLockMasterI3D
@getCFun "libGL" wglGetFrameUsageI3D wglGetFrameUsageI3D(pUsage::Ptr{Cfloat})::Cint
export wglGetFrameUsageI3D
@getCFun "libGL" wglBeginFrameTrackingI3D wglBeginFrameTrackingI3D()::Cint
export wglBeginFrameTrackingI3D
@getCFun "libGL" wglEndFrameTrackingI3D wglEndFrameTrackingI3D()::Cint
export wglEndFrameTrackingI3D
@getCFun "libGL" wglQueryFrameTrackingI3D wglQueryFrameTrackingI3D(pFrameCount::Ptr{DWORD}, pMissedFrames::Ptr{DWORD}, pLastMissedUsage::Ptr{Cfloat})::Cint
export wglQueryFrameTrackingI3D
@getCFun "libGL" wglDXSetResourceShareHandleNV wglDXSetResourceShareHandleNV(dxObject::Ptr{Void}, shareHandle::HANDLE)::Cint
export wglDXSetResourceShareHandleNV
@getCFun "libGL" wglDXOpenDeviceNV wglDXOpenDeviceNV(dxDevice::Ptr{Void})::Ptr{Void}
export wglDXOpenDeviceNV
@getCFun "libGL" wglDXCloseDeviceNV wglDXCloseDeviceNV(hDevice::HANDLE)::Cint
export wglDXCloseDeviceNV
@getCFun "libGL" wglDXRegisterObjectNV wglDXRegisterObjectNV(hDevice::HANDLE, dxObject::Ptr{Void}, name::GLuint, type_::GLenum, access::GLenum)::Ptr{Void}
export wglDXRegisterObjectNV
@getCFun "libGL" wglDXUnregisterObjectNV wglDXUnregisterObjectNV(hDevice::HANDLE, hObject::HANDLE)::Cint
export wglDXUnregisterObjectNV
@getCFun "libGL" wglDXObjectAccessNV wglDXObjectAccessNV(hObject::HANDLE, access::GLenum)::Cint
export wglDXObjectAccessNV
@getCFun "libGL" wglDXLockObjectsNV wglDXLockObjectsNV(hDevice::HANDLE, count::GLint, hObjects::HANDLE)::Cint
export wglDXLockObjectsNV
@getCFun "libGL" wglDXUnlockObjectsNV wglDXUnlockObjectsNV(hDevice::HANDLE, count::GLint, hObjects::HANDLE)::Cint
export wglDXUnlockObjectsNV
@getCFun "libGL" wglCopyImageSubDataNV wglCopyImageSubDataNV(hSrcRC::HGLRC, srcName::GLuint, srcTarget::GLenum, srcLevel::GLint, srcX::GLint, srcY::GLint, srcZ::GLint, hDstRC::HGLRC, dstName::GLuint, dstTarget::GLenum, dstLevel::GLint, dstX::GLint, dstY::GLint, dstZ::GLint, width::GLsizei, height::GLsizei, depth::GLsizei)::Cint
export wglCopyImageSubDataNV
@getCFun "libGL" wglEnumGpusNV wglEnumGpusNV(iGpuIndex::Cuint, phGpu::HGPUNV)::Cint
export wglEnumGpusNV
@getCFun "libGL" wglEnumGpuDevicesNV wglEnumGpuDevicesNV(hGpu::HGPUNV, iDeviceIndex::Cuint, lpGpuDevice::PGPU_DEVICE)::Cint
export wglEnumGpuDevicesNV
@getCFun "libGL" wglCreateAffinityDCNV wglCreateAffinityDCNV(phGpuList::HGPUNV)::Ptr{Void}
export wglCreateAffinityDCNV
@getCFun "libGL" wglEnumGpusFromAffinityDCNV wglEnumGpusFromAffinityDCNV(hAffinityDC::HDC, iGpuIndex::Cuint, hGpu::HGPUNV)::Cint
export wglEnumGpusFromAffinityDCNV
@getCFun "libGL" wglDeleteDCNV wglDeleteDCNV(hdc::HDC)::Cint
export wglDeleteDCNV
@getCFun "libGL" wglEnumerateVideoDevicesNV wglEnumerateVideoDevicesNV(hDC::HDC, phDeviceList::HVIDEOOUTPUTDEVICENV)::Cint
export wglEnumerateVideoDevicesNV
@getCFun "libGL" wglBindVideoDeviceNV wglBindVideoDeviceNV(hDC::HDC, uVideoSlot::Cuint, hVideoDevice::HVIDEOOUTPUTDEVICENV, piAttribList::Ptr{Cint})::Cint
export wglBindVideoDeviceNV
@getCFun "libGL" wglQueryCurrentContextNV wglQueryCurrentContextNV(iAttribute::Cint, piValue::Ptr{Cint})::Cint
export wglQueryCurrentContextNV
@getCFun "libGL" wglJoinSwapGroupNV wglJoinSwapGroupNV(hDC::HDC, group::GLuint)::Cint
export wglJoinSwapGroupNV
@getCFun "libGL" wglBindSwapBarrierNV wglBindSwapBarrierNV(group::GLuint, barrier::GLuint)::Cint
export wglBindSwapBarrierNV
@getCFun "libGL" wglQuerySwapGroupNV wglQuerySwapGroupNV(hDC::HDC, group::Ptr{GLuint}, barrier::Ptr{GLuint})::Cint
export wglQuerySwapGroupNV
@getCFun "libGL" wglQueryMaxSwapGroupsNV wglQueryMaxSwapGroupsNV(hDC::HDC, maxGroups::Ptr{GLuint}, maxBarriers::Ptr{GLuint})::Cint
export wglQueryMaxSwapGroupsNV
@getCFun "libGL" wglQueryFrameCountNV wglQueryFrameCountNV(hDC::HDC, count::Ptr{GLuint})::Cint
export wglQueryFrameCountNV
@getCFun "libGL" wglResetFrameCountNV wglResetFrameCountNV(hDC::HDC)::Cint
export wglResetFrameCountNV
@getCFun "libGL" wglAllocateMemoryNV wglAllocateMemoryNV(size::GLsizei, readfreq::GLfloat, writefreq::GLfloat, priority::GLfloat)::Ptr{Void}
export wglAllocateMemoryNV
@getCFun "libGL" wglBindVideoCaptureDeviceNV wglBindVideoCaptureDeviceNV(uVideoSlot::Cuint, hDevice::HVIDEOINPUTDEVICENV)::Cint
export wglBindVideoCaptureDeviceNV
@getCFun "libGL" wglEnumerateVideoCaptureDevicesNV wglEnumerateVideoCaptureDevicesNV(hDc::HDC, phDeviceList::HVIDEOINPUTDEVICENV)::Cuint
export wglEnumerateVideoCaptureDevicesNV
@getCFun "libGL" wglLockVideoCaptureDeviceNV wglLockVideoCaptureDeviceNV(hDc::HDC, hDevice::HVIDEOINPUTDEVICENV)::Cint
export wglLockVideoCaptureDeviceNV
@getCFun "libGL" wglQueryVideoCaptureDeviceNV wglQueryVideoCaptureDeviceNV(hDc::HDC, hDevice::HVIDEOINPUTDEVICENV, iAttribute::Cint, piValue::Ptr{Cint})::Cint
export wglQueryVideoCaptureDeviceNV
@getCFun "libGL" wglReleaseVideoCaptureDeviceNV wglReleaseVideoCaptureDeviceNV(hDc::HDC, hDevice::HVIDEOINPUTDEVICENV)::Cint
export wglReleaseVideoCaptureDeviceNV
@getCFun "libGL" wglGetVideoDeviceNV wglGetVideoDeviceNV(hDC::HDC, numDevices::Cint, hVideoDevice::HPVIDEODEV)::Cint
export wglGetVideoDeviceNV
@getCFun "libGL" wglReleaseVideoDeviceNV wglReleaseVideoDeviceNV(hVideoDevice::HPVIDEODEV)::Cint
export wglReleaseVideoDeviceNV
@getCFun "libGL" wglBindVideoImageNV wglBindVideoImageNV(hVideoDevice::HPVIDEODEV, hPbuffer::HPBUFFERARB, iVideoBuffer::Cint)::Cint
export wglBindVideoImageNV
@getCFun "libGL" wglReleaseVideoImageNV wglReleaseVideoImageNV(hPbuffer::HPBUFFERARB, iVideoBuffer::Cint)::Cint
export wglReleaseVideoImageNV
@getCFun "libGL" wglSendPbufferToVideoNV wglSendPbufferToVideoNV(hPbuffer::HPBUFFERARB, iBufferType::Cint, pulCounterPbuffer::Ptr{Culong}, bBlock::Bool)::Cint
export wglSendPbufferToVideoNV
@getCFun "libGL" wglGetVideoInfoNV wglGetVideoInfoNV(hpVideoDevice::HPVIDEODEV, pulCounterOutputPbuffer::Ptr{Culong}, pulCounterOutputVideo::Ptr{Culong})::Cint
export wglGetVideoInfoNV
@getCFun "libGL" wglGetSyncValuesOML wglGetSyncValuesOML(hdc::HDC, ust::Ptr{Clonglong}, msc::Ptr{Clonglong}, sbc::Ptr{Clonglong})::Cint
export wglGetSyncValuesOML
@getCFun "libGL" wglGetMscRateOML wglGetMscRateOML(hdc::HDC, numerator::Ptr{Cint}, denominator::Ptr{Cint})::Cint
export wglGetMscRateOML
@getCFun "libGL" wglSwapBuffersMscOML wglSwapBuffersMscOML(hdc::HDC, target_msc::Clonglong, divisor::Clonglong, remainder::Clonglong)::CClonglong
export wglSwapBuffersMscOML
@getCFun "libGL" wglSwapLayerBuffersMscOML wglSwapLayerBuffersMscOML(hdc::HDC, fuPlanes::Cint, target_msc::Clonglong, divisor::Clonglong, remainder::Clonglong)::CClonglong
export wglSwapLayerBuffersMscOML
@getCFun "libGL" wglWaitForMscOML wglWaitForMscOML(hdc::HDC, target_msc::Clonglong, divisor::Clonglong, remainder::Clonglong, ust::Ptr{Clonglong}, msc::Ptr{Clonglong}, sbc::Ptr{Clonglong})::Cint
export wglWaitForMscOML
@getCFun "libGL" wglWaitForSbcOML wglWaitForSbcOML(hdc::HDC, target_sbc::Clonglong, ust::Ptr{Clonglong}, msc::Ptr{Clonglong}, sbc::Ptr{Clonglong})::Cint
export wglWaitForSbcOML
@getCFun "libGL" wglCreateContext wglCreateContext(hDc::HDC)::Ptr{Void}
export wglCreateContext
@getCFun "libGL" wglDeleteContext wglDeleteContext(oldContext::HGLRC)::Cint
export wglDeleteContext
@getCFun "libGL" wglGetCurrentContext wglGetCurrentContext()::Ptr{Void}
export wglGetCurrentContext
@getCFun "libGL" wglMakeCurrent wglMakeCurrent(hDc::HDC, newContext::HGLRC)::Cint
export wglMakeCurrent
@getCFun "libGL" wglCopyContext wglCopyContext(hglrcSrc::HGLRC, hglrcDst::HGLRC, mask::Cuint)::Cint
export wglCopyContext
@getCFun "libGL" wglChoosePixelFormat wglChoosePixelFormat(hDc::HDC, pPfd::PIXELFORMATDESCRIPTOR)::Cint
export wglChoosePixelFormat
@getCFun "libGL" wglGetCurrentDC wglGetCurrentDC()::Ptr{Void}
export wglGetCurrentDC
@getCFun "libGL" wglGetDefaultProcAddress wglGetDefaultProcAddress(lpszProc::LPCSTR)::Ptr{Void}
export wglGetDefaultProcAddress
@getCFun "libGL" wglGetProcAddress wglGetProcAddress(lpszProc::LPCSTR)::Ptr{Void}
export wglGetProcAddress
@getCFun "libGL" wglGetPixelFormat wglGetPixelFormat(hdc::HDC)::Cint
export wglGetPixelFormat
@getCFun "libGL" wglSetPixelFormat wglSetPixelFormat(hdc::HDC, ipfd::Cint, ppfd::PIXELFORMATDESCRIPTOR)::Cint
export wglSetPixelFormat
@getCFun "libGL" wglSwapBuffers wglSwapBuffers(hdc::HDC)::Cint
export wglSwapBuffers
@getCFun "libGL" wglShareLists wglShareLists(hrcSrvShare::HGLRC, hrcSrvSource::HGLRC)::Cint
export wglShareLists
@getCFun "libGL" wglCreateLayerContext wglCreateLayerContext(hDc::HDC, level::Cint)::Ptr{Void}
export wglCreateLayerContext
@getCFun "libGL" wglDescribeLayerPlane wglDescribeLayerPlane(hDc::HDC, pixelFormat::Cint, layerPlane::Cint, nBytes::Cuint, plpd::LAYERPLANEDESCRIPTOR)::Cint
export wglDescribeLayerPlane
@getCFun "libGL" wglSetLayerPaletteEntries wglSetLayerPaletteEntries(hdc::HDC, iLayerPlane::Cint, iStart::Cint, cEntries::Cint, pcr::COLORREF)::Cint
export wglSetLayerPaletteEntries
@getCFun "libGL" wglGetLayerPaletteEntries wglGetLayerPaletteEntries(hdc::HDC, iLayerPlane::Cint, iStart::Cint, cEntries::Cint, pcr::COLORREF)::Cint
export wglGetLayerPaletteEntries
@getCFun "libGL" wglRealizeLayerPalette wglRealizeLayerPalette(hdc::HDC, iLayerPlane::Cint, bRealize::Bool)::Cint
export wglRealizeLayerPalette
@getCFun "libGL" wglSwapLayerBuffers wglSwapLayerBuffers(hdc::HDC, fuFlags::Cuint)::Cint
export wglSwapLayerBuffers
@getCFun "libGL" wglUseFontBitmapsA wglUseFontBitmapsA(hDC::HDC, first::DWORD, count::DWORD, listBase::DWORD)::Cint
export wglUseFontBitmapsA
@getCFun "libGL" wglUseFontBitmapsW wglUseFontBitmapsW(hDC::HDC, first::DWORD, count::DWORD, listBase::DWORD)::Cint
export wglUseFontBitmapsW

end
