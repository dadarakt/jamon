global const jlConstantRegex 	= r"const (GL_)?([[:print:]]+)=([[:print:]]+)"
global const jlTypeAliasRegex = r"typealias ([[:graph:]]+) ([[:graph:]]+)"
global const jlFunctionRegex 	= r"@getCFun \"[[:graph:]]+\" [[:graph:]]+ ([[:graph:]]+)(\([[:print:]]*\)::[[:graph:]]+)"



function parseJLGLFile(path::ASCIIString)
	types 		= Dict{ASCIIString, ASCIIString}()
	functions 	= Dict{ASCIIString, ASCIIString}()
	constants 	= Dict{ASCIIString, ASCIIString}()

	fstream = open(path)
	lines = readlines(fstream)
	close(fstream)

	for line in lines
		@match line begin 
			jlTypeAliasRegex(alias, _type) 		=> types[strip(alias)] 			= strip(_type)
			jlFunctionRegex(name, func) 		=> functions[strip(name)] 		= strip(func)
			jlConstantRegex(GL_, name, value)	=> constants["GL_"*strip(name)] = strip(value)
		end
	end
	lines = 0
	types, functions, constants
end

	

