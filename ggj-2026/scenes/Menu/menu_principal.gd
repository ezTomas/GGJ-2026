extends Control
@onready var musica_menu: AudioStreamPlayer2D = $Musica_Menu
@onready var boton_jugar: AudioStreamPlayer2D = $BotonJugar

func _ready() -> void:
	musica_menu.play()
	
func _on_boton_jugar_pressed() -> void:
	musica_menu.stop()
	boton_jugar.play()
	await  get_tree().create_timer(1.0).timeout

	Global.time = 300
	Global.points = 0

	get_tree().change_scene_to_file("res://scenes/Prueba.tscn")


func _on_boton_salir_pressed() -> void:
	get_tree().quit()
