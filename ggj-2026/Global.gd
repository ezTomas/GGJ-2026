extends Node

var points: int
var juego_en_marcha: bool = false
var time: float = 300
var minutes: float = 0
var seconds: int = 0
var msec: int = 0
var ranking : Array[int] = []



var sprite_index: int = 0
var rng := RandomNumberGenerator.new()

func _process(delta: float) -> void:
	if juego_en_marcha == true:
		time -= delta
		msec = fmod(time, 1) * 100
		seconds = fmod(time, 60)
		minutes = fmod(time, 3600) / 60

func _ready():
	rng.randomize()

func stop():
	set_process(false)
