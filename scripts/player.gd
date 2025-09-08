extends CharacterBody2D

class_name Player 

const SPEED = 110.0
const JUMP_VELOCITY = -250.0
const MAX_JUMPS = 2

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

var jumps_left = MAX_JUMPS

func _physics_process(delta: float) -> void:
	# Gravity
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Reset jumps når på bakken
	if is_on_floor():
		jumps_left = MAX_JUMPS

	# Hopp
	if Input.is_action_just_pressed("jump") and jumps_left > 0:
		velocity.y = JUMP_VELOCITY
		jumps_left -= 1

	# Input movement
	var direction := Input.get_axis("move_left", "move_right")

	if direction > 0:
		animated_sprite_2d.flip_h = false
	elif direction < 0:
		animated_sprite_2d.flip_h = true 

	# Animasjoner
	if is_on_floor():
		if direction == 0:
			animated_sprite_2d.play("idle")
		else:
			animated_sprite_2d.play("run")
	else:
		animated_sprite_2d.play("jump")

	# Bevegelse
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
