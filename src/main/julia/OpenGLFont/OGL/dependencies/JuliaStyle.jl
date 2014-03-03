using Match

global juliaStopping = [
	"\"" 		=> ["\""],
	"end" 		=> ["function", "for", "while", "if", "else", "begin", "quote"],
	")"			=> ["(","\$("],
	"]"			=> ["["],
	"}"			=> ["{"]
]

global juliaColorDict = [
	"for" 		=> [0.5f0, 0.8f0, 0.3f0], 
	"if" 		=> [0.2f0, 0.8f0, 0.5f0], 
	"end" 		=> [0.5f0, 0.1f0, 0.3f0], 
	"in" 		=> [0.0f0, 0.1f0, 0.5f0], 
	"begin" 	=> [0.5f0, 0.1f0, 0.3f0], 
	"in" 		=> [0.0f0, 0.1f0, 0.5f0],
	"\$" 		=> [0.9f0, 0.2f0, 0.01f0],
	"function" 	=> [0.6f0, 0.3f0, 0.2f0],
	"include" 	=> [0.1f0, 0.9f0, 0.2f0],
	"using" 	=> [0.2f0, 0.9f0, 0.2f0],
	"global" 	=> [0.8f0, 0.1f0, 0.2f0],
	"\"" 		=> [0.9f0, 0.1f0, 0.1f0]]



JuliaKeywords = ["function", "end", "begin", "abstract", "type", "immutable", "if", "else", "elseif", "in", "for", "return", "using", "global"]
specialChar = [string(char(i)) for i=[33:47, 58:64, 91:94, 123:126]]
equals = [i * "=" for i=["+", "-", "/", "\\", "*", "<", ">", "^", "!", "|", "%", "="]]
rest = ["::", "||", "&&", "=>", "...", "|>","\$(", "\n"]
JuliaNonBlankSeperators = Set({specialChar..., equals..., rest...})




computeStyle(attributes::Array{ASCIIString, 1}) = @match attributes begin
	quotes, if contains(attributes, "\"") && (contains(attributes, "\$(") || contains(attributes, "\$")) end => get(juliaColorDict, "\$", [])
	quotes, if contains(attributes, "\"") end => get(juliaColorDict, "\"", [])
end
