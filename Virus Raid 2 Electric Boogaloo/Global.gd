extends Node

var arena = null
var player = null
var screen_hori = 1920
var screen_vert = 1080


func instance_node(node, location, parent):
		var node_instance = node.instance()
		parent.add_child(node_instance)
		node_instance.global_position = location
		return node_instance
