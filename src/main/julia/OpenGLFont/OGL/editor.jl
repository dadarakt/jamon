include("dependencies/OGLUtil.jl")
function resizeFunc(w::GLsizei, h::GLsizei)
    global projMatrix
    glViewport(0, 0, w, h)
    projMatrix = computeOrthographicProjection( 0.0f0, float32(w), 0.0f0, float32(h), -10f0, 10f0)
    return nothing
end

function displayFuncCallback()
	global projMatrix, model, words, textField, mouseCursor

    glClear(COLOR_BUFFER_BIT | DEPTH_BUFFER_BIT)

    render(textField)
    render(textField2)

    return nothing
end

function updateCursor(textField, x::Int, y::Int)
	advance 	= textField.font.advance
	lineHeight 	= textField.font.lineHeight
	scroll 		= textField.scroll
end


function editText(event::KeyDown, textField::TextField)
	if event.key == '\b'
		textField.text = delete(textField.text, textField.cursor)
		textField.cursor -= textField.cursor > 1 ? 1 : 0
	elseif event.key == '\n' || event.key == '\r' || ~iscntrl(event.key)
		textField.text = insert(textField.text, event.key, textField.cursor - 1)
		textField.cursor += textField.cursor < length(textField.text) ? 1 : 0
	end
	textField.enrichedText = enrich(textField.text, JuliaNonBlankSeperators, textField.style) 
end


function moveCursor(event, textField::TextField)
	if event.key == 101 #up arrow
		i = textField.cursor
		while i > 1 && textField.text[i] != '\n'
			i -= 1
		end
		textField.cursor = i > 1 ? i - 1 : i
	elseif event.key == 103 #down arrow
		i = textField.cursor
		while i <= length(textField.text) && textField.text[i] != '\n'
			i += 1
		end
		textField.cursor = i < length(textField.text) ? i + 1 : i
	elseif event.key == 102 #right arrow
		if textField.cursor < length(textField.text)
			textField.cursor += 1
		end
	elseif event.key == 100 #left arrow
		if textField.cursor > 1
			textField.cursor -= 1
		end
	end
end


function scroll(event::MouseClicked, textField::TextField)
	textField.scroll = textField.scroll + (event.key == 4 ? -10f0 : 10f0)
	textField.cursor.draw.transformations[2,4] -= (event.key == 4 ? -10f0 : 10f0)
end
function getFocus(event::MouseClicked, textField::TextField)
	newColor = deepcopy(textField.area)
	newColor.color[1:end] = float32([1.0,0.95,0.96,1.0])
	textField.area = newColor
	textField.focus = true
end
function looseFocus(event::MouseClicked, textField::TextField)
	newColor = deepcopy(textField.area)
	newColor.color[1:end] = float32([1.0,1.0,1.0,1.0])
	textField.area = newColor
	textField.focus = false
end
function registerStandartEvents(textField::TextField)
	registerEvent(EventAction{KeyDown}("", x -> textField.focus && ~x.special, (), editText, (textField,)))
	registerEvent(EventAction{KeyDown}("", x -> textField.focus && x.special, (), moveCursor, (textField,)))
	registerEvent(EventAction{MouseClicked}("", x-> inside(textField.area, x.x, x.y) && (x.key == 3 || x.key == 4), (), scroll, (textField, )))

	registerEvent(EventAction{MouseClicked}("", x->(x.key == 0) && inside(textField.area, x.x, x.y), (), getFocus, (textField,)))
	registerEvent(EventAction{MouseClicked}("", x->(x.key == 0) && ~inside(textField.area, x.x, x.y), (), looseFocus, (textField,)))
end

createWindow(name = "Moiiin", windowSize = [1000, 1000], windowPosition = [1950, 20])
linkFunctions()
initUtils()


font 	= AsciiAtlas("dependencies/VeraMono")

fStream = open("enrich.jl")
text = readall(fStream)
close(fStream)

textField = TextField(Rectangle(5f0,5f0,990f0,490f0, float32([1, 1, 1, 1])), font, juliaStyleDict, text,  0)
textField2 = TextField(Rectangle(5f0,505f0,990f0,490f0, float32([1, 1, 1, 1])), font, juliaStyleDict, text,  0)
registerStandartEvents(textField)
registerStandartEvents(textField2)

global mouseCursor = [0,0]

registerEvent(EventAction{MouseMoved}("", x-> true, (), x -> (mouseCursor[1] = x.x; mouseCursor[2] = x.y), ()))


glClearColor(0.2f0, 0.2f0, 0.2f0, 0.2f0)

glutMainLoop()