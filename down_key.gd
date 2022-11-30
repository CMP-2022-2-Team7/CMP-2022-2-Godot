extends Area2D

var move_down = false
var velocity = Vector2()

func _on_down_key_body_entered(body: PhysicsBody2D):
	move_down = true
	
func _on_down_key_body_exited(body):
	move_down = false
	
func _process(delta):
	if move_down == true:
		velocity.y += 1
		print("move down!")
