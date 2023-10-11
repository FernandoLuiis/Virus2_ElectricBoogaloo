extends Node2D

func _ready():
	pass # Replace with function body.



func _on_jogar_pressed():
	get_tree().change_scene_to_file("res://Arena/Arena.tscn")


func _on_sair_pressed():
	get_tree().quit()


func _on_opções_pressed():
	pass # Replace with function body.


func _on_aprender_pressed():
	pass # Replace with function body.
