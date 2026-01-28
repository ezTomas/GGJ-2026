extends Node2D

@onready var marker_2d: Marker2D = $Marker2D
var mask = preload("res://scenes/Mask.tscn")

func  _physics_process(delta: float) -> void:
	if mask == null:
		mask.instantiate()





	
	
	
	
	
	
	
	
	
	
	
	
	
