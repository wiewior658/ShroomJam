extends Node

var eqFood=[Food.Carrot, Food.Carrot, Food.Carrot, Food.MoldyCarrot]
var eqOther=[]
var money:float=20.0

func RemoveFood(item)->void:
	if eqFood.rfind(item)>=0:
		eqFood.remove_at(eqFood.rfind(item))

func AddFood(item) ->void:
	eqFood.push_back(item)

func RemoveOther(item)->void:
	if eqOther.rfind(item)>=0:
		eqOther.remove_at(eqOther.rfind(item))

func AddOther(item) ->void:
	eqOther.push_back(item)
