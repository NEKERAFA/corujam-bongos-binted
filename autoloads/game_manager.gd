extends Node


var _movement: int = -128
const MOVEMENT_INCREASE : int = 100
const MIN_MOVEMENT:int=100
func get_velocity() -> Vector2:
	return Vector2.RIGHT * float(_movement)

func upgrade_movement():
	_movement = clamp(_movement+MOVEMENT_INCREASE, MIN_MOVEMENT, MIN_MOVEMENT*100)
	
func downgrade_movement():
	_movement = clamp(_movement-MOVEMENT_INCREASE, MIN_MOVEMENT, MIN_MOVEMENT*100)
