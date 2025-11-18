extends CanvasLayer


@export var button_size := 128
@export var margin := 64
@export var spacing := 64


func _ready() -> void:
	var viewport_size = get_viewport().get_visible_rect().size
	
	$Up.position = Vector2(
		viewport_size.x - button_size - margin,
		viewport_size.y / 2.0 - button_size - spacing / 2.0
	)
	
	$Down.position = Vector2(
		viewport_size.x - button_size - margin,
		viewport_size.y / 2.0 + spacing / 2.0
	)
	
	$Jump.position = Vector2(
		margin,
		viewport_size.y / 2.0 - button_size / 2.0
	)
