extends "res://scenes/gameplay/shop/Buy.gd"
signal sold

func _can_drop_data(_pos, data):
	return data is Array
 
func _drop_data(_pos, data): 
#data structure from shelf_place: [self,CurrentFood,self.get_parent().name,Price]
	if data[1]!=null and data[2]=="playerItems":
		if isSellable(data[1]):
			GlobalVar.money+=data[3]
			data[0].RemoveItem()
			sold.emit(data[1])

func isSellable(item:FoodItem):
	for i in Food.NoSell:
		if i==item:
			print("I don't want this crap")
			return false
	return true
