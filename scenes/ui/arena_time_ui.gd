extends CanvasLayer

@export var arena_time_manager: Node
@onready var label = $MarginContainer/Label

func _process(delta: float) -> void:
	if arena_time_manager == null:
		return
	var time_elapsed = arena_time_manager.get_time_elapsed()
	label.text = fmt_seconds(time_elapsed)

func fmt_seconds(seconds: float):
	var minutes = floor(seconds / 60)
	var remaining = seconds - minutes * 60
	return str(minutes) + ":" + ("%02d" % floor(remaining))
	
