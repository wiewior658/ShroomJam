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
	if(argument == "mouse_alcohol"):
		print("hello")
		$Unruly_mouse.tug_speed = $Unruly_mouse.tug_speed/5
		#$Unruly_mouse.tug_duration = $Unruly_mouse.tug_duration*2
	elif(argument == "panic"):
		$Unruly_mouse.min_time = 0.1
		$Unruly_mouse.max_time = 1.0
		$Unruly_mouse.tug_duration = 1.0
	elif(argument == "calm"):
		$Unruly_mouse.min_time = 1.0
		$Unruly_mouse.max_time = 5.0
		$Unruly_mouse.tug_duration = 0.4
	else:
		var index = argument.to_int()
	#var button = Dialogic.Choices.get_choice_button(1).get_global_transform()
	
		if index == 0:
			$Unruly_mouse.set_target(null)
		else:
			var button = Dialogic.Choices.get_choice_button(index)
			$Unruly_mouse.set_target(button)
