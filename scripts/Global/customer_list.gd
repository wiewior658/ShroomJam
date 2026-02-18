@tool
extends Node
@export var customer_list : Dictionary = {}
var speaker: DialogicCharacter
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	customer_list["lionsmith"] = customer.new("lionsmith", 50)


# Called every frame. 'delta' is the elapsed time since the previous frame.

func find_correct_portrait(passed_character :DialogicCharacter, passed_portrait: String) -> Dictionary:
	speaker = passed_character
	for custom in customer_list:
		if custom == speaker.get_character_name():
			var ratujcie = speaker.portraits[customer_list[custom].substitute_portrait(passed_portrait)].get('export_overrides', {})
			#print(ratujcie.strip_edges(true,true))
			return ratujcie
			
			#return customer_list[custom].substitute_portrait(passed_portrait)	
	return {}		
#func update_portrait() -> String:
#	for cust in customer_list:
#		if cust == speaker:
#			return speaker
#	return ""
