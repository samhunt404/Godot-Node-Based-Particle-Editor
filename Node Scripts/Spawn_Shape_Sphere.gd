@tool
extends ParticleNodes

@export var rad : float

@onready var edit = $HBoxContainer/GridContainer/LineEdit
func _ready():
	rad = float(edit.text)
	set_slot_type_left(0,DataTypes.FLOAT)
	set_slot_type_left(1,DataTypes.PARTICLE)
	set_slot_type_right(0,DataTypes.PARTICLE)

