extends Node2D

var fagocito = preload("res://Enemy/Fagocito/Fagocito.tscn")

func _ready():
	Global.instance_node(fagocito, Vector2(0,0), self)

func follow_player(target, speed, delta):
	if Global.player != null:
		var mov = target.global_position.direction_to(Global.player.global_position)
		target.global_position += mov * speed * delta
