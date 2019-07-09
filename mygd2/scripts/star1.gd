extends MeshInstance

signal star1



func _ready():
	emit_signal("star1")

func _process(delta):
#	connect("star1",self,"star1_click")
	pass
	

func _input(event):
	var camera = get_parent().get_node("Camera1")
	var camera_position_previous = camera.transform.origin
	
	#鼠标左键事件
	if Input.is_mouse_button_pressed(BUTTON_LEFT):
		print("mouse left pressed")
		
		var mouse_left = get_viewport().get_mouse_position()
		var star1 = get_parent().get_node("star1")
		var star2 = get_parent().get_node("obj2/star2")
		var star3 = get_parent().get_node("obj3/star3")
		var star1_viewport = get_viewport().get_camera().unproject_position(star1.transform.origin)
		var star2_viewport = get_viewport().get_camera().unproject_position(star2.transform.origin)
		var star3_viewport = get_viewport().get_camera().unproject_position(star3.transform.origin)
		
		# 当鼠标在star1区域内是，设置相机视角转换
		var star1_a = Vector2(star1_viewport.x-10, star1_viewport.y-10)
		var star1_b = Vector2(star1_viewport.x+10, star1_viewport.y+10)
		if mouse_left.x >= star1_a.x && mouse_left.x<= star1_b.x && mouse_left.y >= star1_a.y && mouse_left.y <= star1_b.y :
			camera_position_previous = camera.transform.origin
			camera.transform.origin.x = -10
			camera.transform.origin.z = 20
			
		
		print(star1_viewport,star2_viewport,star3_viewport)
		print(mouse_left)
		
#	鼠标右键事件
	if Input.is_mouse_button_pressed(BUTTON_RIGHT):
		print("mouse right pressed")
		
		var mouse_right = get_viewport().get_mouse_position()
		camera.transform.origin = camera_return()
		
		print(mouse_right)
			
	
		
func camera_return() ->Vector3:
	var position = Vector3(0,10,30)
	var perspective = Vector3()
	return position

func star1_click():
	pass
	

#if preload("res://mygd1.tscn"):
#		print("preload(mygd1)")

#func _ready():
#	#get_node("Button").connect("pressed", self, "_on_Button_pressed")
#	emit_signal("star1")
#	#连接信号
#	self.connect("star1",self,"star1_click")
#
#func _process(delta):
#	if Input.is_mouse_button_pressed(BUTTON_LEFT):
#		#self.position = get_viewport().get_mouse_position()
#		#print("mouse position", self.position)
#		pass
#	pass
#
#func _input(event):
#	if event is InputEventMouse:
#		if true:
#			self.translate(event.relative)
#		else:
#			print("mouse wrong")
#		pass
#	if event is InputEventKey:
#		print("ket: "+String(event.scancode))
#		if event.echo == true:
#			print("Key pressed")
#		else:
#			print("Key unpressed")
#		pass
#	if event is InputEventMouseButton:
#		match event.button_index:
#				BUTTON_LEFT:
#					Input.warp_mouse_position(self.position)
#				BUTTON_RIGHT:
#					Vector2(get_viewport().size.x/2,get_viewport().size.y/2)
#					pass
#
#	if Input.get_mouse_mode():
#		pass
#	if event is InputEventMouseButton:
#		if event.button_index == BUTTON_LEFT and event.pressed:
#			#发送信号
#			emit_signal("star1")
#	pass
#
#func _on_Button_pressed():
#    pass
#
#func _my_signal_callback():
#	pass
#
#func star1_click():
#	var parent = self.get_parent()
#	var camera = parent.get_node("Camera1")
#	if(camera):
#		camera.transform.origin.x = -10
#		pass
#	pass
#
#func test(deviceid,isConnected):
#	pass
#
#
		
		
		