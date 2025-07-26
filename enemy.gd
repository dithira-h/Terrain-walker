extends RigidBody2D
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass



func _on_area_2d_body_entered(body: Node2D) -> void:
	if (body.name == "CharacterBody2D"):
		var y_delta = position.y - body.position.y
		if (y_delta > 70):
			animated_sprite_2d.animation = "hit"
			body.jump()
			await get_tree().create_timer(0.2).timeout
			call_deferred("queue_free")
			print(y_delta)
			
			
		else:
			get_tree().change_scene_to_file("res://scenes/Game_over.tscn") 
			
			
