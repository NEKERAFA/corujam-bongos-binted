extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$VBoxContainer/Button2.visible = !OS.has_feature("web")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	#change scene
	get_tree().change_scene_to_file("res://scenes/mocked_scene/mocked_scene.tscn")
	pass # Replace with function body.


func _on_button_2_pressed() -> void:
	#exit game
	get_tree().quit()
	pass # Replace with function body.
