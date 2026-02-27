class_name SaveStats
extends Resource

const Save_Game_Path := "K:\\HappyCodingIndustry\\Nowy folder\\ShroomJam\\saves\\save.tres"
#Current scene, shroomnes, inventory, moneyu
@export var timeline := ""
#@export var event_index := -1
#@export var subsystems: Dictionary[String, Dictionary] = {}
@export var globalstats: Resource
 

static func save_exists() -> bool:
	return ResourceLoader.exists(Save_Game_Path)

func write_SaveGame() -> void:
	print(Save_Game_Path)
	ResourceSaver.save(self,Save_Game_Path)
	
static func load_SavedGame() -> Resource:
	if ResourceLoader.exists(Save_Game_Path):
		return ResourceLoader.load(Save_Game_Path)
	else:
		print("NIE DZIALA AAAAAAAA")
	return null

func printStats() ->void:
	print(globalstats)
