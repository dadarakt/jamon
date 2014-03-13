module GLGraphics
using OpenGL, GLUT
moduleFolder = "GLGraphics/modules/"

global shaderDirectory = "GLGraphics/shader/"

include(moduleFolder*"GLHelperFunctions.jl")
include(moduleFolder*"GLColor.jl")
include(moduleFolder*"GLMatrixMath.jl")
include(moduleFolder*"GLEvent.jl")
include(moduleFolder*"GLShader.jl")
include(moduleFolder*"GLTexture.jl")

include(moduleFolder*"GLBuffer.jl")
include(moduleFolder*"GLShapes.jl")
include(moduleFolder*"GLText.jl")
include(moduleFolder*"GLWindow.jl")


end # Module GLGraphics

using OpenGL, GLUT
