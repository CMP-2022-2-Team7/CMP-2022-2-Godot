extends PathFollow2D

export var speed = 80
onready var animation = $PathEnemyAnimatedSprite

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	animation.play("down")

func _process(delta):
	set_offset(get_offset() + speed * delta)

