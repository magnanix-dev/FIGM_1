extends Node3D

@export var _material : Material
@export var cycles_per_second : float = 1.0
var hue : float = 0.0

func _physics_process(delta):
	hue = fmod(hue + (delta * cycles_per_second), 1.0)
	_material.albedo_color = Color.from_hsv(hue, 1.0, 1.0)
