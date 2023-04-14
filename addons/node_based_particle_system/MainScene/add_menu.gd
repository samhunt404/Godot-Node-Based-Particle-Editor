@tool
extends ParticleNodes

@onready var options = $MarginContainer/OptionButton
var nodes = [
	{"Add Particles" : preload("res://addons/node_based_particle_system/Nodes/Nodes/Particle_Behavior.tscn")},
	{"Generate Shape Sphere" : preload("res://addons/node_based_particle_system/Nodes/Nodes/Generate_Shape_Sphere.tscn")},
	{"Add Velocity" : preload("res://addons/node_based_particle_system/Nodes/Nodes/Add_Velocity.tscn")},
	{"Create Vector" : preload("res://addons/node_based_particle_system/Nodes/Nodes/MakeVector.tscn")}
]


func _ready():
	options.grab_focus()
	for i in range(nodes.size()):
		options.add_item(nodes[i].keys()[0],i)
	options.selected = -1
func _selected(index):
	var newNode = nodes[index].values()[0].instantiate()
	newNode.position_offset = get_parent().mouse_pos
	get_parent().add_child(newNode)
	options.release_focus()

func _end():
	get_parent().remove_child.call_deferred(self)
