extends Area2D


func _process(delta: float) -> void:
	self.position.x -= 100 * delta


func _on_body_entered(body: Node2D) -> void:
	body.hurt()
	pass # Replace with function body.
