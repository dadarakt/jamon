using Match, DictUtils


#amd
amd_types 		= Dict{ASCIIString, ASCIIString}()
amd_functions 	= Dict{ASCIIString, ASCIIString}()
amd_constants 	= Dict{ASCIIString, ASCIIString}()
#arb
arb_types 		= Dict{ASCIIString, ASCIIString}()
arb_functions 	= Dict{ASCIIString, ASCIIString}()
arb_constants 	= Dict{ASCIIString, ASCIIString}()
#ati
ati_types 		= Dict{ASCIIString, ASCIIString}()
ati_functions 	= Dict{ASCIIString, ASCIIString}()
ati_constants 	= Dict{ASCIIString, ASCIIString}()
#ext
ext_types 		= Dict{ASCIIString, ASCIIString}()
ext_functions 	= Dict{ASCIIString, ASCIIString}()
ext_constants 	= Dict{ASCIIString, ASCIIString}()
#gl10
gl10_types 		= Dict{ASCIIString, ASCIIString}()
gl10_functions 	= Dict{ASCIIString, ASCIIString}()
gl10_constants 	= Dict{ASCIIString, ASCIIString}()
#gl21
gl21_types 		= Dict{ASCIIString, ASCIIString}()
gl21_functions 	= Dict{ASCIIString, ASCIIString}()
gl21_constants 	= Dict{ASCIIString, ASCIIString}()
#gl32
gl32_types 		= Dict{ASCIIString, ASCIIString}()
gl32_functions 	= Dict{ASCIIString, ASCIIString}()
gl32_constants 	= Dict{ASCIIString, ASCIIString}()
#gl33
gl33_types 		= Dict{ASCIIString, ASCIIString}()
gl33_functions 	= Dict{ASCIIString, ASCIIString}()
gl33_constants 	= Dict{ASCIIString, ASCIIString}()
#gl42
gl42_types 		= Dict{ASCIIString, ASCIIString}()
gl42_functions 	= Dict{ASCIIString, ASCIIString}()
gl42_constants 	= Dict{ASCIIString, ASCIIString}()
#gl43
gl43_types 		= Dict{ASCIIString, ASCIIString}()
gl43_functions 	= Dict{ASCIIString, ASCIIString}()
gl43_constants 	= Dict{ASCIIString, ASCIIString}()
#glu
glu_types 		= Dict{ASCIIString, ASCIIString}()
glu_functions	= Dict{ASCIIString, ASCIIString}()
glu_constants 	= Dict{ASCIIString, ASCIIString}()
#glx
glx_types 		= Dict{ASCIIString, ASCIIString}()
glx_functions 	= Dict{ASCIIString, ASCIIString}()
glx_constants 	= Dict{ASCIIString, ASCIIString}()
#nv
nv_types 		= Dict{ASCIIString, ASCIIString}()
nv_functions 	= Dict{ASCIIString, ASCIIString}()
nv_constants 	= Dict{ASCIIString, ASCIIString}()
#wgl
wgl_types 		= Dict{ASCIIString, ASCIIString}()
wgl_functions 	= Dict{ASCIIString, ASCIIString}()
wgl_constants 	= Dict{ASCIIString, ASCIIString}()

sourceLocation = "deprecated/"


typeAliasRegex 	= r"typealias ([[:graph:]]+) ([[:graph:]]+)"
functionRegex 	= r"@getCFun \"libGL\" [[:graph:]]+ ([[:graph:]]+)(\([[:print:]]*\)::[[:graph:]]+)"
constantRegex 	= r"const (GL_)?([[:print:]]+)=([[:print:]]+)"


folders = readdir(sourceLocation)
filter!(x-> ~ismatch(r".*[.]{1}.*", x) , folders)

for folder in folders
	files = readdir(sourceLocation*folder)
	filter!(x-> "$(folder)\.jl" == x, files)
	fstream = open(sourceLocation*"$(folder)/$(files[1])")
	lines = readlines(fstream)
	close(fstream)
	types 		= eval(:($(parse("$(folder)_types"))))
	functions 	= eval(:($(parse("$(folder)_functions"))))
	constants 	= eval(:($(parse("$(folder)_constants"))))
	for line in lines
		@match line begin 
			typeAliasRegex(alias, _type) 	=> types[strip(alias)] 			= strip(_type)
			functionRegex(name, func) 		=> functions[strip(name)] 		= strip(func)
			constantRegex(GL_, name, value)	=> constants["GL_"*strip(name)] = strip(value)
		end
	end
	lines = 0
end



using DictUtils



function sameArguments()

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
							matches = true
							arguments1 = expr1.args[1].args
							arguments2 = expr2.args[1].args
							i = 1
							while matches && !done(arguments1, i)
								matches = arguments1[i] == arguments2[i]
								i += 1
							end
							if matches 
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

function writeDicts(stream, dicts)
	for dict in dicts
		if ~isempty(dict)
			for elem in dict
				write(stream, elem[1]*elem[2]*"\n")
			end
		end
	end
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

function writeDictFunctions(fs, name, dict)
	write(fs, "#function bodies\n")
	write(fs, "const $(name) = [\n")
	index = 1
	for elem in dict
		write(fs, ":("*elem[1]*elem[2]*")")
		if index < length(dict)
			write(fs, ",\n")
		end
		index += 1
	end
	write(fs, "]\n")
end
function writeDictConstants(fs, name, dict)
	write(fs, "#constants\n")
	write(fs, "const $(name) = [\n")
	index = 1
	for elem in dict
		spaces = 64 - length(elem[1])
		write(fs, ":(const " * elem[1] * " "^spaces *"= " *elem[2]*")")
		if index < length(dict)
			write(fs, ",\n")
		end
		index += 1
	end
	write(fs, "]\n")
end
function writeDictTypes(fs, name, dict)
	write(fs, "#types\n")
	write(fs, "const $(name) = [\n")
	index = 1
	for elem in dict
		spaces = 60 - length(elem[1])
		write(fs,":(typealias " * elem[1] * " "^spaces * elem[2]*")")
		if index < length(dict)
			write(fs, ",\n")
		end
		index += 1
	end
	write(fs, "]\n")
end

#######################################################################################
#gl10 still have a GL_ in front... 
for elem in gl10_constants
	_key = replace(elem[1], "GL_", "")
	delete!(gl10_constants, elem[1])
	gl10_constants[_key] = elem[2]
end
#gl10 and glu types are not translated to the platform independent type
for elem in gl10_types
	gl10_types[elem[1]] = get(gl43_types, elem[1], elem[2])
end
for elem in glu_types
	glu_types[elem[1]] = get(gl43_types, elem[1], elem[2])
end
#######################################################################################


GLFunctions 		= [gl21_functions, gl33_functions, gl42_functions, gl43_functions]
#types without gl10 and glu as they don't have a few types that all others have
GLTypes 			= [gl21_types, gl33_types, gl42_types, gl43_types]
GLConstants 		= [gl21_constants, gl33_constants, gl42_constants, gl43_constants]

extensionFunctions 	= [wgl_functions, nv_functions, glx_functions, amd_functions, arb_functions, ati_functions, ext_functions]
#types without gl10 and glu as they don't have a few types that all others have
extensionTypes 		= [wgl_types, nv_types, glx_types, amd_types, arb_types, ati_types, ext_types]
extensionConstants 	= [glu_constants, wgl_constants, nv_constants, glx_constants, amd_constants, arb_constants, ati_constants, ext_constants]

AllFunctions 		= [GLFunctions..., extensionFunctions...]
AllTypes 			= [GLTypes..., extensionTypes...]
AllConstants 		= [GLConstants..., extensionConstants...]




#GL components have in every category common entries
glCommonFunctions 	= reduceToCommonEntries(GLFunctions)
glCommonTypes 		= reduceToCommonEntries(GLTypes)
glCommonConstants 	= reduceToCommonEntries(GLConstants)
#extensions just have common types
extCommonTypes 		= reduceToCommonEntries(extensionTypes)
#All common types
allCommonTypes 		= reduceToCommonEntries([glCommonTypes, extCommonTypes])
#Glu and gl10 have the same types
gluogl10 			= reduceToCommonEntries([glu_types, gl10_types])
oldModernCommon 	= reduceToCommonEntries([allCommonTypes, gluogl10])


glCommon = [glCommonFunctions, allCommonTypes, glCommonConstants]
openGLFolder = "OpenGL/"

#Writing the glCommon file
fs = open(openGLFolder*"glCommon.jl", "w")
write(fs, "#Types, functions and constants, that are available in all OpenGL versions\n")
write(fs, "#The Types are also valid for all extensions (but GLU)\n")
writeDictTypes(fs, "GL_COMMON_TYPES", glCommonTypes)
writeDictConstants(fs,"GL_COMMON_CONSTANTS", glCommonConstants)
writeDictFunctions(fs, "GL_COMMON_FUNCTIONS", glCommonFunctions)
close(fs)
println(openGLFolder*"glCommon.jl")


#Writing the diff files
for file in ["gl21", "gl33", "gl42", "gl43", "wgl", "nv", "glx", "amd", "arb", "ati", "ext"]
	types 		= eval(:($(parse("$(file)_types"))))
	functions 	= eval(:($(parse("$(file)_functions"))))
	constants 	= eval(:($(parse("$(file)_constants"))))
	fs = open(openGLFolder*"$(file).jl", "w")
	write(fs, "#Types, functions and constants, needed on top of the common ones\n")
	writeDictTypes(fs, "GL_$(uppercase(file))_TYPES", dictDiff(allCommonTypes, types))
	writeDictConstants(fs, "GL_$(uppercase(file))_CONSTANTS", dictDiff(glCommonConstants, constants))
	writeDictFunctions(fs, "GL_$(uppercase(file))_FUNCTIONS", dictDiff(glCommonFunctions, functions))
	close(fs)
	println("written: $(openGLFolder)$(file).jl")
end
