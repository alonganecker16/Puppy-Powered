extends Area2D

@onready var sfx: AudioStreamPlayer2D = $SFX
@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var game_manager: Node = %GameManager

func _on_body_entered(body: Node2D) -> void:
	game_manager.change_health(10)
	animation_player.play("pickup")
