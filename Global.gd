extends Node


var previous_scene = ""

func _ready():

	print("Global script started! Previous scene:", previous_scene)


func change_scene(new_scene_path: String):
	previous_scene = get_tree().current_scene.scene_file_path
	get_tree().change_scene_to_file(new_scene_path)
	
func get_current_scene_name() -> String:
	var scene = get_tree().current_scene
	if scene:
		# Return the scene file path
		return scene.scene_file_path
	return "No current scene"


	

	
