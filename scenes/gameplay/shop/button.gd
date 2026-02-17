extends Button

func _on_button_up() -> void:
	Food.Rot.SpoilFood(GlobalVar.eqFood)
	$"../playerItems/playerItems".reload()
