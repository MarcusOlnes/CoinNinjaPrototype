extends Node2D

const speed=40


var direction=1


@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
@onready var ray_cast_hoyre: RayCast2D = $"RayCastHøyre"
@onready var ray_cast_venstre: RayCast2D = $RayCastvenstre


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if ray_cast_hoyre.is_colliding():
		direction=-1
		animated_sprite_2d.flip_h=true
	
	if ray_cast_venstre.is_colliding():
		direction=1
		animated_sprite_2d.flip_h=false
	
	position.x+= direction*speed*delta
