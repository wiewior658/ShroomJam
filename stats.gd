class_name GlobalStats
extends Resource

#var eqFood=[Food.Carrot.duplicate(),Food.Carrot.duplicate(), Food.Carrot.duplicate(), Food.Carrot.duplicate(), Food.MoldyCarrot.duplicate(), Food.Shroom.duplicate(),Food.Carrot.duplicate(), Food.Carrot.duplicate(), Food.MoldyCarrot.duplicate(), Food.Shroom.duplicate(), Food.Rot.duplicate()]
var eqOther=[]
@export var money:float=20.0
@export var pronounce :String = "" #f m nb
@export var name : String = "Bezi" #name of charackter

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
}

#func RemoveFood(item)->void:
#	if eqFood.rfind(item)>=0:
#		eqFood.remove_at(eqFood.rfind(item))

#func AddFood(item) ->void:
#	eqFood.push_back(item.duplicate())

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
	
func setParams() -> void:
	name = Dialogic.VAR.Player.PlayerName
	pronounce = Dialogic.VAR.Player.Pronouns
	ChangeStats("entity",Dialogic.VAR.Shroomnes.entity)
	ChangeStats("Bezi",Dialogic.VAR.Shroomnes.Bezi)
	ChangeStats("Marianna",Dialogic.VAR.Shroomnes.Marianna)
	ChangeStats("Zdzichu",Dialogic.VAR.Shroomnes.Zdzichu)
	ChangeStats("Richie",Dialogic.VAR.Shroomnes.Richie)
	ChangeStats("Barbara",Dialogic.VAR.Shroomnes.Barbara)
	ChangeStats("Wojciech",Dialogic.VAR.Shroomnes.Wojciech)
	ChangeStats("Katerina",Dialogic.VAR.Shroomnes.Katerina)
	ChangeStats("Danuta",Dialogic.VAR.Shroomnes.Danuta)
	
func setGlobalVar() -> void:
	Dialogic.VAR.Player.PlayerName = name
	Dialogic.VAR.Player.Pronouns = pronounce
	Dialogic.VAR.Shroomnes.entity = characters_stats["entity"]
	Dialogic.VAR.Shroomnes.Bezi = characters_stats["Bezi"]
	Dialogic.VAR.Shroomnes.Marianna = characters_stats["Marianna"]
	Dialogic.VAR.Shroomnes.Zdzichu = characters_stats["Zdzichu"]
	Dialogic.VAR.Shroomnes.Richie = characters_stats["Richie"]
	Dialogic.VAR.Shroomnes.Barbara = characters_stats["Barbara"]
	Dialogic.VAR.Shroomnes.Wojciech = characters_stats["Wojciech"]
	Dialogic.VAR.Shroomnes.Katerina = characters_stats["Katerina"]
	Dialogic.VAR.Shroomnes.Danuta = characters_stats["Danuta"]
