extends GridContainer

var ProductCount=0
var ProductsDisplayed=[]
var shelf_place=preload("res://scenes/gameplay/drag and drop/kitchen shelf/shelf_place.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print(name, "   testing ready parent")
	randomize()
	ProductCount=randi_range(2,15)
	for i in ProductCount:
		var newProduct=Food.ShopFoods[randi() % Food.ShopFoods.size()]
		ProductsDisplayed.push_back(newProduct)
		add_child(shelf_place.instantiate())
		get_child(i).start(newProduct,true)
	print(ProductsDisplayed)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
