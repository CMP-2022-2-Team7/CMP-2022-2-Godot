extends Area2D

func _on_entrance_body_entered(body):
	get_tree().change_scene("res://scene/Stage1.tscn")
