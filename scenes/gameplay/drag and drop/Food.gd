extends Node

#array structure: taste, nourishment, color, name, texture
var Carrot=[2,1,Color(1.0,0.5,0.0), "Carrot", "res://scenes/gameplay/drag and drop/pics/carrot.png"]
var MoldyCarrot=[-1,1,Color(0.71, 0.493, 0.063, 1.0), "Moldy Carrot", "res://scenes/gameplay/drag and drop/pics/moldy_carrot.png"]
var Shroom=[1,1,Color(0.4, 0.234, 0.134, 1.0), "Mushroom", "res://scenes/gameplay/drag and drop/pics/shroom.png"]
var Blue=[2,1,Color(0.0, 0.533, 0.94, 1.0), "Blue", "res://scenes/gameplay/drag and drop/pics/blue.png"]

var FoodOwned=[Carrot,Carrot,MoldyCarrot,Carrot,MoldyCarrot,Carrot,MoldyCarrot,Blue,Blue,Blue,Blue]
func RemoveItem(item)->void:
	FoodOwned.remove_at(FoodOwned.rfind(item))
