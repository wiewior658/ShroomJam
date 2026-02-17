extends GridContainer

var shelf_place=preload("res://scenes/gameplay/drag and drop/kitchen shelf/shelf_place.tscn")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var i=0
	for Fitem in GlobalVar.eqFood:
		add_child(shelf_place.instantiate())
		get_child(i).start(Fitem)
		i+=1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
