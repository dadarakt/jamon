include("dependencies/OGLUtil.jl")
include("dependencies/RichText.jl")

type TextField
	area::Shape
	lineHeight::Float32
	font::AsciiAtlas
	enrichedText::Array{ASCIIString, 1}
end

function displayFuncCallback()
	global projMatrix, model, words, textField

    glClear(COLOR_BUFFER_BIT | DEPTH_BUFFER_BIT)


    render(textField.area)
    return nothing
end



createWindow(name = "Moiiin", windowSize = [1000, 1100], windowPosition = [1950, 20])
linkFunctions()
initUtils()


font 	= AsciiAtlas("dependencies/VeraMono")

fStream = open("enrich.jl")
text = readall(fStream)
close(fStream)

enriched = enrich(text, JuliaNonBlankSeperators)

global textField = TextField(Rectangle(0f0, 0f0, 500f0, 500f0, [0.6f0, 0.01f0, 0.4f0, 1f0]),font.lineHeight + 30, font, enriched)


glutMainLoop()