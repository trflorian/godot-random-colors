extends Node2D

@export var scene_to_spawn: PackedScene
@export var num_x: int
@export var num_y: int
@export var spacing: float

@export var use_hsv: bool = false

func _ready() -> void:
	var width: float = (num_x - 1) * spacing
	var height: float = (num_y - 1) * spacing
	for x in range(num_x):
		for y in range(num_y):
			var instance = scene_to_spawn.instantiate() as RandomColorSprite
			instance.use_hsv = use_hsv
			instance.global_position = Vector2(
				-width/2 + spacing * x,
				-height/2 + spacing * y,
			)
			add_child(instance)
