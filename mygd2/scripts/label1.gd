extends Label

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	self.set_text("cube 1")
	var cube1 = get_node("/root/Spatial/node1/cube1")
	var cube1_viewport = get_viewport().get_camera().unproject_position(cube1.transform.origin)
	self.rect_position = cube1_viewport + Vector2(-10,-40)
	
	if Input.is_mouse_button_pressed(BUTTON_LEFT | BUTTON_RIGHT):
#		self.rect_position =  get_viewport().get_camera().unproject_position(get_node("/root/Spatial/node1/cube1").transform.origin) + Vector2(-10,-40)
		self.rect_position = Vector2(1,1)
		
	
	print("label: ", self.rect_position)
	
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_mouse_button_pressed(BUTTON_LEFT | BUTTON_RIGHT):
#		self.rect_position =  get_viewport().get_camera().unproject_position(get_node("/root/Spatial/node1/cube1").transform.origin) + Vector2(-10,-40)
		self.rect_position = Vector2(1,1)
		
		pass
	pass
	
#func _input(event):
#	if Input.is_mouse_button_pressed(BUTTON_LEFT | BUTTON_RIGHT):
##		self.rect_position =  get_viewport().get_camera().unproject_position(get_node("/root/Spatial/node1/cube1").transform.origin) + Vector2(-10,-40)
#		self.rect_position = Vector2(1,1)
#		pass
