extends Area2D



func _on_body_entered(body: Node2D) -> void:
	if (body.name == "CharacterBody2D"):
		Global.change_scene("res://scenes/GameOver.tscn")
		get_tree().change_scene_to_file("res://scenes/Game_over.tscn")
