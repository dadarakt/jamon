abstract Event
immutable MouseMoved <: Event
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
end
immutable KeyUp <: Event
    special::Bool
    key::Char
end
immutable KeyDownMouseClicked <: Event
	currentMouseClicked::Dict{Int, (Int, Int)}
	currentKeyDown::Dict{Int, Bool}
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
KEYDOWN_EVENT_QUEUE 				= Array(EventAction{KeyDown}, 				0)
KEYUP_EVENT_QUEUE 					= Array(EventAction{KeyUp}, 				0)
MOUSECLICKED_EVENT_QUEUE 			= Array(EventAction{MouseClicked},  		0)
MOUSEMOVED_EVENT_QUEUE 				= Array(EventAction{MouseMoved},  			0)
KEYDOWNMOUSECLICKED_EVENT_QUEUE 	= Array(EventAction{KeyDownMouseClicked},  	0)
registerEvent(eventAction::EventAction{KeyDown}) 				= push!(KEYDOWN_EVENT_QUEUE, 				eventAction)
registerEvent(eventAction::EventAction{KeyUp}) 					= push!(KEYUP_EVENT_QUEUE, 					eventAction)
registerEvent(eventAction::EventAction{MouseClicked}) 			= push!(MOUSECLICKED_EVENT_QUEUE, 			eventAction)
registerEvent(eventAction::EventAction{MouseMoved}) 			= push!(MOUSEMOVED_EVENT_QUEUE, 			eventAction)
registerEvent(eventAction::EventAction{KeyDownMouseClicked}) 	= push!(KEYDOWNMOUSECLICKED_EVENT_QUEUE, 	eventAction)
function processEventQueue{T}(event, eventQueue::Array{EventAction{T}, 1})
	for action in eventQueue
    	if action.condition(event, action.conditionArgs...)
    		action.action(event, action.actionArgs...)
    	end
    end
end
listenTo(x::Any)						= nothing
listenTo(event::KeyDown) 				= processEventQueue(event, KEYDOWN_EVENT_QUEUE)
listenTo(event::KeyUp) 					= processEventQueue(event, KEYUP_EVENT_QUEUE)
listenTo(event::MouseClicked) 			= processEventQueue(event, MOUSECLICKED_EVENT_QUEUE)
listenTo(event::MouseMoved) 			= processEventQueue(event, MOUSEMOVED_EVENT_QUEUE)
listenTo(event::KeyDownMouseClicked) 	= processEventQueue(event, KEYDOWNMOUSECLICKED_EVENT_QUEUE)

#KeyDownMouseClicked Event generation 		##############################################################################
global currentMouseClicked 	= Dict{Int, (Int, Int)}()
global currentKeyDown 		= Dict{Int, Bool}()

function fillCurrentMouseClicked(event)
	if event.status == 0
		currentMouseClicked[int(event.key)] = (int(event.x), int(event.y))
		if ~isempty(currentKeyDown)
			listenTo(KeyDownMouseClicked(deepcopy(currentMouseClicked), deepcopy(currentKeyDown)))
		end
	else
		pop!(currentMouseClicked, int(event.key), ())
	end
end
function fillCurrentKeyDown(event, status::Int)
	if status == 1
		currentKeyDown[int(event.key)] = event.special
		if ~isempty(currentMouseClicked)
			listenTo(KeyDownMouseClicked(deepcopy(currentMouseClicked), deepcopy(currentKeyDown)))
		end
	else
		pop!(currentKeyDown, int(event.key), ())
	end
end
registerEvent(EventAction{KeyDown}		("", x-> true, (), fillCurrentKeyDown, (1,)))
registerEvent(EventAction{KeyUp}		("", x-> true, (), fillCurrentKeyDown, (0,)))
registerEvent(EventAction{MouseClicked} ("", x-> true, (), fillCurrentMouseClicked, ()))