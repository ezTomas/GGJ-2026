extends Area2D

var kill = false
@onready var mask = $"."
@onready var spawn_1 : Area2D = %Spawns
@onready var spawn_2 : Area2D = %Spawns2
@onready var spawn_3 : Area2D = $"../Marker2D3"
@onready var spawn_4 : Area2D = $"../Marker2D4"
@onready var spawn_5 : Area2D = $"../Marker2D5"




func _ready() -> void:
	#spawn_mask()
	pass


func spawn_mask():
	var posicion = randi_range(1,2)
	if posicion == 1:
		mask.position = spawn_1.position
	elif posicion == 2:
		mask.position = spawn_2.position


func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("click") and kill:
		puntos()
		Global.sprite_index += 1
		Global.check_bien = true
		get_tree().reload_current_scene()

		

func _on_mouse_entered() -> void:
	kill = true
	
func puntos():
	Global.points += 100


func _on_mouse_exited() -> void:
	kill = false
	pass # Replace with function body.


func _on_rotacion_timeout() -> void:
	rotate(randf_range(-90,90))
	pass # Replace with function body.


func _on_movimiento_timeout() -> void:
	position = Vector2(randf_range(50,1000),randf_range(50, 600))
	pass # Replace with function body.
