extends Node2D

var speed = 220
var mov = Vector2.ZERO

func _ready():
	pass

func _process(delta):
	Global.player.move(speed, delta)
	
