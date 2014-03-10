module GLEvent

export registerEvent, publishEvent, KeyUp, KeyDown, MouseMoved, MouseMovedClicked, MouseClicked, KeyDownMouseClicked, EnteredWindow, WindowResized, EventAction, Event

abstract Event

immutable MouseMoved <: Event
    x::Int
    y::Int
end
immutable MouseMovedClicked <: Event
    x::Int
    y::Int
end
immutable MouseClicked <: Event
    key::Int
    status::Int
    x::Int
    y::Int
end
immutable KeyDown <: Event
    special::Bool
    key::Char
    x::Int
    y::Int
end
immutable KeyUp <: Event
    special::Bool
    key::Char
    x::Int
    y::Int
end

immutable KeyDownMouseClicked <: Event
	currentMouseClicked::Dict{Int, (Int, Int)}
	currentKeyDown::Dict{Int, Bool}
	x::Int
    y::Int
end

immutable EnteredWindow <: Event
    entered::Bool
    id::Int
end

immutable WindowResized <: Event
    width::Int
    height::Int
end

immutable EventAction{T}
	id::ASCIIString
	#condition(T, conditionArgs...) -> Bool
	condition::Function
	conditionArgs::Tuple
	#action(T, actionArgs...) -> nothing
	action::Function
	actionArgs::Tuple
end

#Action Event Queues 						#############################################################################
EVENT_ACTION_QUEUE 				= Dict{DataType, Array{EventAction, 1}}()

function registerEvent{T}(eventAction::EventAction{T})
	queue = get(EVENT_ACTION_QUEUE, T, EventAction{T}[])
	push!(queue, eventAction)
	println(EVENT_ACTION_QUEUE)
	EVENT_ACTION_QUEUE[T] = queue
end
function publishEvent{T <: Event}(event::T)
	eventQueue = get(EVENT_ACTION_QUEUE, T, EventAction{T}[])
	for action in eventQueue
    	if action.condition(event, action.conditionArgs...)
    		action.action(event, action.actionArgs...)
    	end
    end
end





#KeyDownMouseClicked Event generation 		##############################################################################
global currentMouseClicked 	= Dict{Int, (Int, Int)}()
global currentKeyDown 		= Dict{Int, Bool}()

function fillCurrentMouseClicked(event)
	if event.status == 0
		currentMouseClicked[int(event.key)] = (int(event.x), int(event.y))
		if ~isempty(currentKeyDown)
			publishEvent(KeyDownMouseClicked(deepcopy(currentMouseClicked), deepcopy(currentKeyDown), int(event.x), int(event.y)))
		end
	else
		pop!(currentMouseClicked, int(event.key), ())
	end
end
function fillCurrentKeyDown(event, status::Int)
	if status == 1
		currentKeyDown[int(event.key)] = event.special
		if ~isempty(currentMouseClicked)
			publishEvent(KeyDownMouseClicked(deepcopy(currentMouseClicked), deepcopy(currentKeyDown), int(event.x), int(event.y)))
		end
	else
		pop!(currentKeyDown, int(event.key), ())
	end
end
registerEvent(EventAction{KeyDown}		("", x-> true, (), fillCurrentKeyDown, (1,)))
registerEvent(EventAction{KeyUp}		("", x-> true, (), fillCurrentKeyDown, (0,)))
registerEvent(EventAction{MouseClicked} ("", x-> true, (), fillCurrentMouseClicked, ()))


end #module GLEvent