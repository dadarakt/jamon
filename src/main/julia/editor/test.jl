using GLWindow, ModernGL, GLUtil, Events, GLText, GLUT, Images
import GLUtil.resize

createWindow(windowSize          = Cint[1000,800])

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
t = TextField1D("test", "Projects :> image1", 20, 505, testRect.shape)




testRect3 = Styled(Rectangle(0, 535, 1000, 1000 - 535), style1)
glDisplay(FuncWithArgs(render, (testRect3,)))
t2 = TextField2D("test2", readall(open("example_code.jl")), 20, 970, testRect3.shape)
registerEventAction(EventAction{MouseClicked{0}}(left_click_down, (), (event, t, rect) -> t.hasFocus = inside(rect, event.x, event.y), (t2, testRect3.shape)))



untenRect = Rectangle(0, 0, 1000, 495)
testRect4 = Styled(untenRect, style3)
glDisplay(FuncWithArgs(render, (testRect4,)))

perspectiveCam = PerspectiveCamera(horizontalAngle = deg2rad(180f0), verticalAngle = deg2rad(0f0), position = Float32[600, 600, 800])
registerEventAction(EventAction{WindowResized{1}}(x -> true, (), resize, (perspectiveCam,)))
publishEvent(WindowResized{1}(500,500))
registerEventAction(EventAction{MouseDragged{0}}(middle_click_down_inside, (testRect4.shape,), move, (perspectiveCam,)))
registerEventAction(EventAction{MouseDragged{0}}(right_click_down_inside, (testRect4.shape,), mouseToRotate, (perspectiveCam,)))



imgStyle2 = 
[
	:vcolor => Float32[gray1..., gray1..., gray2..., gray2...],
	:bgtexture		=> Texture("settings.png"),
	:textureon		=> 1f0
]
settings = Styled(Rectangle(0,0,500,500), imgStyle2)

global IS3D = false

function updaterender(event, t)
	global IS3D
	IS3D = !IS3D
	change_pictures(TextFieldUpdated{0}(t))
end


registerEventAction(EventAction{MouseClicked{0}}((event, rect) -> inside(rect, event.x, event.y) && event.status == 0, (settings.shape, ), updaterender, (t, )))

glDisplay(FuncWithArgs(render, (settings,)))




function create3DImage(texture)

	const verts  = zeros(Float32,  size(texture)[2]* size(texture)[3] * 3)
	const vcolor = zeros(Float32,  size(texture)[2]* size(texture)[3] * 3)

	r = reshape(texture.data[1,:,:], size(texture)[2:end]...)
	g = reshape(texture.data[2,:,:], size(texture)[2:end]...)
	b = reshape(texture.data[3,:,:], size(texture)[2:end]...)
	index = 1
	for y= 1:size(texture)[2]
		tmpR = reverse(vec(r[y,:]))
		tmpG = reverse(vec(g[y,:]))
		tmpB = reverse(vec(b[y,:]))

		for x= 1:length(tmpR)
			verts[index:index+2]  = [y , x * 2, tmpR[x]]
			vcolor[index:index+2] = float32([tmpR[x], tmpG[x], tmpB[x]] / 255)
			index += 3
		end
	end

	image3d_style =
	[
		:position		=> GLBuffer(verts, 3),
		:vcolor			=> GLBuffer(vcolor, 3),
		:mvp  			=> perspectiveCam
	]

	RenderObject(image3d_style, GLProgram("gridshader"))
end

function rect_percent_constraint(event, rect, x, y, w, h)
	rect.x = int(event.w * x)
	rect.y = int(event.h * y)

	rect.w = int(event.w * w)
	rect.h = int(event.h * h)
	republishEvent(event, 2)
end

function rect_textfield_constraint(event, t, rect)
	t.x = rect.x + 20
	t.y = rect.y + rect.h - 40
end



registerEventAction(EventAction{WindowResized{0}}(x -> true, (), rect_percent_constraint, (testRect3.shape, 0, 0.6, 1, 0.4)))
registerEventAction(EventAction{WindowResized{0}}(x -> true, (), rect_percent_constraint, (testRect.shape, 0, 0.51, 1, 0.08)))
registerEventAction(EventAction{WindowResized{0}}(x -> true, (), rect_percent_constraint, (untenRect, 0, 0, 1, 0.5)))
registerEventAction(EventAction{WindowResized{0}}(x -> true, (), rect_percent_constraint, (settings.shape, 1-0.08, 0.51, 0.08, 0.08)))


registerEventAction(EventAction{WindowResized{2}}(x -> true, (), rect_textfield_constraint, (t, testRect.shape)))
registerEventAction(EventAction{WindowResized{2}}(x -> true, (), rect_textfield_constraint, (t2, testRect3.shape)))



img = imread("test.jpg")
img1 = copy(img, uint8(imfilter_gaussian(img, [0,3,3]).data))
img2 = imfilter(img1, [0 1 0; 1 -4 1; 0 1 0])
img2 = copy(img, uint8(255 .+ img2))
img3 = copy(img, uint8(imfilter_gaussian(img2, [0,6,6]).data))


image1 = Texture(img)
image2 = Texture(img1)
image3 = Texture(img2)
image4 = Texture(img3)

image1d = create3DImage(img)
image2d = create3DImage(img1)
image3d = create3DImage(img2)
image4d = create3DImage(img3)


imgStyle1 = 
[
	:bgtexture		=> Texture("settings.png"),
	:textureon		=> 1f0
]
imgRect = Styled(untenRect, imgStyle1)




function TextFieldNoEdit(id::String, text::String, x, y, area::Shape)
	font 	= getfont()

	text 	= replace(text, r"\n|\r", "")
	t 		= TextField(id, text, x, y, area)
	registerEventAction(EventAction{WindowResized{2}}(x -> true, (), rect_textfield_constraint, (t, area)))

	t
end
textType = TextFieldNoEdit("unten", "", 0,0, untenRect)



function reprType(x::DataType)
	tname = isimmutable(x) ? "immutable" : "type"
	name = string(x)
	params = isempty(x.parameters) ? "" : "{"*string(x.parameters)*"}"
	super = "<: " * string(x.super)
	fields = ""
	for elem in zip(x.names, x.types)
		fields *= "   " * string(elem[1]) * "::" * string(elem[2]) * "\n"
	end
	utf8(tname * " " * name * " " * params * " " * super * "\n" * fields * "end")
end

function change_pictures(event)
	var = split(event.textfield.text, r"\n|\r|(:>)| ")[end]
	if IS3D
		var = var * "d"
	end
	var = symbol(var)
	if isdefined(var)
		texture = eval(parse(string(var)))
		if isa(texture, Texture)
			imgRect.styles[:bgtexture] = texture
			glDisplay("unten", (imgRect,))
		elseif isa(texture, RenderObject)
			glDisplay("unten", (FuncWithArgs(render2, (texture, untenRect)),))
		elseif isa(texture, DataType)
			textType.text = (reprType(texture))
			update(textType)
			glDisplay("unten", (textType, getfont()))
		end
	end
end

glDisplay("unten", (FuncWithArgs(render2, (image3d, untenRect)),))

registerEventAction(EventAction{TextFieldUpdated{0}}(x -> x.textfield.id == "test", (), change_pictures, ()))


publishEvent(TextFieldUpdated{0}(t))


glutMainLoop()