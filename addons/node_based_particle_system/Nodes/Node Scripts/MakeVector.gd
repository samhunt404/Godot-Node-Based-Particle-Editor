extends ParticleNodes


var vec := Vector3.ZERO


func _ready():
	set_slot_type_left(0,DataTypes.FLOAT)
	set_slot_type_left(1,DataTypes.FLOAT)
	set_slot_type_left(2,DataTypes.FLOAT)
	set_slot_type_right(0,DataTypes.VECTOR)
