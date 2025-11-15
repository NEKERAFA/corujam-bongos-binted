extends Camera2D


@export
var player: Node2D


func _process(_delta: float) -> void:
	if player != null:
		position = player.get_node('Player').global_position
