extends TextureRect

var Capacity=5
var EmptyPotColor=Color.BLACK
var EmptyPotPos=35.0

var itemNumber
var taste
var nourishment
var soupColor
var soupPos

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	newSoup()

func newSoup()->void:
	itemNumber=0
	nourishment=0
	taste=0
	soupColor=EmptyPotColor
	soupPos=EmptyPotPos
	updateInfo()

func updateInfo()->void:
	#wyświetlanie danych liczbowych
	$"../Staty/Capacity".text=str("Capacity: ",itemNumber,"/",Capacity)
	$"../Staty/Taste".text=str("Taste: ",taste)
	$"../Staty/Nourishment".text=str("Nourishment: ",nourishment)
	
	#wygląd zupy w garze
	find_child("soup").modulate=soupColor
	find_child("soup").position.y=soupPos

func _can_drop_data(_pos, data):
	return data is Array
 
func _drop_data(_pos, data):
	if data[0].texture!=null and itemNumber<Capacity:
		if data[0].name!="ShroomPantry":
			data[0].RemoveItem()
			Food.RemoveItem(data[1])
			print(Food.FoodOwned)
		itemNumber+=1
		taste+=data[1][0]
		nourishment+=data[1][1]
		soupPos-=6
		if itemNumber==0:
			soupColor=data[1][2]
		else:
			soupColor=Color((soupColor.r*(itemNumber-1)+data[1][2].r)/itemNumber,(soupColor.g*(itemNumber-1)+data[1][2].g)/itemNumber,(soupColor.b*(itemNumber-1)+data[1][2].b)/itemNumber)
		
		updateInfo()
	print("itemNumber: ", itemNumber,", taste: ",taste,", nourishment: ",nourishment)


func _on_button_button_up() -> void:
	newSoup()
	Dialogic.start("test_timeline")
