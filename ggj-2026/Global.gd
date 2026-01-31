extends Node

var points: int

var time: float = 300
var minutes: float = 0
var seconds: int = 0
var msec: int = 0
var ranking : Array[int] = []


func _process(delta: float) -> void:
	time -= delta
	msec = fmod(time, 1) * 100
	seconds = fmod(time, 60)
	minutes = fmod(time, 3600) / 60


func stop():
	set_process(false)
