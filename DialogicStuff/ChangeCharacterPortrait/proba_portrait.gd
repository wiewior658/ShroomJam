extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:

	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_button_button_up() -> void:
	Dialogic.start("timelineChangingCharacterTest")


func _on_button_1_button_up() -> void:	
	Dialogic.VAR.set_variable("TestyShroomness",1)
	
func _on_button_2_button_up() -> void:
	Dialogic.VAR.set_variable("TestyShroomness",2)
