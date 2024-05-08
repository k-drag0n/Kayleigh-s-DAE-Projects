extends CharacterBody2D


const UPDIR = Vector2.UP
const GRAVITY = 600

@export var speed = 200.0

@export var jumpstrength := -400.0
@export var maxjumps := 2
@export var jumps_made = 0
@export var doublejumpstrength :=  -50.0


var _jumpsmade := 0
var _velocity := Vector2.ZERO

func _physics_process(delta):
	velocity.y += delta * GRAVITY
	
	var motion = velocity * delta 
	move_and_collide(motion)
	
	if Input.is_action_pressed("left"):
		velocity.x = -speed
		move_and_slide()
	elif Input.is_action_pressed("right"):
		velocity.x = speed
		move_and_slide()
	else:
		velocity.x = 0.0
	
	if is_on_floor():
		if Input.is_action_just_pressed("jump"):
			print("jumped")
			velocity.y = jumpstrength

	var is_falling = _velocity.y > 0.0 and not is_on_floor()
	var is_jumping = Input.is_action_just_pressed("jump") and is_on_floor()
	var is_doublejumping = Input.is_action_just_pressed("jump") and is_falling
