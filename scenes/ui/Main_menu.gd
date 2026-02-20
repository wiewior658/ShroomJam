extends Control

@onready var new_btn: Button = $Panel/VBoxContainer/New_game_button
@onready var cont_btn: Button = $Panel/VBoxContainer/Continue_button
@onready var opt_btn: Button = $Panel/VBoxContainer/Options_button
@onready var exit_btn: Button = $Panel/VBoxContainer/Exit_button
@onready var y_btn: Button = $Panel/VBoxContainer/Exit_button/Panel/VBoxContainer/HBoxContainer/Yes_button
@onready var n_btn: Button = $Panel/VBoxContainer/Exit_button/Panel/VBoxContainer/HBoxContainer/No_button

const FIRST_SCENE := "res://scenes/levels/Prologue.tscn"
const OPTIONS_SCENE := "res://scenes/ui/options_menu.tscn"

func _ready() -> void:
	new_btn.pressed.connect(_on_new_game)
	cont_btn.pressed.connect(_on_continue)
	opt_btn.pressed.connect(_on_options)
	exit_btn.pressed.connect(_on_exit)
	y_btn.pressed.connect(_on_yes)
	n_btn.pressed.connect(_on_no)

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
	pass
func _on_exit() -> void:
	$Panel/VBoxContainer/Exit_button/Panel.visible = true
	
func _on_yes() -> void:
	get_tree().quit()
func _on_no() -> void:
	$Panel/VBoxContainer/Exit_button/Panel.visible = false
