extends Node2D

var virus = preload("res://Player/Virus_Player/Virus_Player.tscn")

func _process(delta):
	pass

func _ready():
	Global.player = self
	Global.instance_node(virus, Vector2(Global.screen_hori/2, Global.screen_vert/2), Global.player)
	

func move(speed, delta):
	var mov = Vector2.ZERO
	mov.x = int(Input.is_action_pressed("ui_right")) - int(Input.is_action_pressed("ui_left"))
	mov.y = int(Input.is_action_pressed("ui_down")) - int(Input.is_action_pressed("ui_up"))
	mov = mov.normalized()
	global_position += speed * mov * delta

func shoot(bullet):
	pass
