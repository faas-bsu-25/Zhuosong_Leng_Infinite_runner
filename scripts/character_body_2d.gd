extends CharacterBody2D

var is_hurt = false

func hurt():
	is_hurt = true
	$AnimatedSprite2D.play("hurt")
	$AudioStreamPlayer.play()
	
func _process(delta: float) -> void:
	self.velocity.y += 1000 * delta
	
	if (Input.is_action_pressed("jump")):
		self.velocity.y = -500
		$AnimatedSprite2D.play("jumping")
		$AudioStreamPlayer2.play()
		
	if is_on_floor() and !is_hurt:
		$AnimatedSprite2D.play("running")
	move_and_slide()
	
func _on_animated_sprite_2d_animation_finished() -> void:
	is_hurt = false
	pass # Replace with function body.
