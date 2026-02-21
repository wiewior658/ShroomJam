extends Node2D

var character=Food.testClient
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_button_button_up() -> void:
	Dialogic.start("timelineChangingCharacterTest")

func _on_button_1_button_up() -> void:	
	Dialogic.VAR.get('Testy').set('Shroomness',1)
	character.Shroomness=1
	
func _on_button_2_button_up() -> void:
	Dialogic.VAR.get('Testy').set('Shroomness',2)
	character.Shroomness=2

func _on_button_3_button_up() -> void:
	Dialogic.VAR.get('Testy').set('Shroomness',3)
	character.Shroomness=3

func _on_button_4_button_up() -> void:
	Dialogic.VAR.get('Testy').set('Shroomness',4)
	character.Shroomness=4
