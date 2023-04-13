class_name ParticleNodes extends GraphNode

enum DataTypes {
	FLOAT,
	VECTOR,
	PARTICLE
}



func _input(_event):
	if(selected and Input.is_action_just_pressed("Delete_Node")):
		get_parent()._delete_node(self)
		

