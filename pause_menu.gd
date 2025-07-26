extends Control


func _ready():
	$AnimationPlayer.play("RESET")
	hide()
func resume():
	get_tree().paused = false
	$AnimationPlayer.play_backwards("blur")
	hide()
func pause():
	get_tree().paused = true
	$AnimationPlayer.play("blur")
	show()
func testesc():
	if Input.is_action_just_pressed("escape") and !get_tree().paused:
		pause()
		
	elif Input.is_action_just_pressed("escape") and get_tree().paused:
		resume()
		


func _on_resume_pressed() -> void:
	resume()


func _on_restart_pressed() -> void:
	resume()
	get_tree().reload_current_scene()


func _on_menu_pressed() -> void:
	get_tree().paused = false
	get_tree().change_scene_to_file("res://scenes/Main_menu.tscn")
	


func _on_quit_pressed() -> void:
	get_tree().quit()

func _process(delta):
	testesc()
