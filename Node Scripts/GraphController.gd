@tool
extends GraphEdit


var NodeMenu = preload("res://add_menu.tscn")
var node_menue_child



func _unhandled_input(event):
	if event.is_action_pressed("Add_Node"):
		node_menue_child = NodeMenu.instantiate()
		node_menue_child.position = get_global_mouse_position()
		add_child(node_menue_child)



func _on_connection_request(from_node, from_port, to_node, to_port):
	var _err = connect_node(from_node,from_port,to_node,to_port)


func _delete_node(n):
	remove_child.call_deferred(n)
	
