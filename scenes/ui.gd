extends Control

@onready var progress_bar: ProgressBar = $PlayerInfoBox/ProgressBar

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func update_health_bar(health):
	progress_bar.value = health
	return progress_bar.value
