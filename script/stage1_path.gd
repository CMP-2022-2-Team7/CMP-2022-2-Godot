extends Area2D

#Function that runs when a player enters an area2D area
func _on_Area2D_body_entered(body):

	if "TileMap" in body.name:
		return
	get_tree().change_scene("res://scene/Main2.tscn")
