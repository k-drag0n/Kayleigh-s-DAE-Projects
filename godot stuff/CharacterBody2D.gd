extends CharacterBody2D


const UPDIR = Vector2.UP
const GRAVITY = 600

@export var speed = 200.0

@export var jumpstrength := -300.0
@export var maxjumps := 2
@export var jumps_made = 0
@export var doublejumpstrength :=  -250.0

@onready var _animated_sprite = $AnimatedSprite2D


var _jumpsmade := 0
var _velocity := Vector2.ZERO


func _physics_process(delta):
	
	var is_falling = _velocity.y > 0.0 and not is_on_floor()
	var is_jumping = Input.is_action_just_pressed("jump") and is_on_floor()
	var is_doublejumping = Input.is_action_just_pressed("jump") and is_falling
	
	velocity.y += delta * GRAVITY
	
	var motion = velocity * delta 
	move_and_collide(motion)
	
	if Input.is_action_pressed("left"):
		velocity.x = -speed
		move_and_slide()
		
	elif Input.is_action_pressed("right"):
		velocity.x = speed
		move_and_slide()
		
		_animated_sprite.play("walk cycle (right)")
	else:
		velocity.x = 0.0
		
		_animated_sprite.stop
	
			
	if Input.is_action_just_pressed("jump"):
		if is_falling:
			print("double jumped")
			velocity.y = doublejumpstrength
		else:
			velocity.y = jumpstrength
			print("jumped")
			jumps_made = 1 + jumps_made


	if Input.is_action_just_pressed("jump"):
		print(jumps_made)
