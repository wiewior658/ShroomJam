extends Node
class_name FoodItem

@export var itemName : String
@export var nourishment : int
@export var taste : int
@export var shroom : int
@export var baseCost : float
@export var color : Color
@export var img : Texture2D

static func create(item_name : String, nourish: int, tastiness : int, shroomness : int, 
baseVal : float,col : Color, image : Texture2D):
	var newItem
	newItem=FoodItem.new()
	newItem.itemName=item_name
	newItem.nourishment=nourish
	newItem.taste=tastiness
	newItem.shroom=shroomness
	newItem.baseCost=baseVal
	newItem.color=col
	newItem.img=image
	return newItem
