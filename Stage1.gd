extends Node2D

onready var map=preload("res://Minimap.tscn")
var mm

func _ready():
	set_mm()
	
func set_mm():
	mm = map.instance()
	get_node("/root/stage1/Player2/player/Camera2D").add_child(mm )
	mm.rect_position = Vector2(70,85)

