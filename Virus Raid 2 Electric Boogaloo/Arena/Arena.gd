extends Node2D

var player = preload("res://Player/Player.tscn")

func _ready():
	Global.arena = self
	Global.instance_node(player, Vector2(0, 0), Global.arena)