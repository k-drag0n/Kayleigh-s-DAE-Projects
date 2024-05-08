extends CharacterBody2D

#const UP = Vector2(0, -1)
#const GRAVITY = 20
#const MAXFALLSPEED = 200
#const MAXSPEED = 20

#var motion = Vector2()

#func _physics_process(delta):
#	motion.y += GRAVITY
#	if motion.y > MAXFALLSPEED:
#		motion.y = MAXFALLSPEED
#	
#	if Input.is_action_pressed("right"):
#		motion.x = MAXSPEED
#		print("right")
#	elif Input.is_action_pressed("left"):
#		motion.x = -MAXSPEED
#		print("left")
#	else:
#		motion.x = 0








#@export var speed = 600.0


#func get_input():
#	var input_direction = Input.get_vector("left", "right", "up", "down")
#	velocity = input_direction * speed
#	pass

#func _physics_process(delta):
#	get_input()
#	move_and_slide()
