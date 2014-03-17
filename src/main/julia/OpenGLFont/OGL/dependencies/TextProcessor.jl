using PatternDispatch, Match





function processText(text::String, lineLength::Int)
	@assert lineLength > 0

	textProcessed = Array(Array{Char,1}, 0)
	line = Array(Char, lineLength)
	fill!(line, ' ')
	cell = 1
	styles = [Style()]

	for character in text
		if cell % lineLength == 0 || character == '\n'
			push!(textProcessed, deepcopy(line))
			fill!(line, ' ')
			cell = 1
		end
		if isascii(character) && !iscntrl(character)
			if isblank(character)
			line[cell] = char(character)
			cell = cell + 1
		end
	end

	result = Array(Char, size(textProcessed,1), lineLength)
	line = 1
	for elem in textProcessed
		result[line, 1:end] = elem
		line = line + 1
	end
	result
end
function isActive(s::Style, currentLine::Integer, currentCell::Integer)
	s.start[1] <= currentLine &&
	s.start[2] < currentCell &&
	s.ending[1] >= currentLine &&
	s.ending[2] > currentCell
end

function findActiveStyle(s::Array{Style,1}, currentLine::Integer, currentCell::Integer)
	i = 1
	minDistCell = 9999999
	minDistLine = 9999999
	minIndex = 1
	for elem in s
		if elem.ending[1] <= currentLine && elem.ending[2] <= currentCell
			splice!(s, i)
		elseif elem.start[1] <= currentLine && elem.start[2] <= currentCell
			if	elem.start[1] - currentLine  < minDistLine
				if elem.ending[2] - currentCell < minDistCell 
					minDistLine = elem.start[1] - currentLine
					minDistCell = elem.start[2] - currentCell 
					minIndex = i
				end
			end
		end
		i = i + 1
	end 
	if minIndex > length(s)
		return Style(), 9999999, 9999999
	end

	endingLine = s[minIndex].ending[1]
	endingCell = s[minIndex].ending[2]

	if minIndex < length(s)
		if s[minIndex].ending[1] >= s[minIndex + 1].start[1]
			endingLine = s[minIndex + 1].start[1]
			endingCell = s[minIndex + 1].start[2]
		end
	end
	s[minIndex], endingLine, endingCell
end