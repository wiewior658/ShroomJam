extends Panel
signal bought

func _can_drop_data(_pos, data):
	return data is Array
 
func _drop_data(_pos, data): 
#data structure from shelf_place: [self,CurrentFood,self.get_parent().name,Price]
	if data[1]!=null and data[2]=="shop":
		if data[3]<=GlobalVar.money:
			GlobalVar.money-=data[3]
			data[0].RemoveItem()
			bought.emit(data[1])
		else:
			print("Za mało środków, biedaku")
