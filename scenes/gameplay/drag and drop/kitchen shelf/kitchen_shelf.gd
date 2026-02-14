extends GridContainer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var i=0
	for child in get_children():
		if i<GlobalVar.eqFood.size():
			child.start(GlobalVar.eqFood[i])
			print(child.name, ", przypisany item: ", GlobalVar.eqFood[i])
		else:
			child.start(null)
		i+=1


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
