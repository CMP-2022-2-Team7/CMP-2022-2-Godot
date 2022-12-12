extends KinematicBody2D

export (int) var speed = 80
var velocity = Vector2()

func _physics_process(delta):
	velocity = move_and_slide(velocity)

# get a reference to the sprite at the beginning (instead of using _ready())
onready var animation = $EnemyAnimatedSprite

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
