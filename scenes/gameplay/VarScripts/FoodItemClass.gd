extends Node
class_name FoodItem

@export var itemName : String
@export var nourishment : int
@export var taste : int
@export var shroom : int
@export var baseCost : float
@export var color : Color
@export var img : Texture2D
@export var spoilsIn: int
@export var spoilsInto: FoodItem

static func create(item_name : String, nourish: int, tastiness : int, shroomness : int, 
baseVal : float,col : Color, image : Texture2D, spoilage:FoodItem=null, freshness:int=1):
	var newItem
	newItem=FoodItem.new()
	newItem.itemName=item_name
	newItem.nourishment=nourish
	newItem.taste=tastiness
	newItem.shroom=shroomness
	newItem.baseCost=baseVal
	newItem.color=col
	newItem.img=image
	newItem.spoilsInto=spoilage
	newItem.spoilsIn=freshness
	return newItem

func SpoilFood(list):
	for i in list.size():
		if list[i].spoilsInto!=null:
			if list[i].spoilsIn>0:
				list[i].spoilsIn-=1
			if list[i].spoilsIn==0:
				list[i]=list[i].spoilsInto
