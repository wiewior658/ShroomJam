extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if(Dialogic.VAR.Shroomness.Alina>3):
		get_tree().change_scene_to_file("res://scenes/levels/shroom_path.tscn")
	else:
		get_tree().change_scene_to_file("res://scenes/levels/resistance1.tscn")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
