extends Node

func RemoveItem(item)->void:
	FoodOwned.remove_at(FoodOwned.rfind(item))

func AddItem(item) ->void:
	FoodOwned.push_back(item)

#kolejność: name, nourishment, tastiness, shroomness, min value, max value, color, texture
var Carrot=FoodItem.create("Carrot",1,1,0,5,10,Color(1.0,0.5,0.0),load("res://scenes/gameplay/drag and drop/pics/carrot.png"))
var MoldyCarrot=FoodItem.create("Moldy Carrot",1,-1,0,1,5,Color(0.71, 0.493, 0.063, 1.0),load("res://scenes/gameplay/drag and drop/pics/moldy_carrot.png"))
var Shroom=FoodItem.create("Mushroom",1,1,2,0,10, Color(0.4, 0.234, 0.134, 1.0),load("res://scenes/gameplay/drag and drop/pics/shroom.png"))


var FoodOwned=[Carrot,Carrot,MoldyCarrot,Carrot,MoldyCarrot,Carrot,MoldyCarrot]
