extends Node2D

var speed = 280
var mov = Vector2(1,0)
var look_once = true

func _process(delta):
	if look_once == true:
		look_at(get_global_mouse_position())
		look_once = false
	global_position += mov.rotated(rotation) * speed * delta

##Remove a bala quando ela sai da tela. Evita que as balas perdidas persistam indefinidamente fora da tela.
func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
