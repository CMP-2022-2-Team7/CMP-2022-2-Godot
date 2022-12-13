extends Camera2D

#make player node variable
var player

func _ready():
	player = get_node("/root/stage1/Player")

func _process(delta):
	position.x = player.position.x
	position.y = player.position.y
