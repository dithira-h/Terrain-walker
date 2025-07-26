extends Area2D

@onready var game_manager: Node = %"Game manager"
@onready var collectable_sfx_l_1: AudioStreamPlayer = $"../../Collectable_sfx_L1"
@onready var collectable_sfx_l_2: AudioStreamPlayer = $"../../Scene objects/Collectable_sfx_L2"
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
@onready var collectable_sfx_l_3: AudioStreamPlayer = $"../../Collectable_sfx_L3"








func _on_body_entered(body):
	if (body.name == "CharacterBody2D"):
		if get_tree().current_scene.scene_file_path == "res://scenes/Level 1.tscn":
			collectable_sfx_l_1.play()
			game_manager.add_point()
			animated_sprite_2d.animation= "exit"
			await get_tree().create_timer(0.3).timeout
			queue_free()
			
		elif get_tree().current_scene.scene_file_path == "res://scenes/Level_2.tscn":
			collectable_sfx_l_2.play()
			game_manager.add_point()
			animated_sprite_2d.animation = "exit"
			await get_tree().create_timer(0.3).timeout
			queue_free()
			
		elif get_tree().current_scene.scene_file_path == "res://scenes/Level_3.tscn":
			collectable_sfx_l_2.play()
			game_manager.add_point()
			animated_sprite_2d.animation = "exit"
			await get_tree().create_timer(0.3).timeout
			queue_free()
		
		elif get_tree().current_scene.scene_file_path == "res://scenes/Level_4.tscn":
			collectable_sfx_l_2.play()
			game_manager.add_point()
			animated_sprite_2d.animation = "exit"
			await get_tree().create_timer(0.3).timeout
			queue_free()
			
		elif get_tree().current_scene.scene_file_path == "res://scenes/Level_5.tscn":
			collectable_sfx_l_3.play()
			game_manager.add_point()
			animated_sprite_2d.animation = "exit"
			await get_tree().create_timer(0.3).timeout
			queue_free()
			
