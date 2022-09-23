extends Node2D

var speed = 150
var health = 3

func _ready():
	pass

func _process(delta):
	get_parent().follow_player(speed, delta)


func _on_Hitbox_area_entered(area):
	
	##Deduz o dano recebido ao ser atingido por uma área do tipo Bullet
	if area.is_in_group("Bullet"):
		if area.is_in_group("1_Damage"):
			health -= 1
	
	##Remove o inimigo caso a vida chegue a zero
	if health <= 0:
		get_parent().queue_free()
