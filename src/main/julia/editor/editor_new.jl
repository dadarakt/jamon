using GLWindow, ModernGL, GLUtil, Events, GLText, GLUT
import GLUtil.render

scroll(event, t) = t.y += event.key == 4 ? -40 : 40


function deleteChar(event::KeyDown, t::TextField)
	i = first(t.selection)
	if length(t.selection) > 0
		t.text = t.text[chr2ind(t.text, i):chr2ind(t.text, last(t.selection))]
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
		t.text = t.text[chr2ind(t.text, i):chr2ind(t.text, last(t.selection))]
	end
	if i >= 1 && i < length(t.text)
		lastI = chr2ind(t.text, i)
		startI = lastI + (isascii(t.text[lastI]) ? 1 : 2)
		a = t.text[1:lastI]
		b = t.text[startI:end]
	elseif i >= 1 && i == length(t.text)
		a = t.text
	elseif i == 0
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

function select(event::MouseDragged, t::TextField, f::FontProperties)
	changed, startSelection = select(event.start.x, event.start.y, t, f)
	changed, endSelection 	= select(event.x, event.y, t, f)
	if changed
		t.selection = min(first(startSelection),first(endSelection)):max(first(startSelection),first(endSelection))
	end
end
function select(x::Real, y::Real, t::TextField, f::FontProperties)
	# is x, y inside the textfield?
	if y <= t.y + f.lineHeight && y >= t.y - f.lineHeight * length(t.newLineIndexes)
		#convert into Glyph coordinates
		lineIndex		= max(min(div(t.y + f.lineHeight - y, f.lineHeight) + 1, length(t.newLineIndexes)), 1)
		line 			= t.newLineIndexes[lineIndex]
		xPosCursor::Int	= max(min(div(x - t.x, f.advance) + first(line), last(line)), 0)
		return (true, xPosCursor:xPosCursor-1)
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
		currentLine = first(currentLine)-1:last(currentLine)
		newLine 	= currentLineIndex
		newIndex    = cursor - first(currentLine)
		if direction == "left"
			if newIndex > 0
				newIndex -= 1
			else
				if newLine > 1
					newLine -= 1
					newIndex = length(t.newLineIndexes[newLine])
				end
			end
		elseif direction == "right"
			
			if newIndex < length(currentLine) - 1
				newIndex += 1
			else
				if newLine < length(t.newLineIndexes)
					newLine += 1
					newIndex = 0
				end
			end
		elseif direction == "up"
			if newLine > 1
				newLine -= 1
				newIndex = min(newIndex, length(t.newLineIndexes[newLine]))
			end
		elseif direction == "down"
			if newLine < length(t.newLineIndexes)
				newLine += 1
				newIndex = min(newIndex, length(t.newLineIndexes[newLine]))
			end
		end
		currentLine = t.newLineIndexes[newLine]
		newIndex 	= first(currentLine) - 1 + newIndex
		return newIndex:newIndex-1
	end
	t.selection
end





createWindow()

font 	= getFont()
text 	= (join([i for i=0:9],"")*"\n")^10
t 		= TextField(text, 10, 500)

registerEventAction(EventAction{KeyDown{0}}(x -> !x.special && x.key == '\b', (), deleteChar, (t,)))
registerEventAction(EventAction{KeyDown{0}}(x -> !x.special && isprint(x.key), (), addChar, (t,)))
registerEventAction(EventAction{KeyDown{0}}(x -> x.special && x.key == '\n' || x.key == '\r', (), newLine, (t,)))

registerEventAction(EventAction{MouseClicked{0}}(x -> x.key == 0 && x.status == 0, (), select, (t, font.properties)))
registerEventAction(EventAction{KeyUp{0}}(
	x -> x.special && (x.key == GLUT_KEY_UP || x.key == GLUT_KEY_DOWN || x.key == GLUT_KEY_RIGHT || x.key == GLUT_KEY_LEFT),
	(), select, (t, font.properties)))

registerEventAction(EventAction{MouseDragged{0}}(x -> true, (), select, (t, font.properties)))


function DisplayTextField(t::TextField, f::GLFont)
	render(f.gl)
	render(t, f)
end


glDisplay(FuncWithArgs(DisplayTextField, (t, font)))

glutMainLoop()