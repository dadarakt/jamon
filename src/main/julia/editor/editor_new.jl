using GLWindow, ModernGL, GLUtil, Events, GLText, GLUT
import GLUtil.render

scroll(event, t) = t.y += event.key == 4 ? -40 : 40


function deleteChar(event::KeyDown, t::TextField)
	i = first(t.selection)
	println(i)
	if length(t.selection) > 0
		text = text[chr2ind(i):chr2ind(last(t.selection))]
	end
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
	t.selection = i-1:1-2
	t.text = a * b
	update(t)
end
function newLine(event::KeyDown, t::TextField)
	addChar(event::KeyDown, t::TextField)

end
function addChar(event::KeyDown, t::TextField)
	a = ""
	b = ""
	i = first(t.selection)
	if length(t.selection) > 0
		text = text[chr2ind(i):chr2ind(last(t.selection))]
	end
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
	t.selection = i+1:i

	update(t)
end

function update(t::TextField)
	t.newLineIndexes 	= buildNewLineIndexes(t.text)
	defaultStyle 		= Dict{ASCIIString, Any}(["textColor" => Float32[0,0,0,1], "backgroundColor" => Float32[0,0,0,0]])
	t.styles 			= [StyledTextSegment(1:length(t.text), defaultStyle)]
end


function select(event::MouseClicked, t::TextField, f::FontProperties)
	changed, newSelection = select(event.x, event.y, t, f)
	if changed
		t.selection = newSelection
	end
end
function select(x::Real, y::Real, t::TextField, f::FontProperties)
	# is x, y inside the textfield?
	if t.y <= y && t.y + f.lineHeight * length(t.newLineIndexes) >= y
		#convert into Glyph coordinates
		lineIndex		= div(y - t.y, f.lineHeight)
		line 			= t.newLineIndexes[lineIndex]
		xPosCursor 		= min(div(x - t.x, f.advance) + first(line), last(line))
		return (true, xPosCursor)
	end
	return (false, 1:0)
end

function select(event::KeyUp, t::TextField, f::FontProperties)
	if event.key ==GLUT_KEY_LEFT
		direction = "left"
	elseif event.key == GLUT_KEY_RIGHT
		direction = "right"
	elseif event.key == GLUT_KEY_UP
		direction = "up"
	elseif event.key == GLUT_KEY_DOWN
		direction = "down"
	end
	t.selection = select(direction, t, f)
end




function select(direction::ASCIIString, t::TextField, f::FontProperties)
	if !isempty(t.text)
		cursor = first(t.selection)
		currentLineIndex, currentLine = findLine(t.newLineIndexes, cursor)
		newLine 	= currentLineIndex
		newIndex    = cursor - first(currentLine)

		if direction == "left"
			if newIndex < 1
				newLine -= 1
				if newLine < 1
					newIndex = 1
				end
			end
			newIndex -= 1
		elseif direction == "right"
			if newIndex >= length(currentLine)
				newLine += 1
				if newLine <= length(t.newLineIndexes)
					newIndex = 0
				end
			end
			newIndex += 1
		elseif direction == "up"
			newLine -= 1
		elseif direction == "down"
			newLine += 1
		end
		newLine 	= max(min(newLine, length(t.newLineIndexes)), 1)
		currentLine = t.newLineIndexes[newLine]
		newIndex	= max(min(newIndex + first(currentLine), last(currentLine)), 0)
		return newIndex:newIndex-1
	end
	t.selection
end
createWindow()

font 	= getFont()
text 	= "asdökljaskjd\nasldkaslkd\jaskdjasd\nlsdkasdlkasd"
t 		= TextField(text, 10, 500)

registerEventAction(EventAction{KeyDown{0}}(x -> !x.special && x.key == '\b', (), deleteChar, (t,)))
registerEventAction(EventAction{KeyDown{0}}(x -> !x.special && isprint(x.key), (), addChar, (t,)))
registerEventAction(EventAction{KeyDown{0}}(x -> x.special && x.key == '\n' || x.key == '\r', (), newLine, (t,)))

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