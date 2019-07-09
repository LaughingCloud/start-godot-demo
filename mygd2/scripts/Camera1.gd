extends Camera
#signal this_camera
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

func _ready():
	pass
	
func _process(delta):
	if Input.is_mouse_button_pressed(BUTTON_LEFT):
		var parent = get_parent()
		var star1 = parent.get_node("star1")
#		print(star1.get_instance())
#		print(star1.get_instance().get_camera().unproject_position(star1.transform.origin))
		var star1_viewport =  Vector2(get_viewport().get_camera().unproject_position(star1.transform.origin).x,get_viewport().get_camera().unproject_position(star1.transform.origin).y)
#		print(get_viewport().get_camera().unproject_position(star1.transform.origin))
#		print(star1_viewport)
		var tt = self.get_camera_transform()
#		print("***  ",tt)
		
		

# Called when the node enters the scene tree for the first time.
#func _ready():
#	emit_signal("this_camera")
##	connect("button_click",self,"change_fov")
#	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
#func change_fov():
#	self.set_perspective(60,0,0)
#	pass