extends Node2D

var number_of_shroomed_people = 0
var number_of_healthy_people = 0
var shroomness_threshold = 3
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	_choose_ending()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
func _choose_ending()->void:
	if(Dialogic.VAR.Shroomness.Alina>shroomness_threshold):
		number_of_shroomed_people+=1
	else:
		number_of_healthy_people+=1
	if(Dialogic.VAR.Shroomness.Barbara>shroomness_threshold):
		number_of_shroomed_people+=1
	else:
		number_of_healthy_people+=1
	if(Dialogic.VAR.Shroomness.Danuta>shroomness_threshold):
		number_of_shroomed_people+=1
	else:
		number_of_healthy_people+=1
	if(Dialogic.VAR.Shroomness.Katerina>shroomness_threshold):
		number_of_shroomed_people+=1
	else:
		number_of_healthy_people+=1
	if(Dialogic.VAR.Shroomness.Richie>shroomness_threshold):
		number_of_shroomed_people+=1
	else:
		number_of_healthy_people+=1
	if(Dialogic.VAR.Shroomness.Zdzichu>shroomness_threshold):
		number_of_shroomed_people+=1
	else:
		number_of_healthy_people+=1
	if(number_of_shroomed_people>number_of_healthy_people):
		get_tree().change_scene_to_file("res://scenes/levels/shroom_path.tscn")
	else:
		get_tree().change_scene_to_file("res://scenes/levels/resistance1.tscn")

	
