extends Node2D

var ground = preload("res://animatable_body_2d.tscn")


func _on_timer_timeout() -> void:
	var new_ground = ground.instantiate() 
	get_node("/root/Node2D").add_child(new_ground)
	new_ground.position.y = randi_range(500,648)
	new_ground.position.x = 1300
	pass # Replace with function body.
