extends Node


#kolejność: name, nourishment, tastiness, shroomness, base value, color, texture
var Rot=FoodItem.create("Rot",-5,-5,1,0,Color(0.335, 0.31, 0.283),"res://Assets/pics/rot.png")
var MoldyCarrot=FoodItem.create("Moldy Carrot",1,-1,0,3,Color(0.71, 0.493, 0.063, 1.0),"res://Assets/pics/moldy_carrot.png", Rot,2)
var Carrot=FoodItem.create("Carrot",1,1,0,7,Color(1.0,0.5,0.0),"res://Assets/pics/carrot.png",MoldyCarrot,5)
var Shroom=FoodItem.create("Mushroom",1,1,2,5, Color(0.4, 0.234, 0.134, 1.0),"res://Assets/pics/shroom.png")


var ShopFoods=[Carrot,MoldyCarrot]
var NoSell=[Rot]

var testClient=Customer.create("Test",5,5,10,[Carrot],[Shroom])
