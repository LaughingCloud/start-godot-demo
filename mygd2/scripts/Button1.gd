extends Button

#signal button_click
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
#export (int) var click_times = 0
#
#var p1 = 0
#var p2 = 0
#var p3 = 0

func _ready():
	self.set_text("1")
	
func _pressed():
	if pressed:
		print("Button1 Pressed")
		get_parent().get_node("Camera1").transform.origin = Vector3(0,20,30)


# Called when the node enters the scene tree for the first time.
#func _ready():
#	emit_signal("button_click")
#	self.connect("toggled",self,"_toggled")
#	self.set_text("click")
##	emit_signal("hit")
#	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
#
#func _process(delta):
#
#	pass

#func _toggled(pressed):
#	if(pressed):
#		# 改变相机位置
#		click_times += 1
#		self.set_text(String(click_times))
#		var parent = self.get_parent()
#		var camera = parent.get_node("Camera1")
#		if(camera):
#			if(p1 <= p2+2):
#				camera.transform.origin.x = -10
#				p1 = p1 + 1
#			else:
#				camera.transform.origin.x = 10
#				p2 += 1
#
##			camera.set_perspective(100,0,0)
##			var position = camera.get_position()
##			camera.transform.origin.x=-10
#			pass
#	else:
#		pass


#func _pressed():
#	if(pressed):
#		var camera = self.get_parent().get_node("Camera1")
#		camera.set_postion(10,5,20)
#	else:
#		pass

#func _on_Button_pressed():
#	var camera = get_parent().get_node("Camera1")
#	camera.set_position(10,5,20)
#	draw()
#	can_process()
#	pass