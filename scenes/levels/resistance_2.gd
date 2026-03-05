extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Dialogic.start("res://DialogicStuff/Timelines/Resistance2.dtl")
	Dialogic.timeline_ended.connect(_on_timeline_ended)
	Dialogic.signal_event.connect(_on_dialogic_signal)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
func _on_timeline_ended()->void:
	pass
func _on_dialogic_signal(argument : String)->void:
	if(argument == "ded"):
		get_tree().change_scene_to_file("res://scenes/ui/Game_over.tscn")
	else:
		get_tree().change_scene_to_file("res://scenes/ui/Game_over_woosh.tscn")
