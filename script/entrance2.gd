extends Area2D

func _on_entrance2_body_entered(body):
	get_tree().change_scene("res://stage2Scene/stage2Scene.tscn")
