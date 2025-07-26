extends Node
@onready var pointslabel: Label = %pointslabel

var points = 0
var fanhit = 0

func add_point():
	points += 1
	print(points)
	pointslabel.text = str("Points: ",points)

func fan_hit():
	fanhit += 1
	print("execution x", fanhit)
	
func checkpoint_hit():
	get_tree().change_scene_to_file("res://scenes/Main_menu.tscn")
	
