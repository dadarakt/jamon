using GLGraphics, OpenGL, GLUT

createWindow(windowPosition=[2000,0])
linkFunctions()


immutable View{T}
	cam::Camera
	area::Shape
	viewable::T
	selection
	representation
end

function updateCursor(textField, x::Int, y::Int)

	advance 	= int(textField.font.advance)
	lineHeight 	= int(textField.font.lineHeight)
	scroll 		= int((_height(textField.area) + textField.scroll) / lineHeight)

	x -= int(_x(textField.area))
	y = int((y - _y(textField.area)))
	x = div(x, int(advance))
	y = int(_height(textField.area) - y)
	y = div(y, lineHeight) + 2 - scroll 

	y::Int = y > length(textField.enrichedText) ? length(textField.enrichedText) : y
	y = y < 1 ? 1 : y
	xHelp = 0
	index = 1

	for word in textField.enrichedText[y]
		xHelp += length(word.text)
		if xHelp >= x
			x = x - (xHelp - length(word.text))
			break
		end
		index += 1
	end
	if index == length(textField.enrichedText[y])
		x = length(textField.enrichedText[y,end])
	end
	textField.cursor = Cursor(y, index, x, [(xHelp)*advance, y*lineHeight])
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
	textField.scroll = textField.scroll + (event.key == 4 ? -textField.font.lineHeight : textField.font.lineHeight)
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

	registerEvent(EventAction{MouseClicked}("MoveCursor", x->(x.key == 0) && inside(textField.area, x.x, x.y), (), (x,tField) -> updateCursor(tField, x.x, x.y), (textField,)))

	registerEvent(EventAction{MouseClicked}("", x->(x.key == 0) && inside(textField.area, x.x, x.y), (), getFocus, (textField,)))
	registerEvent(EventAction{MouseClicked}("", x->(x.key == 0) && ~inside(textField.area, x.x, x.y), (), looseFocus, (textField,)))
end



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