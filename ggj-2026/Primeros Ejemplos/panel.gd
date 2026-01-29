extends Panel

var time: float = 0.0
var minutes: float = 0
var seconds: int = 0
var msec: int = 0

func _process(delta: float) -> void:
	time += delta
	msec = fmod(time, 1) * 100
	seconds = fmod(time, 60)
	minutes = fmod(time, 3600) / 60
	$HBoxContainer/Minutes.text = "%02d:" % minutes
	$HBoxContainer/Seconds.text = "%02d." % seconds
	$HBoxContainer/Msecs.text = "%03d" % msec

func stop():
	set_process(false)
