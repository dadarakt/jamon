using GLWindow, ModernGL, GLUtil, Events, GLText, GLUT
import GLUtil.render
import GLText.select

scroll(event, t) = t.y += event.key == 4 ? -40 : 40


function select(event::KeyUp, t::TextField, f::FontProperties)
	if event.key ==GLUT_KEY_LEFT
		direction = "left"
	elseif event.key == GLUT_KEY_RIGHT
		direction = "right"
	elseif event.key == GLUT_KEY_UP
		direction = "up"
	elseif event.key == GLUT_KEY_DOWN
		direction = "down"
	end
	t.selection = select(direction, t, f)
end


function select(event::DoubleClick, t::TextField, f::FontProperties)
	selection = select(event.x, event.y, t, f)
end
createWindow()

font 	= getfont()
text 	= (join([i for i=0:9],"")*"\n")^10
t 		= TextField(text, 10, 500)

registerEventAction(EventAction{KeyDown{0}}(x -> !x.special && x.key == '\b', (), delete, (t,)))
registerEventAction(EventAction{KeyDown{0}}(x -> !x.special && isprint(x.key), (), addchar, (t,)))
registerEventAction(EventAction{KeyDown{0}}(x -> x.special  && x.key == '\n' || x.key == '\r', (), newline, (t,)))

registerEventAction(EventAction{MouseClicked{0}}(x -> x.key == 0 && x.status == 0, (), select, (t, font.properties)))
registerEventAction(EventAction{KeyUp{0}}(
	x -> x.special && (x.key == GLUT_KEY_UP || x.key == GLUT_KEY_DOWN || x.key == GLUT_KEY_RIGHT || x.key == GLUT_KEY_LEFT),
	(), select, (t, font.properties)))

registerEventAction(EventAction{MouseDragged{0}}(x -> true, (), select, (t, font.properties)))


function DisplayTextField(t::TextField, f::GLFont)
	render(f.gl)
	render(t, f)
end


glDisplay(FuncWithArgs(DisplayTextField, (t, font)))

glutMainLoop()