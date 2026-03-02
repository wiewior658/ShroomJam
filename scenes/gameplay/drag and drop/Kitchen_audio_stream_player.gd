extends AudioStreamPlayer

func _playPantryOpen()->void:
	self.stream=load("res://scenes/gameplay/drag and drop/sounds/freesound_community-cabinet-door-open-100526_short.mp3")
	self.volume_db=0
	self.play()

func _playPantryClose()->void:
	self.stream=load("res://scenes/gameplay/drag and drop/sounds/freesound_community-wooden-door-slamming-open-79933_short.mp3")
	self.volume_db=0
	self.play()

func _playSplash(volume:float=-10)->void:
	self.stream=load("res://scenes/gameplay/drag and drop/sounds/freesound_community-water-splash-46402.mp3")
	self.volume_db=volume
	self.play()

func _playSwipe()->void:
	self.stream=load("res://scenes/gameplay/drag and drop/sounds/freesound_community-fh_paper_swipe_surface2_short_01wav-14432.mp3")
	self.volume_db=0
	self.play()
