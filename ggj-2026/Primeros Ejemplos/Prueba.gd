extends Area2D



func _input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed and $".".is_in_group("Mascara"):
		on_click()

func on_click():
	Global.points += 100
	get_tree().reload_current_scene()
