extends Area2D

@onready var timer: Timer = $Timer
@onready var game_manager: Node = $"../%GameManager"

func _on_body_entered(body: Node2D) -> void:
	if get_parent().get_meta("damageType") != "boundary":
		print("%s HP" % get_parent().get_meta("damage"))
		game_manager.change_health(-25)
	else:
		print("Game Over")
		timer.start()

func _on_timer_timeout() -> void:
	get_tree().reload_current_scene()
