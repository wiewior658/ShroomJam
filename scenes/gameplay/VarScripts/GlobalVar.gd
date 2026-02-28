extends Node

var eqFood=[Food.Carrot.duplicate(),Food.Carrot.duplicate(), Food.Carrot.duplicate(), Food.Carrot.duplicate()]
var eqOther=[]
var money:float=50.0

func RemoveFood(item)->void:
	if eqFood.rfind(item)>=0:
		eqFood.remove_at(eqFood.rfind(item))

func AddFood(item) ->void:
	eqFood.push_back(item.duplicate())

func RemoveOther(item)->void:
	if eqOther.rfind(item)>=0:
		eqOther.remove_at(eqOther.rfind(item))

func AddOther(item) ->void:
	eqOther.push_back(item.duplicate())
