extends Sprite2D

class_name RandomColorSprite

var use_hsv: bool = false

func _ready() -> void:
	_set_random_modulate_color()

func _set_random_modulate_color():
	if use_hsv:
		modulate = _generate_random_hsv_color()
	else:
		modulate = _generate_random_rgb_color()

func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("generate_random_color"):
		_set_random_modulate_color()

func _generate_random_rgb_color() -> Color:
	return Color(
		randf(), # RED
		randf(), # GREEN
		randf(), # BLUE
	)

func _generate_random_hsv_color() -> Color:
	return Color.from_hsv(
		randf_range(0.25, 0.45), # HUE
		randf_range(0.2, 0.6), # SATURATION
		randf_range(0.9, 1.0), # BRIGHTNESS
	)
