extends Area2D

@export var velocidad : int = 5
var direction : int = 1
@export var horizontal : bool
@export var vertical : bool
@onready var raycast_vertical: RayCast2D = $RaycastVertical
@onready var raycast_vertical_2: RayCast2D = $RaycastVertical2
@onready var raycast_horizontal: RayCast2D = $RaycastHorizontal
@onready var raycast_horizontal_2: RayCast2D = $RaycastHorizontal2



func _physics_process(delta: float) -> void:
	if horizontal:
		if direction == 1:
			position.x += velocidad
		elif direction == -1:
			position.x -= velocidad
	if raycast_horizontal.is_colliding():
		direction = -1
	elif raycast_horizontal_2.is_colliding():
		direction = 1
	if vertical:
		if direction == 1:
			position.y += velocidad
		elif direction == -1:
			position.y -= velocidad
	if raycast_vertical.is_colliding():
		direction = -1
	elif raycast_vertical_2.is_colliding():
		direction = 1
