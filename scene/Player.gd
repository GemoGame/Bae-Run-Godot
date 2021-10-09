extends Node2D

export var jump_velocity = 300.0
export var gravity_scale = 10.0
onready var animation = $AnimatedSprite
var velocity = Vector2()
var floor_normal = Vector2(0, -1)
var position_bae


func _ready():
	animation.play("run")
	position_bae = $Bae.position

func _physics_process(delta):
	velocity.y += gravity_scale
	var diTanah = $Bae.is_on_floor()
	if diTanah:
		velocity.y = 0
		animation.play("run")
		$jump.play(false)
	if diTanah and Input.is_action_pressed("ui_accept"):
		velocity.y -= jump_velocity
		animation.play("jump")
		$jump.play()
	
	$Bae.move_and_slide(velocity, floor_normal)
