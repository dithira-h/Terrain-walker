extends Node
@onready var game_over_sfx: AudioStreamPlayer = $"game over sfx"
@onready var error: Label = $TextureRect/Error

func _ready() -> void:
	game_over_sfx.play()

func _on_play_again_pressed() -> void:
	if Global.previous_scene != "":
		get_tree().change_scene_to_file(Global.previous_scene)
	elif Global.previous_scene == "res://scenes/Level 1.tscn":
		get_tree().change_scene_to_file("res://scenes/Level 1.tscn")
	elif Global.previous_scene == "res://scenes/Level_2.tscn":
		get_tree().change_scene_to_file("res://scenes/Level_2.tscn")
	elif Global.previous_scene == "res://scenes/Level_3.tscn":
		get_tree().change_scene_to_file("res://scenes/Level_3.tscn")
	elif Global.previous_scene == "res://scenes/Level_4.tscn":
		get_tree().change_scene_to_file("res://scenes/Level_4.tscn")
	elif Global.previous_scene == "res://scenes/Level_5.tscn":
		get_tree().change_scene_to_file("res://scenes/Level_5.tscn")
	else:
		error.visible=true
		await get_tree().create_timer(2).timeout
		error.visible = false
		print("No Recorded previous scene")	

func _on_menu_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/Main_menu.tscn")


func _on_quit_pressed() -> void:
	get_tree().quit()
