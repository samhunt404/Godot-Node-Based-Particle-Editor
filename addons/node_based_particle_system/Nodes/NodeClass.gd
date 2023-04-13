@tool
class_name ParticleNodes extends GraphNode

enum DataTypes {
	FLOAT,
	VECTOR,
	PARTICLE
}



func _input(_event):
	if(selected and Input.is_key_pressed(KEY_DELETE)):
		get_parent()._delete_node(self)
		

