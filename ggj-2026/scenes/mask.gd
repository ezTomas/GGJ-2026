extends Area2D

@onready var mask = $"."
@onready var spawn_1 : Marker2D = $"../Marker2D"
@onready var spawn_2 : Marker2D = $"../Marker2D2"
@onready var spawn_3 : Marker2D = $"../Marker2D3"
@onready var spawn_4 : Marker2D = $"../Marker2D4"
@onready var spawn_5 : Marker2D = $"../Marker2D5"

func _ready() -> void:
	spawn_mask()

func spawn_mask():
	var posicion = randi_range(1,5)
	if posicion == 1:
		mask.position = spawn_1.position
	elif posicion == 2:
		mask.position = spawn_2.position
	elif posicion == 3:
		mask.position = spawn_3.position
	elif posicion == 4:
		mask.position = spawn_4.position
	elif posicion == 5:
		mask.position = spawn_5.position
