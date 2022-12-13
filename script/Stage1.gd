extends Node2D

#load minimap scene to the variable map
onready var map=preload("res://scene/Minimap.tscn")
var mm

func _ready():
	set_mm()
	
func set_mm():
	mm = map.instance()#instance the minimap scene in variable mm
	get_node("/root/stage1/Player2/player/Camera2D").add_child(mm )#add mm as child to the Camera2D node
	mm.rect_position = Vector2(70,85)#adjust minimap position in stage1 scene

