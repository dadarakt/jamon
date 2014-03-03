immutable Style
	color::Array{Float32, 1}
	function Style(color::Array{Float32, 1})
		if length(color) == 3
			new([color..., 1f0])
		elseif length(color) == 4
			new(color)
		else
			throw(error("not a color"))
		end
	end
end
Style(x::Array{Real, 1}) = Style(float32(x))
Style(x::Array{Int64, 1}) = Style(float32(x))
immutable StyledWord
    text::String
    style::Style
end


global juliaAttributeDict = [
	"for" 		=> (["for"], ["for"], []), 
	"\"" 		=> (["\""], ["\""], ["\""]),
	"end" 		=> (["end"], [], ["\"", "function", "for", "if", "else", "begin", "quote"])
]
global juliaStyleDict = [
	"for" 		=> Style([0.5f0, 0.8f0, 0.3f0]), 
	"if" 		=> Style([0.2f0, 0.8f0, 0.5f0]), 
	"end" 		=> Style([0.5f0, 0.1f0, 0.3f0]), 
	"in" 		=> Style([0.0f0, 0.1f0, 0.5f0]), 
	"begin" 	=> Style([0.5f0, 0.1f0, 0.3f0]), 
	"in" 		=> Style([0.0f0, 0.1f0, 0.5f0]),
	"\$" 		=> Style([0.9f0, 0.2f0, 0.01f0]),
	"function" 	=> Style([0.6f0, 0.3f0, 0.2f0]),
	"include" 	=> Style([0.1f0, 0.9f0, 0.2f0]),
	"using" 	=> Style([0.2f0, 0.9f0, 0.2f0]),
	"global" 	=> Style([0.8f0, 0.1f0, 0.2f0]),
	"\"" 		=> Style([0.9f0, 0.1f0, 0.1f0])]


JuliaKeywords = ["function", "end", "begin", "abstract", "type", "if", "else", "elseif", "in", "for", "return", "using", "include"]
specialChar = [string(char(i)) for i=[33:47, 58:64, 91:94, 123:126]]
equals = [i * "=" for i=["+", "-", "/", "\\", "*", "<", ">", "^", "!", "|", "%", "="]]
rest = ["::", "||", "&&", "=>", "...", "|>", "\n"]
JuliaNonBlankSeperators = Set({specialChar..., equals..., rest...})


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

function enrich(text, seperatorTokens, styleDict)	
	enriched 		= Array(StyledWord, 0)
	tokensFound 	= fill("", 0)
	blanks 			= ""
	currentWord 	= ""
	seperator 		= ""
	defaultColor = float32([0,0,0,0.6])
	for char in text
		if char == '\t' || char == ' '
			if isempty(blanks)
				~isempty(currentWord) && push!(enriched, StyledWord(currentWord, get(styleDict, currentWord, Style(defaultColor))))
				currentWord = ""
			end
			blanks = blanks * string(char)
		else
			if ~isempty(blanks)
				push!(enriched, StyledWord(" "^length(blanks), Style([0,0,0,1])))
				blanks = ""
			end
			seperator *= string(char)
			found, seperator, currentWordTmp, tokensFound = matchTokens(seperator, seperatorTokens, tokensFound)
			if found
				~isempty(currentWord) && push!(enriched, StyledWord(currentWord, get(styleDict, currentWord, Style(defaultColor))))
				push!(enriched, StyledWord(seperator, get(styleDict, seperator, Style(defaultColor))))
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


function delete(text::String, index::Int)
     if index > 1 && index < length(text)
        text = text[1:index - 1] * text[index + 1:end]
     elseif index == length(text)
        return chop(text)
     elseif index == 1
        return text[index + 1:end]
     end
end
function insert(text::String, char::Union(String,Char), index::Int)
	index = index > length(text) ? length(text) : index
	index = index < 1 ? 1 : index
    if index > 1 && index < length(text)
        return text[1:index - 1] * string(char) * text[index:end]
     elseif index == length(text)
        return text * string(char)
    elseif index == 1
        return  string(char) * text
    end
end