class_name SaveStats
extends Resource

const Save_Game_Path := "user://saveManual.tres"
#Current scene, shroomnes, inventory, moneyu
@export var timeline := "res://scenes/levels/prologue2.tscn"
#@export var event_index := -1
#@export var subsystems: Dictionary[String, Dictionary] = {}
@export var globalstats: Resource
var data : GlobalStats


static func save_exists() -> bool:
	return ResourceLoader.exists(Save_Game_Path)

func write_SaveGame() -> void:
	#print(Save_Game_Path)
	globalstats = GlobalStats.new()
	globalstats.setParams()
	ResourceSaver.save(self,Save_Game_Path)
	
static func load_SavedGame() -> Resource:
	if ResourceLoader.exists(Save_Game_Path):
		return ResourceLoader.load(Save_Game_Path)
	else:
		print("NIE DZIALA AAAAAAAA")
	return null

func printStats() ->void:
	print(globalstats)
	
func get_Timeline() -> String:
	return timeline
