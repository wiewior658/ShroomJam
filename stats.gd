class_name GlobalStats
extends Resource

var eqFood=[Food.Carrot.duplicate(),Food.Carrot.duplicate(), Food.Carrot.duplicate(), Food.Carrot.duplicate(), Food.MoldyCarrot.duplicate(), Food.Shroom.duplicate(),Food.Carrot.duplicate(), Food.Carrot.duplicate(), Food.MoldyCarrot.duplicate(), Food.Shroom.duplicate(), Food.Rot.duplicate()]
var eqOther=[]
var money:float=20.0

@export var characters_stats: Dictionary ={
	"entity"=0,
	"Bezi"=0,
	"Marianna"=0,
	"Zdzichu"=0,
	"Richie"=0,
	"Barbara"=0,
	"Wojciech"=0,
	"Katerina"=0,
	"Danuta"=0,
	"coins"=0,
}

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
	
func set_stats(new_stats:Dictionary) -> void:
	characters_stats = new_stats
func ShowStats() -> void:
	print(characters_stats)
	
func ChangeStats(name:String, value:int) -> void:
	characters_stats[name] = value
