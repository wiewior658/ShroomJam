extends TextureRect

var FoodItem =null
	
func start(newFoodItem) -> void:
	FoodItem=newFoodItem
	if FoodItem!=null:
		texture=load(FoodItem[-1])
		tooltip_text=FoodItem[-2]
	else:
		RemoveItem()
 
func _get_drag_data(at_position):
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
	var DraggedData=[self,FoodItem]
	return DraggedData

func RemoveItem()->void:
	FoodItem=null
	texture=null
	tooltip_text=""
	pass
