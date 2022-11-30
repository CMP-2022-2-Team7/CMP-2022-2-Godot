extends Area2D

var move_up = false
var velocity = Vector2()

func _on_up_key_body_entered(body: PhysicsBody2D):
	move_up = true
	
func _on_up_key_body_exited(body):
	move_up = false
	
func _process(delta):
	if move_up == true:
		velocity.y -= 1
		print("move up!")
