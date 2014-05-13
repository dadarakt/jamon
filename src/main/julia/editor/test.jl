using GLWindow, ModernGL, GLUtil, Events, GLText, GLUT
import Images.imread
import Images.Image

createWindow()

include("shapes.jl")

gray1 = Float32[0.3, 0.3, 0.3, 1]
gray2 = Float32[0.2, 0.2, 0.2, 1]
reddish = Float32[1, 0.3, 0.0, 0.5]
lightblue = Float32[0.5, 0.7, 0.9, 1]



style1 = 
[
	:vcolor => Float32[gray1..., gray1..., gray2..., gray2...]
]
style2 = 
[
	:vcolor => Float32[reddish..., reddish..., reddish..., reddish...]
]
style3 = 
[
	:vcolor => Float32[lightblue..., lightblue..., lightblue..., lightblue...]
]

testRect  = Styled(Rectangle(0,500,1000,30), style1)
glDisplay(FuncWithArgs(render, (testRect,)))
t = TextField1D("test", "Projects :> IDE", 20, 505, testRect.shape)




testRect3 = Styled(Rectangle(0, 535, 1000, 1000 - 535), style1)
glDisplay(FuncWithArgs(render, (testRect3,)))
t2 = TextField("test2", readall(open("test.jl")), 20, 970, testRect3.shape)
registerEventAction(EventAction{MouseClicked{0}}(left_click_down, (), (event, t, rect) -> t.hasFocus = inside(rect, event.x, event.y), (t2, testRect3.shape)))




testRect4 = Styled(Rectangle(0, 0, 1000, 495), style3)
glDisplay(FuncWithArgs(render, (testRect4,)))

perspectiveCam = PerspectiveCamera(horizontalAngle = 10f0, verticalAngle = -10f0, position = [0f0, 200f0, 0f0])
registerEventAction(EventAction{WindowResized{1}}(x -> true, (), resize, (perspectiveCam,)))
publishEvent(WindowResized{1}(500,500))
registerEventAction(EventAction{MouseDragged{0}}(middle_click_down_inside, (testRect4.shape,), move, (perspectiveCam,)))
registerEventAction(EventAction{MouseDragged{0}}(right_click_down_inside, (testRect4.shape,), mouseToRotate, (perspectiveCam,)))

texture = imread("test.jpg")

const verts  = zeros(Float32,  size(texture)[2]* size(texture)[3] * 3)
const vcolor = zeros(Float32,  size(texture)[2]* size(texture)[3] * 3)
index = 1
for i = 1:size(texture)[2] , j= 1:size(texture)[3]
	verts[index:index+2]  = [i , j , texture.data[1, i, j] ]
	vcolor[index:index+2] = [texture.data[:, i, j] / 255]
	index += 3
end

image3d_style =
[
	:position		=> GLBuffer(verts, 3),
	:vcolor			=> GLBuffer(vcolor, 3),
	:mvp  			=> perspectiveCam
]

img3d	= RenderObject(image3d_style, GLProgram("gridshader"))

glDisplay("unten", (FuncWithArgs(render2, (img3d,)),))

glutMainLoop()