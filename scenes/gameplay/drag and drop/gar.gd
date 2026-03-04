extends TextureRect

var Capacity=5
var EmptyPotColor=Color.BLACK
var EmptyPotPos=35.0

var shroomnes = 0
var taste
var nourishment
var soupColor
var soupPos
var contents=[]
var CurrentCustomer: Customer
var AvaibleCustomers = [1,2,3,4,5,6]
var temp : String

signal splash

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Dialogic.VAR.CustomersLeft = 3
	AvaibleCustomers.shuffle()
	CurrentCustomer=Food.allCustomers[str(AvaibleCustomers.pop_front())]
	if Dialogic.VAR.Tutorial == true:
		CurrentCustomer = Food.Marianna
		Dialogic.VAR.CustomersLeft = 1
	setSprite()
	newSoup()

func newSoup()->void:
	if(contents.size()>0):
		_serve_customer()
	else:
		print("Can't serve empty plate")
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
		taste+=droppedFood.taste+CurrentCustomer.check_likes(droppedFood)
		nourishment+=droppedFood.nourishment
		shroomnes += droppedFood.shroom
		soupPos-=6
		contents.push_back(droppedFood.itemName)
		print(contents)
		if contents.size()==0:
			soupColor=droppedFood.color
		else:
			soupColor=Color((soupColor.r*(contents.size()-1)+droppedFood.color.r)/contents.size(),
							(soupColor.g*(contents.size()-1)+droppedFood.color.g)/contents.size(),
							(soupColor.b*(contents.size()-1)+droppedFood.color.b)/contents.size())
			
		updateInfo()
	splash.emit(-30)

func _on_button_button_up() -> void:
	newSoup()
	
func _serve_customer() -> void:
	Dialogic.VAR.Money+=CurrentCustomer.pay(taste, nourishment)
	changeShroomnes()
	Dialogic.VAR.CustomersLeft-=1
	if Dialogic.VAR.CustomersLeft > 0:
		AvaibleCustomers.shuffle()
		update_customer(Food.allCustomers[str(AvaibleCustomers.pop_front())])
		setSprite()
			
	else:
		#get_tree().change_scene_to_file(Dialogic.VAR.NextScene)
		#print(Dialogic.VAR.NextScene)
		#Dialogic.start(Dialogic.VAR.NextScene)
		get_tree().change_scene_to_file(Dialogic.VAR.NextScene)
	#print(CurrentCustomer.Name)
func update_customer(new_customer : Customer) -> void:
	CurrentCustomer = new_customer
	
func setSprite() -> void:
	match CurrentCustomer.Name:
				"Marianna":
					$"../CustomerSprite".texture = load("res://assets/art/characters/Marianna/Base0.png")
				"Zdzichu":
					$"../CustomerSprite".texture = load("res://assets/art/characters/Zdzich/Drunk3.png")
				"Richie":
					$"../CustomerSprite".texture = load("res://assets/art/characters/Richie/Base0.png")
				"Danuta":
					$"../CustomerSprite".texture = load("res://assets/art/characters/Danuta/Base0.png")
				"Katerina":
					$"../CustomerSprite".texture = load("res://assets/art/characters/Katka/Base0.png")
				"Barbara":
					$"../CustomerSprite".texture = load("res://assets/art/characters/Barbara/Base0.png")
				"Alina":
					$"../CustomerSprite".texture = load("res://assets/art/characters/Alina/Base0.png")
	
func changeShroomnes() -> void:
	match CurrentCustomer.Name:
		"Marianna":
			print(Dialogic.VAR.Shroomness.Marianna)
			Dialogic.VAR.Shroomness.Marianna += shroomnes
			print(Dialogic.VAR.Shroomness.Marianna)
		"Zdzichu":
			Dialogic.VAR.Shroomness.Zdzichu += shroomnes
		"Richie":
			Dialogic.VAR.Shroomness.Richie += shroomnes
		"Danuta":
			Dialogic.VAR.Shroomness.Danuta += shroomnes
		"Katerina":
			Dialogic.VAR.Shroomness.Katerina += shroomnes
		"Barbara":
			Dialogic.VAR.Shroomness.Barbara += shroomnes
		"Alina":
			Dialogic.VAR.Shroomness.Alina += shroomnes
	
	
