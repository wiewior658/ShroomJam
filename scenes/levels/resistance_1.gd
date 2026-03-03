extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Dialogic.start("res://DialogicStuff/Timelines/Resistance1.dtl")
	Dialogic.timeline_ended.connect(_on_timeline_ended)
	Dialogic.signal_event.connect(_on_dialogic_signal)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
func _on_timeline_ended()->void:
	pass
func _on_dialogic_signal(argument : String)->void:
	var index = argument.to_int()
	#var button = Dialogic.Choices.get_choice_button(1).get_global_transform()
	
	if index == 0:
		$Unruly_mouse.set_target(null)
	else:
		var button = Dialogic.Choices.get_choice_button(index)
		$Unruly_mouse.set_target(button)
