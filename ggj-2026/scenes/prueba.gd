extends Node2D

@onready var marker_2d: Marker2D = $Marker2D
var mask = preload("res://scenes/Mask.tscn")
var mask_fake = preload("res://scenes/mask_fake.tscn")
@onready var label: Label = %Label


func _ready() -> void:
	spawn_aleatorio_mask_fakes(4)
	spawn_mask(1)
	avance()
	label.text = (str(Global.points))



func _physics_process(delta: float) -> void:
	if Global.time <= 0:
		Global.ranking.append(Global.points)
		Global.ranking.sort_custom(func (a,b): return a > b)
		get_tree().change_scene_to_file("res://scenes/ranking.tscn")
		Global.points = 0
		label.text = (str(Global.points))
		Global.time = 3000
		
	print(Global.ranking)

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

func avance():
	if Global.points > 1000 and Global.points <= 2000:
		spawn_aleatorio_mask_fakes(2)
	if Global.points > 2000 and Global.points <= 3000:
		spawn_aleatorio_mask_fakes(3)
	if Global.points > 3000 and Global.points <= 4000:
		spawn_aleatorio_mask_fakes(4)
	if Global.points > 4000 and Global.points <= 5000:
		spawn_aleatorio_mask_fakes(4)
		pass
