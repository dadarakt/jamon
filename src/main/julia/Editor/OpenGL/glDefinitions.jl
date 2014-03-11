glutInit()
glutInitDisplayMode(GLUT_RGB)
glutInitWindowPosition(0, 0)
glutInitWindowSize(1,1)
glutCreateWindow("dummy")
glutHideWindow()



include("glParse/GLParse.jl")
include("OpenGL/gl33.jl")
include("OpenGL/glCommon.jl")


declareGLTypes(GL_COMMON_TYPES)
declareGLFunction(GL_COMMON_FUNCTIONS)
declareGLConstant(GL_COMMON_CONSTANTS)
declareGLConstant(GL_GL33_CONSTANTS)
declareGLFunction(GL_GL33_FUNCTIONS)


