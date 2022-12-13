extends Area2D

func _on_entrance_body_entered(body):
	# if player go into the hole, scene changes
	get_tree().change_scene("res://scene/Stage1.tscn")
