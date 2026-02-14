extends Panel


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func _can_drop_data(_pos, data):
	return data is Array
 
func _drop_data(_pos, data):
	if data[1]!=null:
		if data[1].baseCost<=GlobalVar.money:
			GlobalVar.money-=data[1].baseCost
			GlobalVar.eqFood.push_back(data[1])
			print("zostało ", GlobalVar.money, " zł")
			data[0].RemoveItem()
		else:
			print("Za mało środków, biedaku")
