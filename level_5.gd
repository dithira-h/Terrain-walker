# Level_5.gd
extends Node2D  # or whatever your root node is

# Reference to your TextureRect node
@onready var mytexturerect: TextureRect = $"Scene objects/mytexturerect"

func _ready():
	add_to_group("LevelController")

# Array of textures to randomly pick from
var textures = [
		preload("res://Assests/Graphics/Pink.png"),
		preload("res://Assests/Graphics/Yellow.png"),
		preload("res://Assests/Graphics/Green.png"),
		preload("res://Assests/Graphics/Brown.png")
	]

# Function to call from outside
func change_texture_randomly():
	if mytexturerect:
		var random_texture = textures[randi() % textures.size()]
		mytexturerect.texture = random_texture
	else:
		print("TextureRect not found!")
