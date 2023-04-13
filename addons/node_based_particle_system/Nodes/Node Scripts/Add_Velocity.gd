@tool
extends ParticleNodes

func _ready():
	set_slot_type_left(0,DataTypes.VECTOR)
	set_slot_type_right(0,DataTypes.PARTICLE)
	set_slot_type_left(1,DataTypes.PARTICLE)
