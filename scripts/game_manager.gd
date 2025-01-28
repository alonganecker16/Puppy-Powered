extends Node

@onready var ui: Control = %UI
@onready var timer: Timer = $Timer

var treat_count = 0
var hp = 100


func add_treat():
	treat_count += 1
	print("Treats: %s" % treat_count)

func change_health(value):
	# Update UI
	hp = ui.update_health_bar(hp + value)
	print(hp)
	if hp == 0:
		print("Restarting")
		timer.start()

func _on_timer_timeout() -> void:
	print("timeout")
	get_tree().reload_current_scene()
