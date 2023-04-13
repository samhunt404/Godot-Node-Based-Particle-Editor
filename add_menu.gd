extends Control

@onready var options = $MarginContainer/OptionButton
var nodes = {
	0 : preload("res://Nodes/Particle_Behavior.tscn"),
	1 : preload("res://Nodes/Generate_Shape_Sphere.tscn")
}
func _ready():
	options.grab_focus()

func _selected(index):
	var newNode = nodes[index].instantiate()
	get_parent().add_child(newNode)
	options.release_focus()

func _end():
	get_parent().remove_child.call_deferred(self)
