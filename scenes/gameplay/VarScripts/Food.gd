extends Node


#kolejność: name, nourishment, tastiness, shroomness, base value, color, texture, spoils into, start freshness
var Rot=FoodItem.create("Rot",-5,-5,1,0,Color(0.335, 0.31, 0.283),"res://Assets/pics/rot.png")
var RottenCarrot=FoodItem.create("Rotten Carrot",0,-2,1,0,Color(0.71, 0.493, 0.063, 1.0),"res://Assets/pics/moldycarrot.png",Rot,1)
var RottenMeat=FoodItem.create("Rotten Meat",-2,-3,1,0,Color(0.449, 0.328, 0.311, 1.0),"res://Assets/pics/spoiledmeat.png",Rot,1)
var RottenTurnip=FoodItem.create("Rotten Turnip",-2,-3,1,0,Color(0.354, 0.233, 0.373, 1.0),"res://Assets/pics/moldyturnip.png",Rot,1)
var RottenBread=FoodItem.create("Rotten Bread",0,-1,1,0,Color(0.547, 0.515, 0.271, 1.0),"res://Assets/pics/moldybread.png",Rot,1)
var RottenApple=FoodItem.create("Rotten Apple",0,-2,1,0,Color(0.608, 0.457, 0.255, 1.0),"res://Assets/pics/spoiledapple.png",Rot,1)
var RottenCabbage=FoodItem.create("Rotten Cabbage",0,-3,1,0,Color(0.606, 0.503, 0.259, 1.0),"res://Assets/pics/spoiledcabbage.png",Rot,1)

var Carrot=FoodItem.create("Carrot",2,2,0,3,Color(1.0,0.5,0.0),"res://Assets/pics/carrot.png",RottenCarrot,2)
var Shroom=FoodItem.create("Shroom",2,2,2,0,Color(0.4, 0.234, 0.134, 1.0),"res://Assets/pics/shroom.png")
var Apple=FoodItem.create("Apple",2,2,0,3,Color(0.848, 0.195, 0.196, 1.0),"res://Assets/pics/apple.png",RottenApple,2)
var Bark=FoodItem.create("Bark",1,1,0,1,Color(0.25, 0.116, 0.044, 1.0),"res://Assets/pics/bark.png")
var Bread=FoodItem.create("Bread",3,1,0,3,Color(0.82, 0.663, 0.427, 1.0),"res://Assets/pics/bread.png",RottenBread,2)
var Cabbage=FoodItem.create("Cabbage",3,2,0,3,Color(0.461, 0.589, 0.203, 1.0),"res://Assets/pics/cabbage.png",RottenCabbage,2)
var Cheese=FoodItem.create("Cheese",2,4,0,5,Color(0.855, 0.753, 0.098, 1.0),"res://Assets/pics/cheese.png",Rot,2)
var Chicken=FoodItem.create("Chicken",3,3,0,5,Color(0.82, 0.57, 0.566, 1.0),"res://Assets/pics/chicken.png",RottenMeat,2)
var Dandelion=FoodItem.create("Dandelion",1,1,0,1,Color(0.855, 0.753, 0.098, 1.0),"res://Assets/pics/dandelion.png",Rot,2)
var Egg=FoodItem.create("Egg",3,1,0,2,Color(0.82, 0.663, 0.278, 1.0),"res://Assets/pics/egg.png",Rot,2)
var Milk=FoodItem.create("Milk",2,2,0,3,Color(0.937, 0.928, 0.919, 1.0),"res://Assets/pics/milk.png",Rot,2)
var Nettle=FoodItem.create("Nettle",1,2,0,1,Color(0.255, 0.399, 0.107, 1.0),"res://Assets/pics/nettle.png",Rot,2)
var Potato=FoodItem.create("Potato",3,2,0,2,Color(0.966, 0.835, 0.244, 1.0),"res://Assets/pics/potato.png",Rot,2)
var Sausage=FoodItem.create("Sausage",3,4,0,5,Color(0.67, 0.413, 0.32, 1.0),"res://Assets/pics/sausage.png",RottenMeat,2)
var Turnip=FoodItem.create("Turnip",2,3,0,4,Color(0.653, 0.279, 0.604, 1.0),"res://Assets/pics/turnip.png",RottenTurnip,2)
var Wodka=FoodItem.create("Vodka",0,4,0,40,Color(0.923, 0.923, 0.923, 0.486),"res://Assets/pics/wodka.png")

var ShopFoods=[Carrot,Apple, Bread, Cabbage, Cheese, Chicken, Egg, Milk, Potato, Sausage, Turnip, Wodka]
var NoSell=[Rot, RottenCarrot, RottenMeat, RottenTurnip, RottenBread, RottenApple,RottenCabbage]

#kolejność: Name, expected_nourishment, expected_taste, money, likes:Array, dislikes:Array, happiness, shroomness
var testClient=Customer.create("Testy",5,5,10,[Carrot],[Shroom])

var Protagonist=Customer.create("Bezi",0,0,20)
var Marianna=Customer.create("Marianna",3,5,10)
var Wojciech=Customer.create("Wojciech",6,4,4,[Shroom])
