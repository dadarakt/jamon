module OpenGL
using GLUT
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

render(a::Any) = error("No render function for this type: $(typeof(a))")
export render

function glGetIntegerv(variable::Uint16)
    result::Ptr{GLint} = int32([-1])
    glGetIntegerv(uint32(variable), result)
    unsafe_load(result)
end
function glGenBuffers()
    result::Ptr{GLuint} = uint32([0])
    glGenBuffers(1, result)
    id = unsafe_load(result)
    if id <=0 
        error("glGenBuffers returned invalid id. OpenGL Context active?")
    end
    id
end
function glGenVertexArrays()
    result::Ptr{GLuint} = uint32([0])
    glGenVertexArrays(1, result)
    id = unsafe_load(result)
    if id <=0 
        error("glGenVertexArrays returned invalid id. OpenGL Context active?")
    end
    id
end
function glGenTextures()
    result::Ptr{GLuint} = uint32([0])
    glGenTextures(uint64(1), result)
    id = unsafe_load(result)
    if id <=0 
        error("glGenVertexArrays returned invalid id. OpenGL Context active?")
    end
    id
end

end


