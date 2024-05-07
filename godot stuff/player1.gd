extends CharacterBody2D

@export var maxspeed = 300
@export var acceleration = 1500
@export var friction = 1200

@export var axis = Vector2.ZERO

func physics(delta):
	pass
	
func getinputaccess():
	axis.x = int(Input.is_action_pressed("move_right")) - int(Input.is_action_pressed("move_left"))
	axis.x = int(Input.is_action_pressed("move_right")) - int(Input.is_action_pressed("move_left"))
