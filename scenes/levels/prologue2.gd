extends Node2D

var optionChoosed := "" 
#var tutorial := "res://scenes/gameplay/drag and drop/drag_n_drop_test.tscn"
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Dialogic.start("res://DialogicStuff/Timelines/Prologue_2_timeline.dtl")
	Dialogic.timeline_ended.connect(_on_timeline_ended)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass
func _on_timeline_ended()->void:
	#get_tree().change_scene_to_file(tutorial)
	pass
