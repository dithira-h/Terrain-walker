extends RigidBody2D
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D


func _on_area_2d_body_entered(body: Node2D) -> void:
	if (body.name == "CharacterBody2D"):
		animated_sprite_2d.animation = "hit"
		await get_tree().create_timer(0.3).timeout
		animated_sprite_2d.animation = "break"
		await get_tree().create_timer(0.1).timeout
		queue_free()
	else:
		pass
