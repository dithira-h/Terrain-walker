extends CharacterBody2D


const SPEED = 400.0
const JUMP_VELOCITY = -900.0
@onready var sprite_2d: AnimatedSprite2D = $Sprite2D



func jump():
	velocity.y = JUMP_VELOCITY
	
func _ready():
	var current_scene_path = Global.get_current_scene_name()
	print("Current scene path: ", current_scene_path)



func _physics_process(delta: float) -> void:
	# Add the gravity.
	
	if (velocity.x > 1 || velocity.x < -1):
		sprite_2d.animation = "running"
	else:
		sprite_2d.animation = "default"
	
	if not is_on_floor():
		velocity += get_gravity() * delta
		sprite_2d.animation = "jumping"

	# Handle jump.

	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY
		if Global.get_current_scene_name() == "res://scenes/Level_5.tscn":
			print("trigger lvl 5 action 22")
			var current_scene = get_tree().current_scene
			var scene = get_tree().current_scene
			var scene_root = get_tree().current_scene
			var level_node = get_tree().get_nodes_in_group("LevelController")[0]
			if level_node and level_node.has_method("change_texture_randomly"):
				level_node.change_texture_randomly()
			else:
				print("Level node not found or method missing")

	var direction := Input.get_axis("left", "right")
	if direction:
		velocity.x = direction * SPEED
		
	else:
		velocity.x = move_toward(velocity.x, 0, 18)
		

	move_and_slide()
	
	var isLeft = velocity.x < 0
	sprite_2d.flip_h = isLeft
