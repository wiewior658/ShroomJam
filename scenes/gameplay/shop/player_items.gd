extends GridContainer

var shelf_place=preload("res://scenes/gameplay/drag and drop/kitchen shelf/shelf_place.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	reload()

func reload()->void:
	$"../../MoneyLbl".text=str("Money: ",GlobalVar.money,"zł")
	for child in get_children():
		remove_child(child)
	var i=0
	for item in GlobalVar.eqFood:
		add_child(shelf_place.instantiate())
		get_child(i).start(item,item.baseCost-1)
		i+=1

func _on_buy_panel_bought(item) -> void:
	GlobalVar.AddFood(item)
	$"../../MoneyLbl".text=str("Money: ",GlobalVar.money,"zł")
	reload()

func _on_sell_panel_sold(item) -> void:
	GlobalVar.RemoveFood(item)
	$"../../MoneyLbl".text=str("Money: ",GlobalVar.money,"zł")
	reload()
