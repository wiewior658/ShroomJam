extends Node
class_name Customer

@export var Name:String
@export var Nourishment : int
@export var Taste : int
@export var Money : float
@export var Likes: Array
@export var Dislikes: Array
@export var Happiness: int
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
			return 2
	for i in self.Dislikes:
		if item.itemName==i.itemName:
			print(self.Name," hates it")
			return -1
	return 1
