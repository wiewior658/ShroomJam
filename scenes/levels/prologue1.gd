extends Node2D

var tutorial := "res://scenes/gameplay/drag and drop/drag_n_drop_test.tscn"
var _save : SaveStats
#var _globalenstats : GlobalStats
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
#Dialogic.signal_event.connect(_setName)
	#_globalenstats = GlobalStats.new()
	autosave()
	Dialogic.start("res://DialogicStuff/Timelines/Prologue_1_timeline.dtl")
	#Dialogic.signal_event.connect(_setName)
	Dialogic.timeline_ended.connect(_on_timeline_ended)
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass

func _on_timeline_ended()->void:
	if Dialogic.VAR.Tutorial == true:
		Dialogic.VAR.CurrentScene = "res://scenes/levels/tutorial.tscn"
		Dialogic.VAR.NextScene = "res://scenes/levels/prologue2.tscn"
	else:
		Dialogic.VAR.CurrentScene = "res://scenes/levels/prologue2.tscn"
		Dialogic.VAR.NextScene = "res://scenes/levels/prologue2.tscn"
	get_tree().change_scene_to_file(Dialogic.VAR.CurrentScene)
#func _setName(argument:String) -> void:

func autosave() -> void:
	_save = SaveStats.new()
	Dialogic.VAR.CurrentScene = "res://scenes/levels/prologue1.tscn"
	Dialogic.VAR.NextScene = "res://scenes/gameplay/drag and drop/drag_n_drop_test.tscn"
	#_save.timeline = "res://DialogicStuff/Timelines/Prologue_1_timeline.dtl"
	_save.write_SaveGame()
	
