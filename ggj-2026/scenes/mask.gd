extends Area2D

@onready var mask = $"."
@onready var spawn_1 : Area2D = %Spawns
@onready var spawn_2 : Area2D = %Spawns2
@onready var spawn_3 : Area2D = $"../Marker2D3"
@onready var spawn_4 : Area2D = $"../Marker2D4"
@onready var spawn_5 : Area2D = $"../Marker2D5"


func _ready() -> void:
	spawn_mask()
	pass

	
func spawn_mask():
	var posicion = randi_range(1,2)
	if posicion == 1:
		mask.position = spawn_1.position
	elif posicion == 2:
		mask.position = spawn_2.position

func _physics_process(delta: float) -> void:
	if Input.is_action_just_pressed("click"):
		queue_free()
