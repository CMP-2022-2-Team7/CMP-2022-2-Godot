extends KinematicBody2D

export (int) var speed = 150
var velocity = Vector2()

func get_input():
	# Set velocity based on the keys pressed
	velocity = Vector2()
	if Input.is_action_pressed("right"):
		velocity.x += 1
	if Input.is_action_pressed("left"):
		velocity.x -= 1
	if Input.is_action_pressed("up"):
		velocity.y -= 1
	if Input.is_action_pressed("down"):
		velocity.y += 1
	# Use normalized vection so that velocity is calculated based on speed
	velocity = velocity.normalized() * speed

func _physics_process(delta):
	get_input()
	velocity = move_and_slide(velocity)
	#player footstep sound
	if velocity.length() != 0:
		if get_node("/root/World/Timer").time_left <= 0:
			get_node("/root/World/walking").play()
			get_node("/root/World/Timer").start(0.5)

# get a reference to the sprite at the beginning (instead of using _ready())
onready var animation = $PlayerAnimatedSprite

func _process(_delta):
	if Input.is_action_pressed("right"):
		# run to the right
		animation.play("right")
	elif Input.is_action_pressed("left"):
		# run to the left
		animation.play("left")
	elif Input.is_action_pressed("up"):
		animation.play("back")
	elif Input.is_action_pressed("down"):
		animation.play("down")
	else:
		animation.stop()
