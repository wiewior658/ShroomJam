extends Node
class_name customer

@export var shroomness: int = 0
@export var customer_name : String =""
# Called when the node enters the scene tree for the first time.
func _init(tmp_name: String, tmp_shroomness: int):
	shroomness = tmp_shroomness
	customer_name = tmp_name
func substitute_portrait(passed_portrait: String)->String:
	var tmp = passed_portrait.split("_")
	tmp[2] = str(shroomness)
	var correct_portrait = tmp[0]+"_"+tmp[1]+"_"+tmp[2]
	#print(correct_portrait)
	return correct_portrait
