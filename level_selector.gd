extends Node

func _ready() -> void:
	print("Level selector running")
	


func _on_level_1_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/Level 1.tscn")
	

func _on_level_2_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/Level_2.tscn")




func _on_back_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/Main_menu.tscn")
	
	
func _on_quit_pressed() -> void:
	get_tree().quit()
	

func _on_switch_pressed() -> void:
	print("Character Switched pressed")


func _on_level_3_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/Level_3.tscn")



func _on_level_4_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/Level_4.tscn")
	


func _on_level_5_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/Level_5.tscn")
