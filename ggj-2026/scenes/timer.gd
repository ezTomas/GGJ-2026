extends Label

func _process(delta: float) -> void:
	$HBoxContainer/Minutes.text = "%02d:" % Global.minutes
	$HBoxContainer/Seconds.text = "%02d." % Global.seconds
	$HBoxContainer/Msecs.text = "%02d" % Global.msec

func stop():
	set_process(false)
