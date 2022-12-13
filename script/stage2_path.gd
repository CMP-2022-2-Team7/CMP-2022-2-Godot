extends Area2D






func _on_Area2D_body_entered(body):
	print(body.name)
	if "TileMap" in body.name:
		return
	get_tree().change_scene("res://scene/endingScene.tscn")
