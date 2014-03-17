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
type StyledWord
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

function escapeRegexChars(text)
	escapedString = ""
	regexChars = ".+*?\\/|[]{}()"
	regex = Regex(join([ "\\$i" for i in regexChars], '|'))
	for char in text
		if ismatch(regex, string(char))
			escapedString *= "\\"
		end
		escapedString *= string(char)
	end
	escapedString
end

makeRegex(regexList) = join(map(escapeRegexChars, regexList), '|')


JuliaKeywords 	= ["function", "end", "begin", "abstract", "type", "if", "else", "elseif", "in", "for", "return", "using"]

unaryOp 		= [string(char(i)) for i=[33:47, 58:64, 91:94, 123:126]]
equalsOp 		= [i * "=" for i=["+", "-", "/", "\\", "*", "^", "!", "|", "%"]]
boolOp			= [ "||", "&&", ">=", "<=", "=="]
trinaryOp 		= ["..."]
advanced 		= ["::", "|>"]

Operators 		= sort([unaryOp..., equalsOp..., boolOp..., advanced..., trinaryOp...], by=length, rev=true)

blanks 			= "[\s\t]+"
number 			= "[[:digit:]]+[\.]{0,1}[[:digit:]]*(f0)?"
names			= "(?<=[^[:alnum:]]{1})[[:alpha:]_]{1}[[:alnum:]_]+"

#Order is important for the regex...
JULIA_REGEX		= Regex(join([makeRegex(JuliaKeywords), names, blanks, number], '|') * "|" * makeRegex(Operators))


function split(text, regex)
	matchall(regex, text)
end

fStream = open("enrich.jl")
text = readall(fStream)
close(fStream)

#a = split(readall(fStream), JULIA_REGEX)
a = matchall(JULIA_REGEX, text)

for word in a 
	println(word)
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