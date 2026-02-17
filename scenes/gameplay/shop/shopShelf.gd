extends GridContainer

var ProductCount=0
var ProductsDisplayed=[]
var shelf_place=preload("res://scenes/gameplay/drag and drop/kitchen shelf/shelf_place.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	randomize()
	ProductCount=randi_range(5,15)
	for i in ProductCount:
		var newProduct=Food.ShopFoods[randi() % Food.ShopFoods.size()].duplicate()
		ProductsDisplayed.push_back(newProduct)
		add_child(shelf_place.instantiate())
		get_child(i).start(newProduct,newProduct.baseCost)

func reload()->void:
	for child in get_children():
		remove_child(child)
	var i=0
	for item in ProductsDisplayed:
		add_child(shelf_place.instantiate())
		get_child(i).start(item,item.baseCost)
		i+=1


func _on_buy_panel_bought(item) -> void:
	ProductsDisplayed.remove_at(ProductsDisplayed.rfind(item))
	reload()


func _on_sell_panel_sold(item) -> void:
	ProductsDisplayed.push_back(item)
	reload()
