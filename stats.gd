class_name GlobalStats
extends Resource

#var eqFood=[Food.Carrot.duplicate(),Food.Carrot.duplicate(), Food.Carrot.duplicate(), Food.Carrot.duplicate(), Food.MoldyCarrot.duplicate(), Food.Shroom.duplicate(),Food.Carrot.duplicate(), Food.Carrot.duplicate(), Food.MoldyCarrot.duplicate(), Food.Shroom.duplicate(), Food.Rot.duplicate()]
var eqOther=[]
@export var money:float=20.0
@export var pronounce :String = "" #f m nb
@export var name : String = "Bezi" #name of charackter
@export var CurrentScene = ""
@export var NextScnee = ""
@export var eq = []
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
	print(eq)
	print(characters_stats)
	
func ChangeStats(name:String, value:int) -> void:
	characters_stats[name] = value
	
func setParams() -> void:
	name = Dialogic.VAR.PlayerName
	pronounce = Dialogic.VAR.Pronouns
	ChangeStats("entity",Dialogic.VAR.Shroomness.entity)
	ChangeStats("Bezi",Dialogic.VAR.Shroomness.Bezi)
	ChangeStats("Marianna",Dialogic.VAR.Shroomness.Marianna)
	ChangeStats("Zdzichu",Dialogic.VAR.Shroomness.Zdzichu)
	ChangeStats("Richie",Dialogic.VAR.Shroomness.Richie)
	ChangeStats("Barbara",Dialogic.VAR.Shroomness.Barbara)
	ChangeStats("Wojciech",Dialogic.VAR.Shroomness.Wojciech)
	ChangeStats("Katerina",Dialogic.VAR.Shroomness.Katerina)
	ChangeStats("Danuta",Dialogic.VAR.Shroomness.Danuta)
	CurrentScene = Dialogic.VAR.CurrentScene
	NextScnee = Dialogic.VAR.NextScene
	eq = GlobalVar.eqFood
	
	
func setGlobalVar() -> void:
	Dialogic.VAR.PlayerName = name
	Dialogic.VAR.Pronouns = pronounce
	Dialogic.VAR.Shroomness.entity = characters_stats["entity"]
	Dialogic.VAR.Shroomness.Bezi = characters_stats["Bezi"]
	Dialogic.VAR.Shroomness.Marianna = characters_stats["Marianna"]
	Dialogic.VAR.Shroomness.Zdzichu = characters_stats["Zdzichu"]
	Dialogic.VAR.Shroomness.Richie = characters_stats["Richie"]
	Dialogic.VAR.Shroomness.Barbara = characters_stats["Barbara"]
	Dialogic.VAR.Shroomness.Wojciech = characters_stats["Wojciech"]
	Dialogic.VAR.Shroomness.Katerina = characters_stats["Katerina"]
	Dialogic.VAR.Shroomness.Danuta = characters_stats["Danuta"]
	Dialogic.VAR.CurrentScene = CurrentScene
	Dialogic.VAR.NextScene = NextScnee
	GlobalVar.eqFood = eq
