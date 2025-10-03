extends StaticBody2D


func _physics_process(delta: float) -> void:
	self.position.x -= 100 * delta
