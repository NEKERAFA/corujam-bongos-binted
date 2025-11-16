extends AnimatedSprite2D

func _physics_process(delta: float) -> void:
	if visible:
		position.x += GameManager.movement * delta

func _on_animation_finished() -> void:
	hide()


func _on_visibility_changed() -> void:
	if visible:
		play("earth_out")
