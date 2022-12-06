extends KinematicBody2D

export (int) var speed = 100
var velocity = Vector2()
var move_left = false
var move_right = false
var move_up = false
var move_down = false

func _on_left_key_body_entered(body):
	move_left = true
	
func _on_left_key_body_exited(body):
	move_left = false

func _on_right_key_body_entered(body):
	move_right = true

func _on_right_key_body_exited(body):
	move_right = false

func _on_up_key_body_entered(body):
	move_up = true

func _on_up_key_body_exited(body):
	move_up = false

func _on_down_key_body_entered(body):
	move_down = true

func _on_down_key_body_exited(body):
	move_down = false

func get_input():
	velocity = Vector2()
	if move_left == true:
		velocity.x -= 1
		get_node("/root/World/main_direction/left_key2").show()
	if move_left == false:
		get_node("/root/World/main_direction/left_key2").hide()
	if move_right == true:
		velocity.x += 1
	if move_up == true:
		velocity.y -= 1
	if move_down == true:
		velocity.y += 1
	velocity = velocity.normalized() * speed

func _physics_process(delta):
	get_input()
	velocity = move_and_slide(velocity)

onready var animation = $AnimatedSprite

func _process(delta):
	if move_left == true:
		animation.play("left")
	elif move_right == true:
		animation.play("right")
	elif move_up == true:
		animation.play("back")
	elif move_down == true:
		animation.play("down")
	else:
		animation.stop()
