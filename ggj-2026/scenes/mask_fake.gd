extends Area2D

var click : bool

func _physics_process(delta: float) -> void:
	
	pass
	
func _input(event: InputEvent) -> void:
	if Input.is_action_pressed("click") and click == true:
		Global.time -= 5


func _on_mouse_entered() -> void:
	click = true
	pass # Replace with function body.


func _on_mouse_exited() -> void:
	click = false
	pass # Replace with function body.


func _on_timer_timeout() -> void:
	rotate(randf_range(-90,90))
	pass # Replace with function body.


func _on_movimiento_timeout() -> void:
	position = Vector2(randf_range(50,1000),randf_range(50, 600))
	pass # Replace with function body.
