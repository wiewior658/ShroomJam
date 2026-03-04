extends Node2D

@export var cameraXpos:float
var cameraYpos: float=322.0
var velocity:float=50.0
var _save : SaveStats

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	autosave()
	cameraXpos=$Camera2D.position.x

func _process(delta)->void:
	if $Camera2D.position.x!=cameraXpos:
		var new_pos = $Camera2D.position.lerp(Vector2(cameraXpos, cameraYpos), velocity * delta)
		$Camera2D.position.x=new_pos.x
	pass
func _on_go_right_btn_button_up() -> void:
	cameraXpos=576.0
	

func _on_go_left_btn_button_up() -> void:
	cameraXpos=-576.0
func change_customer(customer_name : String) -> void:
	pass

func autosave() -> void:
	_save = SaveStats.new()
	_save.write_SaveGame()
