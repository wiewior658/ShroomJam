extends Control

@onready var new_btn: Button = $Panel/VBoxContainer/New_game_button
@onready var cont_btn: Button = $Panel/VBoxContainer/Continue_button
@onready var opt_btn: Button = $Panel/VBoxContainer/Options_button
@onready var exit_btn: Button = $Panel/VBoxContainer/Exit_button
@onready var y_btn: Button = $Panel/VBoxContainer/Exit_button/Panel/ColorRect/VBoxContainer/HBoxContainer/Yes_button
@onready var n_btn: Button = $Panel/VBoxContainer/Exit_button/Panel/ColorRect/VBoxContainer/HBoxContainer/No_button
@onready var x_btn: TextureButton = $Panel/VBoxContainer/Options_button/Panel/ColorRect/VBoxContainer/HBoxContainer/X_button

const FIRST_SCENE := "res://scenes/levels/prologue1.tscn"
const OPTIONS_SCENE := "res://scenes/ui/options_menu.tscn"
var volume_index := AudioServer.get_bus_index("Master")

func _ready() -> void:
	new_btn.pressed.connect(_on_new_game)
	cont_btn.pressed.connect(_on_continue)
	opt_btn.pressed.connect(_on_options)
	exit_btn.pressed.connect(_on_exit)
	y_btn.pressed.connect(_on_yes)
	n_btn.pressed.connect(_on_no)
	x_btn.pressed.connect(_on_x)
	$Panel/VBoxContainer/Options_button/Panel/ColorRect/VBoxContainer/Music_volume_slider.value = db_to_linear(AudioServer.get_bus_volume_db(volume_index))
	$Panel/VBoxContainer/New_game_button.grab_focus()
	_refresh_continue_state()

func _refresh_continue_state() -> void:
	#cont_btn.disabled = not SaveSystem.has_save()
	pass

func _on_new_game() -> void:
	
	#SaveSystem.new_game(FIRST_SCENE)
	get_tree().change_scene_to_file(FIRST_SCENE)
	
func _on_continue() -> void:
	#if not SaveSystem.has_save():
	#	_refresh_continue_state()
	#	return

	#var save := SaveSystem.load_game()
	#var scene_path := save.get("scene_path", "")
	#if scene_path == "" or not ResourceLoader.exists(scene_path):
		
	#	cont_btn.disabled = true
	#	return
	pass
	#get_tree().change_scene_to_file(scene_path)

func _on_options() -> void:
	#get_tree().change_scene_to_file(OPTIONS_SCENE)
	$Panel/VBoxContainer/Options_button/Panel.visible = true
func _on_exit() -> void:
	$Panel/VBoxContainer/Exit_button/Panel.visible = true
	
func _on_yes() -> void:
	get_tree().quit()
func _on_no() -> void:
	$Panel/VBoxContainer/Exit_button/Panel.visible = false
	$Panel/VBoxContainer/New_game_button.grab_focus()
func _on_x() -> void:
	$Panel/VBoxContainer/Options_button/Panel.visible = false
	$Panel/VBoxContainer/New_game_button.grab_focus()


func _on_music_volume_slider_drag_ended(value_changed: bool) -> void:
	var new_volume = linear_to_db($Panel/VBoxContainer/Options_button/Panel/ColorRect/VBoxContainer/Music_volume_slider.value)
	AudioServer.set_bus_volume_db(volume_index , new_volume)
