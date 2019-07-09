extends Camera

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _input(event):
	
	if Input.is_mouse_button_pressed(BUTTON_LEFT):
		print("-mouse left pressed")
		
		# define
		var mouse_position = get_viewport().get_mouse_position()
		var box1 = get_parent().get_node("box1")
		var box2 = get_parent().get_node("box2")
		var box3 = get_parent().get_node("box3")
		var box4 = get_parent().get_node("box4")
		
		# box在屏幕上的位置(x,y)
		var v_b1 = get_viewport().get_camera().unproject_position(box1.transform.origin)
		var v_b2 = get_viewport().get_camera().unproject_position(box2.transform.origin)
		var v_b3 = get_viewport().get_camera().unproject_position(box3.transform.origin)
		var v_b4 = get_viewport().get_camera().unproject_position(box4.transform.origin)
		
		
		
		
	pass