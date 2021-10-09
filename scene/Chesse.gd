extends Node2D

export var speed = 7
signal game_over

func _process(delta):
	self.position.x -= speed
	if self.position.x < -1100:
		queue_free()


func _on_Area2D_body_entered(body):
	get_tree().change_scene("res://scene/Main.tscn")
