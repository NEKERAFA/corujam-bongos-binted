extends Node


@export
var player: Node2D = null


func _ready() -> void:
	GameManager.game_is_started = true
	GameManager.max_height_reached.connect(_on_max_height_reached)


func _on_max_height_reached(height: float) -> void:
	if player != null and not %HeightMark.visible:
		%HeightMark.position.x = player.get_node('Player').global_position.x - 64
		%HeightMark.position.y = height
		%HeightMark.show()
		%HeightMark.get_node("HeightLabel").text = "%d cm" % (-height)
