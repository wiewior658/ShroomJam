extends TextureRect

var CurrentFood : FoodItem
var Price:float=0
	
func _ready() -> void:
	$Label.hide()
	$Panel.hide()

func start(newFoodItem:FoodItem, price:int=0) -> void:
	CurrentFood=newFoodItem
	if CurrentFood!=null:
		texture=CurrentFood.img
		tooltip_text=CurrentFood.itemName
		if price>0:
			$Label.show()
			$Panel.show()
			Price=price
			$Label.text=str(Price, "zł")
	else:
		RemoveItem()
 
func _get_drag_data(_at_position):
	#setting item following mouse
	var preview_texture = TextureRect.new()
	preview_texture.texture = texture	#set texture of item to follow the mouse
	preview_texture.expand_mode = 1
	preview_texture.size = Vector2(30,30)	#set size of item to follow the mouse
	preview_texture.set_position(Vector2(-15,-15))	#set relative position (without this it's bottom lleft, kind'a awkward)
	var preview = Control.new()
	preview.add_child(preview_texture)
	set_drag_preview(preview)	#attach item following mouse
	
	#setting dragged data
	var DraggedData=[self,CurrentFood,self.get_parent().name,Price]
	return DraggedData

func RemoveItem()->void:
	CurrentFood=null
	texture=null
	tooltip_text=""
	$Label.hide()
	$Panel.hide()
