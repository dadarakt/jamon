global OpenGLver = "4.3"

using OpenGL, GLUT, Match


include("dependencies/GLUTWindow.jl")

reload("dependencies/GLUTWindow.jl")



immutable Area
	id::String
	contour::Array{Float, 1}
	parent::Area
	child::Array{Area, 1}
	attributes::Array{Any, 1}
end

Area() = Area("lol", [1.0, 2.0, 3.0, 4.0], Area(), Arrey{Area}(), [])

immutable EventAction{T <: Event}
	parent::Area
	#condition(T, conditionArgs...) -> Bool
	condition::Function
	conditionArgs::Tuple
	#action(actionArgs...) -> nothing
	action::Function
	actionArgs::Tuple
end


KEYUP_EVENT_QUEUE = Array{EventAction{KeyUp}, 1}()
KEYDOWN_EVENT_QUEUE = Array{EventAction{KeyDown}, 1}()
MOUSECLICKED_EVENT_QUEUE = Array{EventAction{MouseClicked}, 1}()
MOUSEMOVED_EVENT_QUEUE = Array{EventAction{MouseMoved}, 1}()

registerEvent{T}(parent::Area, condition::Function, conditionArgs::Tuple, action::Function, actionArgs::Tuple) = registerEvent{T}(EventAction{T}(parent, condition, conditionArgs, action, actionArgs))
registerEvent(eventAction::EventAction{KeyDown}) = push!(KEYDOWN_EVENT_QUEUE, eventAction)


registerEvent(EventAction{KeyDown}(Area(), x -> x.key == 's', (), println, ("hallo")))



function listenTo(x::KeyDown)
    for action in KEYDOWN_EVENT_QUEUE
    	if action.condition(x, action.actionArgs...)
    		action.action(action.actionArgs...)
    	end
    end
end

function display(a::Area, t::String; textParser = "Julia"))
end