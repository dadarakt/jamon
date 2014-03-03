include("dependencies/OGLUtil.jl")
function resizeFunc(w::GLsizei, h::GLsizei)
    global projMatrix
    glViewport(0, 0, w, h)
    projMatrix = computeOrthographicProjection( 0.0f0, float32(w), 0.0f0, float32(h), -10f0, 10f0)
    return nothing
end

function displayFuncCallback()
	global projMatrix, model, words, textField

    glClear(COLOR_BUFFER_BIT | DEPTH_BUFFER_BIT)

    render(textField)
    render(textField2)
    
    return nothing
end

function editText(event::KeyDown, textField::TextField)
	textField.text = delete(textField.text, textField.cursor)
	if event.key == '\b'
		textField.text = delete(textField.text, textField.cursor)
		textField.cursor -= textField.cursor > 1 ? 1 : 0
	elseif event.key == '\n' || event.key == '\r' || ~iscntrl(event.key)
		println(event.key)
		textField.text = insert(textField.text, event.key, textField.cursor - 1)
		textField.cursor += textField.cursor < length(textField.text) ? 1 : 0
	end
	textField.text = insert(textField.text,'|', textField.cursor)
	textField.enrichedText = enrich(textField.text, JuliaNonBlankSeperators, textField.style) 
end


function moveCursor(event, textField::TextField)
	textField.text = delete(textField.text, textField.cursor)
	if event.key == 101
		i = textField.cursor
		while i > 1 && textField.text[i] != '\n'
			i -= 1
		end
		textField.cursor = i > 1 ? i - 1 : i
	elseif event.key == 103
		i = textField.cursor
		while i <= length(textField.text) && textField.text[i] != '\n'
			i += 1
		end
		textField.cursor = i < length(textField.text) ? i + 1 : i
	elseif event.key == 102
		if textField.cursor < length(textField.text)
			textField.cursor += 1
		end
	elseif event.key == 100
		if textField.cursor > 1
			textField.cursor -= 1
		end
	end
	textField.text = insert(textField.text,'|', textField.cursor)
	textField.enrichedText = enrich(textField.text, JuliaNonBlankSeperators, textField.style) 

end


function scroll(event::MouseClicked, textField::TextField)
	global model
	textField.scroll = textField.scroll + (event.key == 4 ? -10f0 : 10f0)
end
function registerStandartEvents(textField::TextField)
	registerEvent(EventAction{KeyDown}("", x -> inside(textField.area, x.x, x.y) && ~x.special, (), editText, (textField,)))
	registerEvent(EventAction{KeyDown}("", x -> inside(textField.area, x.x, x.y) && x.special, (), moveCursor, (textField,)))
	registerEvent(EventAction{MouseClicked}("", x-> inside(textField.area, x.x, x.y) && (x.key == 3 || x.key == 4), (), scroll, (textField, )))
end




createWindow(name = "Moiiin", windowSize = [1000, 1100], windowPosition = [1950, 20])
linkFunctions()
initUtils()


font 	= AsciiAtlas("dependencies/VeraMono")

fStream = open("enrich.jl")
text = readall(fStream)
close(fStream)

textField = TextField(Rectangle(0f0,0f0,1000f0,500f0, float32([1, 1, 1, 1])), font, juliaStyleDict, text, 1, 0)
textField2 = TextField(Rectangle(0f0,500f0,1000f0,500f0, float32([1, 1, 1, 1])), font, juliaStyleDict, text, 1, 0)
registerStandartEvents(textField)
registerStandartEvents(textField2)


glClearColor(0.9f0, 0.9f0, 0.0f0, 0f0)

glutMainLoop()