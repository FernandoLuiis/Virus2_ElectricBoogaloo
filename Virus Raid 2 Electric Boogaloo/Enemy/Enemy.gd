extends Node2D

var fagocito = preload("res://Enemy/Fagocito/Fagocito.tscn")

func _ready():
	get_parent().enemy_count += 1
	Global.instance_node(enemy_type_selector(), global_position, self)

func _exit_tree():
	get_parent().enemy_count -= 1

func follow_player(speed, delta):
	if Global.player != null:
		var mov = global_position.direction_to(Global.player.global_position)
		global_position += mov * speed * delta

##Seleciona o tipo de inimigo que esta classe Enemy vai receber.
func enemy_type_selector():
	var type
	
	type = fagocito
	
	return type
