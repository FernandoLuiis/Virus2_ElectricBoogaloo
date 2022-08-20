extends Node2D

var player = preload("res://Player/Player.tscn")

var enemy = preload("res://Enemy/Enemy.tscn")
var enemy_spawn_location = Vector2(Global.screen_hori/2, -100)
var max_enemies = 5
var enemy_count = 0

func _ready():
	Global.arena = self
	Global.instance_node(player, Vector2(0, 0), Global.arena)


func _on_Enemy_Spawn_timeout():
	if enemy_count < max_enemies:
		Global.instance_node(enemy, enemy_spawn_location, Global.arena)
