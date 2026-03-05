extends Node
class_name Customer

@export var Name:String
@export var Nourishment : float
@export var Taste : float
@export var Money : float
@export var Likes: Array
@export var Dislikes: Array
@export var Happiness: float
@export var Shroomness : int

#Customer creator. Returns new Customer
static func create(CName:String,expected_nourishment: int=5, expected_taste : int=5, money : float=10.0, likes:Array=[], dislikes:Array=[], start_happiness:int=0,start_shroomness : int=0):
	var newCustomer: Customer
	newCustomer=Customer.new()
	newCustomer.Name=CName
	newCustomer.Nourishment=expected_nourishment
	newCustomer.Taste=expected_taste
	newCustomer.Money=money
	newCustomer.Likes=likes
	newCustomer.Dislikes=dislikes
	newCustomer.Happiness=start_happiness
	newCustomer.Shroomness=start_shroomness
	
	return newCustomer

#checks Customer likes and dislikes. Returns 2 if likes, -1 if dislikes and 1 if neutral
func check_likes(item:FoodItem):#checks Customer likes and dislikes. Returns 2 if likes, -1 if dislikes and 1 if neutral
	for i in self.Likes:
		if item.itemName==i.itemName:
			print(self.Name," likes it")
			return 4
	for i in self.Dislikes:
		if item.itemName==i.itemName:
			print(self.Name," hates it")
			return -4
	return 1
func pay(soup_taste: float, soup_nourishment: float)-> float:
	var satisfaction = Happiness+Money
	print(soup_taste)
	print(soup_nourishment)
	if(soup_taste<Taste):
		satisfaction-= abs(soup_taste-Taste)
	if(soup_nourishment<Nourishment):
		satisfaction-= abs(soup_nourishment-Nourishment)
	print("I'll pay you ")
	print(satisfaction*100)
	return satisfaction
