extends Node2D

var MoodArray=["brown", "blue"]
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
		for mood in get_child_count():
			find_child(MoodArray[mood]).texture=load(str("res://DialogicStuff/ChangeCharacterPortrait/",
						MoodArray[mood], Dialogic.VAR.get_variable("TestyShroomness"), ".png"))
		
	
