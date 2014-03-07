using Match



typeAliasRegex 	= r"typealias ([[:graph:]]+) ([[:graph:]]+)"
functionRegex 	= r"@getCFun \"libGL\" [[:graph:]]+ ([[:graph:]]+)(\([[:print:]]+\))(::[[:graph:]]+)"
constantRegex 	= r"const ([[:print:]]+)=([[:print:]]+)"


function writeDict(stream, name, dict::Dict{ASCIIString, ASCIIString})
	if ~isempty(dict)
		write(stream, "$(name) = [")
		index = 1
		for elem in dict
			write(stream, "\"$(elem[1])\" => \"$(elem[2])\"")
			if index < length(dict)
				write(stream, ",")
			end
			index += 1
		end
		write(stream, "]\n")
	end
end
function writeDict(stream, name, dict::Dict{ASCIIString, (ASCIIString, ASCIIString)})
	if ~isempty(dict)
		write(stream, "$(name) = [")
		index = 1
		for elem in dict
			write(stream, "\"$(elem[1])\" => $(elem[2])")
			if index < length(dict)
				write(stream, ",")
			end
			index += 1
		end
		write(stream, "]\n")
	end
end

outSTream = open("OGLALL.jl", "w")

folders = readdir()
filter!(x-> ~ismatch(r".*.jl", x) , folders)

for folder in folders
	files = readdir(folder)
	filter!(x-> "$(folder)\.jl" == x, files)
	fstream = open("$(folder)/$(files[1])")
	lines = readlines(fstream)
	close(fstream)
	types 		= Dict{ASCIIString, ASCIIString}()
	functions 	= Dict{ASCIIString, (ASCIIString, ASCIIString)}()
	constants 	= Dict{ASCIIString, ASCIIString}()
	for line in lines
		@match line begin 
			typeAliasRegex(alias, _type) 	=> types[strip(alias)] = strip(_type)
			functionRegex(name, func, returnType) => functions[strip(name)] = strip(func) * strip(returnType)
			constantRegex(name, value)		=> constants[strip(name)] = strip(value)
		end
	end
	lines = 0
	write(outSTream, "################################################\n")
	write(outSTream, "#$(folder)\n")
	writeDict(outSTream, "$(folder)_types"		, types)
	writeDict(outSTream, "$(folder)_functions"	, functions)
	writeDict(outSTream, "$(folder)_constants"	, constants)
end
close(outSTream)