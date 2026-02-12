extends DialogicBackground

@export var min_time = 1.0 #minimal rng time
@export var max_time = 5.0 #maximum rng time
@export var distance_vector_2d = Vector2(100,100) #how far to tug
@export var tug_duration := 0.15   # how long the movement lasts
@export var tug_speed := 12.0      # higher = snappier
@export var is_enabled := true #toggle script
@export var random_direction_enabled := true #toggle randomness

var is_tugging := false
var tug_target := Vector2.ZERO
var tug_elapsed := 0.0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Input.mouse_mode = Input.MOUSE_MODE_CONFINED
	randomize()
	_mouse_noise()
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if is_tugging and is_enabled:
		tug_elapsed += delta
		var current_pos = get_window().get_mouse_position()
		var new_pos = current_pos.lerp(tug_target, tug_speed * delta)
		Input.warp_mouse(new_pos)
		# stop after a while
		if tug_elapsed>tug_duration:
			is_tugging = false
			_mouse_noise()
func _mouse_noise() -> void:
	tug_elapsed = 0.0
	var delay = randf_range(min_time, max_time)
	await get_tree().create_timer(delay).timeout
	var current_pos = get_window().get_mouse_position()
	if random_direction_enabled:
		var random_direction = Vector2((randi() % 3 -1)*distance_vector_2d.x, (randi()% 3 -1) * distance_vector_2d.y)
		tug_target = current_pos + random_direction
		is_tugging = true
	else :
		var random_direction = distance_vector_2d
		tug_target = current_pos + 	random_direction
		is_tugging = true
	#this script is spooky with how hard it takes control of your mouse so I installed a kill switch when you hit escape, for when the values accidentally go too hard
	#this shouldn't be in the final build
func _input(event):
	if event is InputEventKey:
		if event.pressed and event.keycode == KEY_ESCAPE:
			is_enabled = false
