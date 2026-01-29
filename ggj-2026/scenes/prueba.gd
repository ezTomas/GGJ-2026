extends Node2D

@onready var marker_2d: Marker2D = $Marker2D
var mask = preload("res://scenes/Mask.tscn")
var mask_fake = preload("res://scenes/mask_fake.tscn")

func  _physics_process(delta: float) -> void:
	pass

func _ready() -> void:
	spawn_aleatorio_mask_fakes(4)
	spawn_mask(1)

func spawn_aleatorio_mask_fakes(cantidad):
	for i in cantidad:
		var new_objeto = mask_fake.instantiate()
		new_objeto.global_position = Vector2(randi_range(50,1000),randi_range(50,600))
		add_child(new_objeto)

func spawn_mask(cantidad):
	for i in cantidad:
		var new_objeto = mask.instantiate()
		new_objeto.global_position = Vector2(randi_range(50,1000),randi_range(50,600))
		add_child(new_objeto)
