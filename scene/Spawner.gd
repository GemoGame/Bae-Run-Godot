extends Node2D

export (Array, PackedScene) var scenes

var random = RandomNumberGenerator.new()
var selected_scene_index = 0


func _process(delta):
	$Timer.wait_time = random.randf_range(2.0, 3.0)

func _on_Timer_timeout():
	random.randomize()
	selected_scene_index = random.randi_range(0,scenes.size()-1)
	var tmp = scenes[selected_scene_index].instance()
	add_child_below_node(self,tmp)
