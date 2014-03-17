
#####################################################################################################
#####################################################################################################

juliaAttributeDict = [
	"for" 		=> (["for"], ["for"], []), 
	"\"" 		=> (["\""], ["\""], ["\""]),
	"end" 		=> (["end"], [], ["\"", "function", "for", "if", "else", "begin", "quote"])
]
juliaColorDict = [
	"for" 		=> [0.5f0, 0.8f0, 0.3f0], 
	"if" 		=> [0.2f0, 0.8f0, 0.5f0], 
	"end" 		=> [0.5f0, 0.1f0, 0.3f0], 
	"in" 		=> [0.0f0, 0.1f0, 0.5f0], 
	"begin" 	=> [0.5f0, 0.1f0, 0.3f0], 
	"in" 		=> [0.0f0, 0.1f0, 0.5f0],
	"\$" 		=> [0.9f0, 0.2f0, 0.01f0],
	"function" => [0.6f0, 0.3f0, 0.2f0],
	"include" 	=> [0.1f0, 0.9f0, 0.2f0],
	"using" 	=> [0.2f0, 0.9f0, 0.2f0],
	"global" 	=> [0.8f0, 0.1f0, 0.2f0],
	"\"" 		=> [0.9f0, 0.1f0, 0.1f0]]


JuliaKeywords = ["function", "end", "begin", "abstract", "type", "if", "else", "elseif", "in", "for", "return", "using", "include"]
specialChar = [string(char(i)) for i=[33:47, 58:64, 91:94, 123:126]]
equals = [i * "=" for i=["+", "-", "/", "\\", "*", "<", ">", "^", "!", "|", "%", "="]]
rest = ["::", "||", "&&", "=>", "...", "|>", "\n"]
JuliaNonBlankSeperators = Set(specialChar..., equals..., rest...)


function matchTokens(buffer::ASCIIString, tokens, tokensFound)
	if ~isempty(buffer)
		if isempty(tokensFound)
			@assert length(buffer) == 1
			for token in tokens
				if token[1] == buffer[1]
					push!(tokensFound, token)
				end
			end
		else
			tokensFoundTmp 	= fill("", 0)
			previousMatch 	= ""
			@assert length(buffer) > 1
			for token in tokensFound 
				
				if (length(token) >= length(buffer) && token[length(buffer)] == buffer[end])
					push!(tokensFoundTmp, token)
				elseif length(token) == length(buffer) - 1
					previousMatch = token
				end
			end
			tokensFound = tokensFoundTmp
			if isempty(tokensFound) && previousMatch != ""
				nextBuff = string(buffer[end])
				for token in tokens
					if token[1] == nextBuff[1]
						push!(tokensFound, token)
					end
				end
				return true, previousMatch, string(buffer[end]), tokensFound
			end
		end
		if isempty(tokensFound)
			return false, "", buffer, tokensFound
		elseif length(tokensFound) > 1
			return false, buffer, "", tokensFound
		elseif length(tokensFound) == 1 && length(tokensFound[1]) == length(buffer)
			empty!(tokensFound)
			return true, buffer, "", tokensFound
		end
	end
	return false, "", "", fill("", 0)
end

function enrich(text, seperatorTokens)	
	enriched 		= fill("", 0)
	tokensFound 	= fill("", 0)
	blanks 			= ""
	currentWord 	= ""
	seperator 		= ""
	for char in text
		if char == '\t' || char == ' '
			if isempty(blanks)
				~isempty(currentWord) && push!(enriched, currentWord)
				currentWord = ""
			end
			blanks = blanks * string(char)
		else
			if ~isempty(blanks)
				push!(enriched, "|"^length(blanks))
				blanks = ""
			end
			seperator *= string(char)
			found, seperator, currentWordTmp, tokensFound = matchTokens(seperator, seperatorTokens, tokensFound)
			if found
				~isempty(currentWord) && push!(enriched, currentWord)
				push!(enriched, seperator)
				currentWord = ""
				seperator = currentWordTmp
				if ~isempty(seperator) && isempty(tokensFound)
					seperator = "" 
					currentWord *= currentWordTmp
				end
			else
				currentWord *= currentWordTmp
			end
		end
	end
	enriched
end


#####################################################################################################
#####################################################################################################

type GLWordNode
	transform::Array{Float32, 2}
	color::Array{Float32, 1}
	index::(Int, Int)
end

function displayFuncCallback()
	global projMatrix, model, words

    glEnable(BLEND)
    glBlendFunc(SRC_ALPHA, ONE_MINUS_SRC_ALPHA)

    glClear(COLOR_BUFFER_BIT | DEPTH_BUFFER_BIT)
    glUseProgram(p.id)

	glBindVertexArray(vetexArrayID)
 	for word in words
		glUniformMatrix4fv(glGetUniformLocation(p.id, "mvp"),  1, FALSE, reshape(projMatrix * model * word.transform, 16))
		glUniform3f(glGetUniformLocation(p.id, "textColor"), word.color...)
		glDrawArrays(TRIANGLES, word.index[1] * 6, word.index[2] * 6)
	end

    return nothing
end



createWindow(name = "Moiiin", windowSize = [1000, 1100], windowPosition = [1950, 20])
linkFunctions()
glEnable(DEPTH_TEST)
glEnable(MULTISAMPLE)
glClearColor(0.9f0, 0.9f0, 0.9f0, 1.0f0)



p  		= Program("color")
font 	= AsciiAtlas("dependencies/VeraMono")

fStream = open("enrich.jl")
text = readall(fStream)
close(fStream)

enriched = enrich(text, JuliaNonBlankSeperators)

global words = Array(GLWordNode, 0)
flattenedText = ""

xAdvance = 0
xShift = 0
xIndex = 0
lineAdvance = 0

for word in enriched
	if word == "\n"
		lineAdvance += 1
		xShift = -xIndex
	else
		transform = eye(Float32, 4,4)
		transform[1,4] = xShift * font.advance
		transform[2,4] = 500 - (lineAdvance *  (font.lineHeight + 30))
		push!(words, GLWordNode(transform, get(juliaColorDict, word, [0f0,0f0,0f0]), (xIndex, length(word))))
		flattenedText 	*= word
		xIndex 			+= length(word)
	end
end

verts 	= GLBuffer(STATIC_DRAW, ARRAY_BUFFER, TRIANGLES,  createQuadStrip(0f0, 0f0, 0f0, font.advance, font.lineHeight, length(flattenedText)))
uv 		= GLBuffer(DYNAMIC_DRAW, ARRAY_BUFFER, LINE_STRIP,  mapreduce(
			theChar -> get(font.dictionary, theChar, zeros(GLfloat, 6*2)), 
			vcat, 
			flattenedText))


println(verts.size)
vetexArrayID = glGenVertexArray()
glBindVertexArray(vetexArrayID)
glBindBuffer(ARRAY_BUFFER, verts.id)
vertexLoc 	= glGetAttribLocation(p.id, "position")
glVertexAttribPointer(vertexLoc, 2, FLOAT, FALSE, 0, 0)
glBindBuffer(ARRAY_BUFFER, uv.id)
uvLoc 	= glGetAttribLocation(p.id, "uv")
glVertexAttribPointer(uvLoc, 2, FLOAT, FALSE, 0, 0)
glEnableVertexAttribArray(vertexLoc)
glEnableVertexAttribArray(uvLoc)
glBindVertexArray(0)






glutMainLoop()