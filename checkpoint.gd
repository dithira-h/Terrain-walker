extends Area2D


func _on_body_entered(body: Node2D) -> void:
	if (body.name == "CharacterBody2D"):
		if get_tree().current_scene.scene_file_path == "res://scenes/Level 1.tscn":
			get_tree().change_scene_to_file("res://scenes/Level_2.tscn")
		elif get_tree().current_scene.scene_file_path == "res://scenes/Level_2.tscn":
			get_tree().change_scene_to_file("res://scenes/Level_3.tscn")
		elif get_tree().current_scene.scene_file_path == "res://scenes/Level_3.tscn":
			get_tree().change_scene_to_file("res://scenes/Level_4.tscn")
		elif get_tree().current_scene.scene_file_path == "res://scenes/Level_4.tscn":
			get_tree().change_scene_to_file("res://scenes/Level_5.tscn")
