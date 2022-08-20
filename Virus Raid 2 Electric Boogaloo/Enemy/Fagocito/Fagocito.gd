extends Node2D

var speed = 150

func _ready():
	pass

func _process(delta):
	get_parent().follow_player(self, speed, delta)
