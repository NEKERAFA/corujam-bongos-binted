extends Node2D
class_name WormPart

var worm_part_data := WormPartData.new()
var n_frames: int

func update_position() -> void:
	if len(worm_part_data.previous_part_data.positions_array) >= n_frames:
		var part_position: float = worm_part_data.previous_part_data.positions_array.pop_back()
		worm_part_data.positions_array.insert(0, part_position)
		position.y = part_position

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.
