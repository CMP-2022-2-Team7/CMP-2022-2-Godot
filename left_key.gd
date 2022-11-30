extends Area2D

var move_left = false
var velocity = Vector2()

func _on_left_key_body_entered(body: PhysicsBody2D):
	move_left = true
	
func _on_left_key_body_exited(body):
	move_left = false
	
func _process(delta):
	if move_left == true:
		velocity.x -= 1
		print("move left!")
