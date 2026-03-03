@tool
extends DialogicPortrait

var char=Food.Alina
#Podaj ścieżkę do folderu, w którym znajdują się obrazki postaci:
var characterAssets:String="res://assets/art/characters/Alina/"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("Alina ", self.name, " ready")
	
func _update_portrait(passed_character: DialogicCharacter, passed_portrait: String) -> void:
	apply_character_and_portrait(passed_character, passed_portrait)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _ShroomedPortrait() -> void: #wywołuje się za każdym razem jak Dialogic wyśle sygnał
	var i:int=char.Shroomness
	if i<3:
		$Shroom0.show()
		$Shroom3.hide()
		$Shroom5.hide()
	if i>=3 and i<5:
		$Shroom0.hide()
		$Shroom3.show()
		$Shroom5.hide()
	if i>=5:
		$Shroom0.hide()
		$Shroom3.hide()
		$Shroom5.show()
