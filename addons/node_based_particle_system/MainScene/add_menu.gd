@tool
extends ParticleNodes

@onready var options = $MarginContainer/OptionButton
var nodes = {
	0 : preload("res://addons/node_based_particle_system/Nodes/Nodes/Particle_Behavior.tscn"),
	1 : preload("res://addons/node_based_particle_system/Nodes/Nodes/Generate_Shape_Sphere.tscn"),
	2 : preload("res://addons/node_based_particle_system/Nodes/Nodes/Add_Velocity.tscn")
}


func _ready():
	options.grab_focus()
func _selected(index):
	var newNode = nodes[index].instantiate()
	newNode.position_offset = get_parent().mouse_pos
	get_parent().add_child(newNode)
	options.release_focus()

func _end():
	get_parent().remove_child.call_deferred(self)
