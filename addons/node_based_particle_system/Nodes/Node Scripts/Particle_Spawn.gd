@tool
extends ParticleNodes

@onready var particleName = $Name

func _ready():
	set_slot_type_left(0,DataTypes.FLOAT)
	set_slot_type_right(0,DataTypes.PARTICLE)
	set_slot_type_left(1,DataTypes.FLOAT)
	particleName.text = "Particle_System_" + str(get_tree().get_nodes_in_group("Spawner").size())
