extends Node2D

var player = preload("res://Player/Player.tscn")

var enemy = preload("res://Enemy/Enemy.tscn")
var max_enemies = 5
var enemy_count = 0

func _ready():
	Global.arena = self
	Global.instance_node(player, Vector2(0, 0), Global.arena)

##Seleciona uma posição aletória para a criação dos inimigos.
##Posição selecionada deverá ser sempre acima ou abaixo da tela visível.
func enemy_spawn_pos_randomizer():
	
	##Define se o inimigo irá ser criado acima ou abaixo da tela.
	var spawn_vert
	if rand_range(-1,1) > 0:
		spawn_vert = -30
	else:
		spawn_vert = Global.screen_vert + 30
	
	##Define a posição vertical da criação do inimigo
	var spawn_hori = rand_range(30, Global.screen_hori - 30)
	
	return Vector2(spawn_hori, spawn_vert)

func _on_Enemy_Spawn_timeout():
	if enemy_count < max_enemies:
		Global.instance_node(enemy, enemy_spawn_pos_randomizer(), Global.arena)
