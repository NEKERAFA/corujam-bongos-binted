extends Node


var movement: int = -500#-128
const MOVEMENT_INCREASE : int = 100
const MIN_MOVEMENT:int=100

func get_velocity() -> Vector2:
	return Vector2.RIGHT * float(movement)

func upgrade_movement():
	movement = clamp(movement-MOVEMENT_INCREASE, MIN_MOVEMENT, MIN_MOVEMENT*100)
	
func downgrade_movement():
	movement = clamp(movement+MOVEMENT_INCREASE, MIN_MOVEMENT, MIN_MOVEMENT*100)
