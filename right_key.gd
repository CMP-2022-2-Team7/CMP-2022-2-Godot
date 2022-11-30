extends Area2D

var move_right = false
var velocity = Vector2()

func _on_right_key_body_entered(body: PhysicsBody2D):
	move_right = true
	
func _on_right_key_body_exited(body):
	move_right = false
	
func _process(delta):
	if move_right == true:
		velocity.x += 1
		print("move right!")
