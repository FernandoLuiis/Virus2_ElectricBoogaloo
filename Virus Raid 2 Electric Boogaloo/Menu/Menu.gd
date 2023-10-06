extends Node2D

func _ready():
	pass # Replace with function body.



func _on_jogar_pressed():
	get_tree().change_scene_to_file("res://Arena/Arena.tscn")
