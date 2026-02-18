@tool
extends DialogicPortrait

## Default portrait scene.
## The parent class has a character and portrait variable.

@export_group('Main')
@export_file var image :#= ""
	set(value):
		image = value
		print(value)


## Load anything related to the given character and portrait
func _update_portrait(passed_character:DialogicCharacter, passed_portrait:String) -> void:
	print(image)
	var correct_path = CustomerList.find_correct_portrait(passed_character, passed_portrait)
	apply_character_and_portrait(passed_character, passed_portrait)
	set_correct_image(correct_path)
	apply_texture($Portrait, image)
	DialogicUtil.apply_scene_export_overrides(self, correct_path, true)
	print("")
func set_correct_image(image_path:Dictionary)->void:
	image = image_path["image"]
