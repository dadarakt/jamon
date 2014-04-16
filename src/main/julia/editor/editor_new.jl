using GLWindow, ModernGL, GLUtil, Events, GLText, GLUT
import GLUtil.render

scroll(event, t) = t.y += event.key == 4 ? -40 : 40


function deleteChar(event::KeyDown, t::TextField)
	i = (start(t.cursor))
	Imin1 = chr2ind(t.text, i - 1)
	I = Imin1 + (isascii(t.text[Imin1]) ? 1 : 2)

	if i > 1 && i < length(t.text)
		IPlus1 	= I + (isascii(t.text[I]) ? 1 : 2)
		a = t.text[1:Imin1]
		b = t.text[IPlus1:end]
	elseif i == 1 && i < length(t.text)
		IPlus1 	= I + (isascii(t.text[I]) ? 1 : 2)
		a = ""
		b = t.text[IPlus1:end]
	elseif i >= 1 && i == length(t.text)
		a = t.text[1:Imin1]
		b = ""
	elseif i == 1 && length(t.text) == 1
		a = ""
		b = ""
	end
	if t.text[I] == '\r' || t.text[I] == '\n'
		t.lines -= 1
	end
	t.text = a * b
	t.cursor -= i > 0 ? 1 : 0
	update(t)
end

function addChar(event::KeyDown, t::TextField)
	b = ""
	a = ""
	i = t.cursor

	if i >= 1 && i < length(t.text)
		lastI = chr2ind(t.text, i)
		startI = lastI + (isascii(t.text[lastI]) ? 1 : 2)
		a = t.text[1:lastI]
		b = t.text[startI:end]
	elseif i >= 1 && i == length(t.text)
		a = t.text
	elseif t.cursor == 0
		b = t.text
	end

	t.text = a * string(event.key) * b

	t.cursor += 1
	update(t)
end


function update(t::TextField)
	defaultStyle 	= Dict{ASCIIString, Any}(["textColor" => Float32[0,0,0,1], "backgroundColor" => Float32[0,0,0,0]])
	t.styles 		= [StyledTextSegment(1:length(t.text), defaultStyle)]
end

function BoundingBox(t::TextField, f::FontProperties)
	maxLineLength = 0
	runner = 0
	for elem in t.text
		if elem == '\n' || elem == '\r'
			if runner > maxLineLength
				maxLineLength = runner
			end
			runner = 0
		else
			runner += 1
		end
	end
	Rectangle(t.x, t.y, maxLineLength * f.advance, t.lines * f.lineHeight)
end

function select(event::MouseClicked, t::TextField, f::FontProperties)
	
	if t.y <= event.y && event.y <= t.y + f.lineHeight * length(t.newLineIndexes)
		line = div(event.y - t.y, f.lineHeight) + 1
		xPosCursor = div(event.x - t.x, f.advance)
		lineCount = 1
		state = start(t.text)
		index = 0
		index2 = 0
		while !done(t.text, state)
			elem, state = next(t.text, state)
			if elem == '\n' || elem == '\r'
				lineCount += 1
			else
				if lineCount < line
					index += 1 
				elseif lineCount == line
					index2 += 1
				else
					break;
				end
			end
		end
		t.cursor = index2 > xPosCursor ? index + xPosCursor : index + index2
	end
end
function select(event::KeyUp, t::TextField, f::FontProperties)
	currentLine
	if event.key == GLUT_KEY_LEFT
		if 
	elseif event.key == GLUT_KEY_RIGHT
	elseif event.key == GLUT_KEY_UP
	elseif event.key == GLUT_KEY_DOWN
	end
	if t.y <= event.y && event.y <= t.y + f.lineHeight * t.lines
		line = div(event.y - t.y, f.lineHeight) + 1
		xPosCursor = div(event.x - t.x, f.advance)
		lineCount = 1
		state = start(t.text)
		index = 0
		index2 = 0
		while !done(t.text, state)
			elem, state = next(t.text, state)
			if elem == '\n' || elem == '\r'
				lineCount += 1
			else
				if lineCount < line
					index += 1 
				elseif lineCount == line
					index2 += 1
				else
					break;
				end
			end
		end
		t.cursor = index2 > xPosCursor ? index + xPosCursor : index + index2
	end
end
createWindow()

font 	= getFont()
text 	= string(char(196))
t 		= TextField(text, 10, 500)

registerEventAction(EventAction{KeyDown{0}}(x -> !x.special && x.key == '\b', (), deleteChar, (t,)))
registerEventAction(EventAction{KeyDown{0}}(x -> !x.special && isprint(x.key), (), addChar, (t,)))

registerEventAction(EventAction{MouseClicked{0}}(x -> x.key == 0, (), select, (t, font.properties)))
registerEventAction(EventAction{KeyUp{0}}(
	x -> x.special && (x.key == GLUT_KEY_UP || x.key == GLUT_KEY_DOWN || x.key == GLUT_KEY_RIGHT || x.key == GLUT_KEY_LEFT),
	(), select, (t, font.properties)))


function DisplayTextField(t::TextField, f::GLFont)
	render(f.gl)
	render(t, f)
end


glDisplay(FuncWithArgs(DisplayTextField, (t, font)))

glutMainLoop()