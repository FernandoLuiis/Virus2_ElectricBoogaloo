extends Node2D

var fagocito = preload("res://Enemy/Fagocito/Fagocito.tscn")
var exhausted_tcell = preload("res://Enemy/Exhausted T-Cells/Exhausted T-Cell.tscn")
var dendritic_cell = preload("res://Enemy/Dendritic Cell/Dendritic Cell.tscn")

var health = 1

func _ready():
	get_parent().enemy_count += 1
	Global.instance_node(enemy_type_selector(), global_position, self)

func setHealth(healthValue):
	health = healthValue

func _exit_tree():
	get_parent().enemy_count -= 1

func follow_player(speed, delta):
	if Global.player != null:
		var mov = global_position.direction_to(Global.player.global_position)
		global_position += mov * speed * delta

##Seleciona o tipo de inimigo que esta classe Enemy vai receber.
func enemy_type_selector():
	var type
	type = exhausted_tcell
	
	return type

##Verifica o dano recebido e deduz a quantidade do total de vida
func resolveDamageTaken(area):
	
	##Deduz o dano recebido ao ser atingido por uma área do tipo Bullet
	if area.is_in_group("Bullet"):
		if area.is_in_group("1_Damage"):
			health -= 1
	
	##Remove o inimigo caso a vida chegue a zero
	if health <= 0:
		queue_free()
		
func shootEnemyBullet(bullet):
	Global.instance_node(bullet, global_position, self)
