extends Node2D

var speed = 50
var health = 3
var dashMultiplier = 1

func _ready():
	get_parent().setHealth(health)
	$RestTimer.start()

func _process(delta):
	dashMovement(speed, delta);

func dashMovement(speed, delta):
	get_parent().follow_player(speed * dashMultiplier, delta)

func _on_hitbox_area_entered(area):
	get_parent().resolveDamageTaken(area)

func _on_dash_timer_timeout():
	dashMultiplier = 1
	$RestTimer.start()

func _on_rest_timer_timeout():
	dashMultiplier = 8
	$DashTimer.start()
