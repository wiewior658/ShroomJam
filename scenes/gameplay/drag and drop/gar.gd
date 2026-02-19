extends TextureRect

var Capacity=5
var EmptyPotColor=Color.BLACK
var EmptyPotPos=35.0

var taste
var nourishment
var soupColor
var soupPos
var contents=[]
var CurrentCustomer: Customer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	CurrentCustomer=Food.testClient
	newSoup()

func newSoup()->void:
	nourishment=0
	taste=0
	soupColor=EmptyPotColor
	soupPos=EmptyPotPos
	contents.clear()
	updateInfo()

func updateInfo()->void:
	#wyświetlanie danych liczbowych
	$"../Staty/Capacity".text=str("Capacity: ",contents.size(),"/",Capacity)
	$"../Staty/Taste".text=str("Taste: ",taste)
	$"../Staty/Nourishment".text=str("Nourishment: ",nourishment)
	
	#wygląd zupy w garze
	find_child("soup").modulate=soupColor
	find_child("soup").position.y=soupPos

func _can_drop_data(_pos, data):
	return data is Array
 
func _drop_data(_pos, data):
#data structure from shelf_place: [self,CurrentFood,self.get_parent().name,Price]
	if data[0].texture!=null and contents.size()<Capacity:
		var droppedFood : FoodItem=data[1]
		if data[0].name!="ShroomPantry":
			data[0].RemoveItem()
			GlobalVar.RemoveFood(droppedFood)
		taste+=droppedFood.taste*CurrentCustomer.check_likes(droppedFood)
		nourishment+=droppedFood.nourishment
		soupPos-=6
		contents.push_back(droppedFood)
		print(contents)
		if contents.size()==0:
			soupColor=droppedFood.color
		else:
			soupColor=Color((soupColor.r*(contents.size()-1)+droppedFood.color.r)/contents.size(),
							(soupColor.g*(contents.size()-1)+droppedFood.color.g)/contents.size(),
							(soupColor.b*(contents.size()-1)+droppedFood.color.b)/contents.size())
			
		updateInfo()
	print("itemNumber: ", contents.size(),", taste: ",taste,", nourishment: ",nourishment)


func _on_button_button_up() -> void:
	newSoup()
