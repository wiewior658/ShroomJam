extends TextureRect


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	SoupTaken()


func serveSoup(soupColor:Color)->void:
	find_child("soup").modulate=soupColor
	self.visible=true
	
	
func SoupTaken()->void:
	self.visible=false
