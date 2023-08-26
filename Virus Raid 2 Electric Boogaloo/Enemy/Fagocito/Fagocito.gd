extends Node2D

var speed = 150
var health = 3

func _ready():
	get_parent().setHealth(health)

func _process(delta):
	get_parent().follow_player(speed, delta)

func _on_Hitbox_area_entered(area):
	get_parent().resolveDamageTaken(area)
