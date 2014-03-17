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