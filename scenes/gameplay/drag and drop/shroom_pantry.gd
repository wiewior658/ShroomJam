extends TextureRect


func _get_drag_data(_at_position):
	#setting item following mouse
	
	var preview_texture = TextureRect.new()
	preview_texture.texture = Food.Shroom.img	#set texture of item to follow the mouse
	preview_texture.expand_mode = 1
	preview_texture.size = Vector2(30,30)	#set size of item to follow the mouse
	preview_texture.set_position(Vector2(-15,-15))	#set relative position (without this it's bottom lleft, kind'a awkward)
	var preview = Control.new()
	preview.add_child(preview_texture)
	set_drag_preview(preview)	#attach item following mouse
	
	#setting dragged data
	var DraggedData=[self,Food.Shroom]
	return DraggedData
