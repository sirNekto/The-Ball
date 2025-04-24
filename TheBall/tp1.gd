extends Area3D
@export var next_position: Vector3
@export var end = false

func _ready():
	connect("body_entered", _body_entered)
	pass 
	
func _body_entered(body):
	if body.name == "ball": 
		if end:
			Setting.cnt = body.interface.getCnt()
			get_tree().change_scene_to_file("res://end_demo.tscn")
			return
			
		body.global_position = next_position
		var impulse = Vector3()
		impulse.x = 0
		impulse.y = 0
		body.point = next_position
		body.apply_central_impulse(impulse)
		pass 
