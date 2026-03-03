extends Node2D

#Upewnij się, że wszystkie sprite'y mają nazwy pasujące do emocji

#Podaj zmienną typu Customer odpowiedzialną za tą postać. Ja przykładową postać stworzyłam w pliku
#"res://scenes/gameplay/VarScripts/Food.gd" na samym dole żeby móc łatwo wypisać jedzenie, które lubią lub nie
var character=Food.Marianna
#Podaj ścieżkę do folderu, w którym znajdują się obrazki postaci:
var characterAssets:String="res://DialogicStuff/ChangeCharacterPortrait/Marianna/"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Dialogic.signal_event.connect(_on_dialogic_signal)
	_ShroomedPortrait()
	print("Marianna Ready")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _ShroomedPortrait() -> void: #wywołuje się za każdym razem jak Dialogic wyśle sygnał
	for mood in get_children():
		var i=character.Shroomness
		while i>-1:
			var newPortrait=str(characterAssets,mood.name,i,".png")
			if ResourceLoader.exists(newPortrait):
				mood.find_child("TextureRect").texture=load(newPortrait)
				break
			i-=1
	print("Marianna shroomness portrait")

func _on_dialogic_signal(argument:String)->void:
	if argument=="ShroomnessChanged":
		character.Shroomness=int(Dialogic.VAR.get(character.Name).get('Shroomness')) #niestety, w timeline nie można zmienić innych zmiennych niż te dialogicowe więc musi być przepisywane tutaj
		_ShroomedPortrait()
	
	print("Marianna Shroomness")
