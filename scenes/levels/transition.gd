extends Node2D
var _save : SaveStats 
#checks shroomness of all npc's and if more than half are shroomed triggers the appropriate ending
#doing it manually since there isn't a list of just NPC's

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	autosave()
	Dialogic.start("res://DialogicStuff/Timelines/transition.dtl")
	Dialogic.timeline_ended.connect(_on_timeline_ended)
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func autosave() -> void:
	_save = SaveStats.new()
#	_save.timeline = "res://DialogicStuff/Timelines/Prologue_2_timeline.dtl"
	_save.write_SaveGame()
func _on_timeline_ended()->void:
	Dialogic.VAR.NextScene = "res://scenes/levels/transition_part2.tscn"
	get_tree().change_scene_to_file("res://scenes/gameplay/drag and drop/drag_n_drop_test.tscn")
