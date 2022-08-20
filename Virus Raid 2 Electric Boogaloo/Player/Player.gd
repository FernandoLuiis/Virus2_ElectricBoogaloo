extends Node2D

var virus = preload("res://Player/Virus_Player/Virus_Player.tscn")

func _ready():
	Global.instance_node(virus, Vector2(Global.screen_hori/2, Global.screen_vert/2), self)

func move(speed, delta):
	var mov = Vector2.ZERO
	mov.x = int(Input.is_action_pressed("ui_right")) - int(Input.is_action_pressed("ui_left"))
	mov.y = int(Input.is_action_pressed("ui_down")) - int(Input.is_action_pressed("ui_up"))
	mov = mov.normalized()
	global_position += speed * mov * delta

func shoot(bullet, origin):
	if Input.is_action_pressed("shoot") and Global.arena != null:
		Global.instance_node(bullet, origin.global_position, Global.arena)
		pass
