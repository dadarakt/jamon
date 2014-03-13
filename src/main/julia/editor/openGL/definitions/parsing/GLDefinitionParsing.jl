#Parses header files for the GLDefinitions

using Match, DictUtils

include("parseGLFile.jl")

function writeDictFunctionsGLU(fs, dict)
	write(fs, "#function bodies\n")
	for elem in dict
		write(fs, "@getCFun \"libGLU\" "*elem[1]* " " *elem[1]*elem[2]*"\n")
	end
end
function writeDictFunctions(fs, dict)
	write(fs, "#function bodies\n")
	for elem in dict
		write(fs, "@createOpenGLFun " * elem[1]*elem[2]*"\n")
	end
end
function writeDictConstants(fs, dict)
	write(fs, "#constants\n")
	for elem in dict
		spaces = 64 - length(elem[1])
		write(fs, "const " * elem[1] * " "^spaces *"= " *elem[2]*"\n")
	end
end
function writeDictTypes(fs, dict)
	write(fs, "#types\n")
	for elem in dict
		spaces = 60 - length(elem[1])
		write(fs,"typealias " * elem[1] * " "^spaces * elem[2]*"\n")
	end
end

sourceLocation = "deprecated/"
openGLFolder = "../"

GL_FILES =  ["gl10","gl21", "gl33", "gl42", "gl43", "glu", "wgl", "nv", "glx", "amd", "arb", "ati", "ext"]


types 		= Dict{ASCIIString, Dict{ASCIIString, ASCIIString}}() 
functions 	= Dict{ASCIIString, Dict{ASCIIString, ASCIIString}}()
constants 	= Dict{ASCIIString, Dict{ASCIIString, ASCIIString}}()


for file in GL_FILES
	t, f, c = parseJLGLFile(sourceLocation*file*"/"*file*".jl")

	types[file] 	= t
	functions[file] = f
	constants[file] = c
	println("parsed: $(file)")
end

#######################################################################################
#gl10 and glu types are not translated to the platform independent julia C types
gl10_types 	= get(types, "gl10", error)
glu_types 	= get(types, "glu", error)
gl43_types 	= get(types, "gl43", error)

for elem in gl10_types
	gl10_types[elem[1]] = get(gl43_types, elem[1], elem[2])
end
for elem in glu_types
	glu_types[elem[1]] = get(gl43_types, elem[1], elem[2])
end


#We just create one file with all type definitions...
#Types need to be defined in the right order
mergedTypes = Dict{ASCIIString, ASCIIString}() 
for elem in types
	merge!(mergedTypes, elem[2])
end
typeValues 	= collect(values(mergedTypes))
allKeys 	= collect(keys(mergedTypes))
orderedKeys = ASCIIString[]
index = 0
# find out if value is defined, if yes it can be pushed into the ordered key Array
while length(orderedKeys) < length(typeValues)
	for elem in mergedTypes
		a = parse(elem[2])
		if isa(a, Symbol)
			if  isdefined(a) && !in(elem[1], orderedKeys) 
				eval(parse("typealias $(elem[1]) $(elem[2])"))
				push!(orderedKeys, elem[1])
			end
		elseif isa(a, Expr)
			if  isdefined(a.args[2]) && !in(elem[1], orderedKeys) 
				eval(parse("typealias $(elem[1]) $(elem[2])"))
				push!(orderedKeys, elem[1])
			end
		end
	end
end

# now we can write the files
fs = open(openGLFolder*"types.jl", "w")
write(fs, "#all OpenGL Types\n")
for elem in orderedKeys
	spaces = 60 - length(elem)
	write(fs,"typealias " * elem * " "^spaces * get(mergedTypes, elem, error)*"\n")
end
exports		= join(orderedKeys, ", ")
write(fs, "export "*exports*"\n")
close(fs)

#Writing all the other files
for file in GL_FILES

	_types 		= get(types, 		file, error)
	_functions 	= get(functions, 	file, error)
	_constants 	= get(constants, 	file, error)
	exports		= join([collect(keys(_functions)), collect(keys(_constants))], ", ")

	fs = open(openGLFolder*"$(file).jl", "w")
	if file == "glu"
		write(fs, "import GetC.@getCFun\n")
		writeDictFunctionsGLU(fs, 	_functions)
	else
		writeDictFunctions(fs, 	_functions)
	end
	writeDictConstants(fs, 	_constants)
	write(fs, "# Export everything!\n")
	write(fs, "export "*exports*"\n")
	close(fs)
	println("written: $(openGLFolder)$(file).jl")
end

# Functions to determine what the differences between the OpenGL versions are... 
# Not used yet, But i might want to use them to create an info File
# 
function sameArguments(arguments1, arguments2)
	matches = true
	i = 1
	while matches && !done(arguments1, i)
		matches = arguments1[i] == arguments2[i]
		i += 1
	end
	matches
end
function reduceToCommonEntries(dicts)
	allTypesResult = deepcopy(dicts)
	map!(dict -> begin mapValues!(x -> "0", dict) ; dict end, allTypesResult)
	index = 1
	for dict in dicts
		allKeys = keys(dict)
		for _key in allKeys
			for i = index:length(dicts)
				dict2 = allTypesResult[i]
				if haskey(dict2, _key)
					
					if get(dict, _key, error) == get(dicts[i], _key, "error2")
						dict2[_key] = string(int(get(dict2, _key, "0")) + 1)
					elseif isa(parse(get(dict, _key, error)), Expr)
						expr1 = get(dict, _key, "")
						expr2 = get(dicts[i], _key, "")
						@assert ~isempty(expr1) && ~isempty(expr2)
						expr1 = parse(expr1)
						expr2 = parse(expr2)
						if expr1.head == :(::) && expr2.head == :(::) && 
							length(expr1.args[1].args) == length(expr2.args[1].args) 
							arguments1 = expr1.args[1].args
							arguments2 = expr2.args[1].args
							while matches && !done(arguments1, i)
								matches = arguments1[i] == arguments2[i]
								i += 1
							end
							if sameArguments(expr1.args[1].args, expr2.args[1].args) 
								dict2[_key] = string(int(get(dict2, _key, "0")) + 1)
							end
						end

					end
				end
			end
		end
		index += 1
	end
	commonEntries = Dict{ASCIIString, ASCIIString}()
	for dict in allTypesResult
		allKeys = keys(dict)
		for _key in allKeys
			if int(get(dict, _key, "0")) == length(dicts)
				delete!(dict, _key)
				commonEntries[_key] = get(dicts[1], _key, error)
			end
		end
	end
	commonEntries
end
function dictDiff(subtractDict, dicts)
	subtractSet = Set(keys(subtractDict))
	setArray = map(x-> Set(keys(x)), dicts)
	map(s -> setdiff(s, subtractSet), setArray)
end
function dictDiff(subtractDict::Dict{ASCIIString, ASCIIString}, dict::Dict{ASCIIString, ASCIIString})
	subtractSet = Set(collect(keys(subtractDict))...)
	dictSet 	= Set(collect(keys(dict))...)

	tmp = setdiff(dictSet, subtractSet)
	returnDict = Dict{ASCIIString, ASCIIString}()

	for elem in tmp
		returnDict[elem] = get(dict, elem, error)
	end
	returnDict
end
