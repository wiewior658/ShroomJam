extends TextureRect

var Capacity=5
var EmptyPot=Color.BLACK

var itemNumber
var taste
var nourishment

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	newSoup()

func newSoup()->void:
	itemNumber=0
	nourishment=0
	taste=0

func updateInfo()->void:
	$"../Staty/Capacity".text="Capacity: "

func _can_drop_data(_pos, data):
	return data is Array
 
func _drop_data(_pos, data):
	if data[0].name=="ShroomPantry":
		itemNumber+=1
		taste+=data[1][0]
		nourishment+=data[1][1]
	elif data[0].texture!=null and itemNumber<Capacity:
		data[0].RemoveItem()
		itemNumber+=1
		taste+=data[1][0]
		nourishment+=data[1][1]
	print("itemNumber: ", itemNumber,", taste: ",taste,", nourishment: ",nourishment)


func _on_button_button_up() -> void:
	newSoup()
