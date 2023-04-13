@tool
extends EditorPlugin


const mainPanel = preload("res://node_editor.tscn")
var main_panel_isntance

func _enter_tree():
	main_panel_isntance = mainPanel.instance()
	
	get_editor_interface().get_editor_main_screen().add_child(main_panel_isntance)
	
	_make_visible(false)


func _exit_tree():
	if main_panel_isntance:
		main_panel_isntance.queue_free()

func _has_main_screen():
	return true
	
func _make_visible(visible):
	pass
	
func _get_plugin_name():
	return "Particle Nodes"

func _get_plugin_icon():
	return get_editor_interface().get_base_control().get_theme_icon("Node", "EditorIcons")

