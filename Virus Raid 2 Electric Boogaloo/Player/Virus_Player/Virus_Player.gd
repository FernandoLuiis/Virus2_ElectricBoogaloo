extends Node2D

var speed = 220
var mov = Vector2.ZERO
var virus_bullet = preload("res://Player/Virus_Player/Virus_Bullet.tscn")
var reloading = false

func _ready():
	pass

func _process(delta):
	##Movimentação baseada na função move localizada na cena player
	Global.player.move(self, speed, delta)
	
	##Ataque baseado na função shoot localizada na cena player. 
	##Timer reload garante que o jogador só atire a cada X segundos.
	if reloading == false:
		Global.player.shoot(virus_bullet, self)
		reloading = true
		$Reload.start()


func _on_Reload_timeout():
	reloading = false
