extends Node


#kolejność: name, nourishment, tastiness, shroomness, base value, color, texture
var Carrot=FoodItem.create("Carrot",1,1,0,7,Color(1.0,0.5,0.0),load("res://Assets/pics/carrot.png"))
var MoldyCarrot=FoodItem.create("Moldy Carrot",1,-1,0,3,Color(0.71, 0.493, 0.063, 1.0),load("res://Assets/pics/moldy_carrot.png"))
var Shroom=FoodItem.create("Mushroom",1,1,2,5, Color(0.4, 0.234, 0.134, 1.0),load("res://Assets/pics/shroom.png"))

var ShopFoods=[Carrot,MoldyCarrot]
