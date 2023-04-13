@tool
extends GraphEdit


var NodeMenu = preload("res://addons/node_based_particle_system/MainScene/add_menu.tscn")
var node_menue_child

var mouse_pos


func _input(event):
	mouse_pos = (get_local_mouse_position() * (1/zoom))  + scroll_offset *(1/zoom)
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_RIGHT) or (Input.is_key_pressed(KEY_A) and Input.is_key_pressed(KEY_SHIFT)):
		node_menue_child = NodeMenu.instantiate()
		node_menue_child.position_offset = mouse_pos
		add_child(node_menue_child)


func _on_connection_request(from_node, from_port, to_node, to_port):
	var _err = connect_node(from_node,from_port,to_node,to_port)


func _delete_node(n):
	for c in get_connection_list():
		if(c.to == n.name or c.from == n.name):
			disconnect_node(c.from,c.from_port,c.to,c.to_port)
	n.queue_free()
