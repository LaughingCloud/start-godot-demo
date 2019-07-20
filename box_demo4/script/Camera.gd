extends Camera

var flag_box1 = false
var flag_box2 = false
var flag_box3 = false
var flag_box4 = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

	
func _process(delta):
	var mouse = get_viewport().get_mouse_position()
	var box1 = get_parent().get_node("box1")
	var box2 = get_parent().get_node("box2")
	var box3 = get_parent().get_node("box3")
	var box4 = get_parent().get_node("box4")
	# label
	var label1 = get_parent().get_node("box1/Label1")
	var label2 = get_parent().get_node("box2/Label2")
	var label3 = get_parent().get_node("box3/Label3")
	var label4 = get_parent().get_node("box4/Label4")
	# box在屏幕上的位置(x,y)
	var v_b1 = get_viewport().get_camera().unproject_position(box1.transform.origin)
	var v_b2 = get_viewport().get_camera().unproject_position(box2.transform.origin)
	var v_b3 = get_viewport().get_camera().unproject_position(box3.transform.origin)
	var v_b4 = get_viewport().get_camera().unproject_position(box4.transform.origin)

	
	if Input.is_mouse_button_pressed(BUTTON_LEFT):
		print("In func")
		if mouse.x > v_b1.x-30 and mouse.x < v_b1.x+30 and mouse.y > v_b1.y-30 and mouse.y < v_b1.y+30:
			flag_box1 = true
			show_label(box1,label1,"Box1")
			flag_box1 = new_to_box(v_b1,box1,flag_box1)
			
			label2.set_text(" ")
			label3.set_text(" ")
			label4.set_text(" ")
#		else:
#			label1.set_text(" ")
			
		if mouse.x > v_b2.x-30 and mouse.x < v_b2.x+30 and mouse.y > v_b2.y-30 and mouse.y < v_b2.y+30:
			flag_box2 = true
			show_label(box2,label2,"Box2")
			flag_box2 = new_to_box(v_b2,box2,flag_box2)
			label1.set_text(" ")
			label3.set_text(" ")
			label4.set_text(" ")

			
		if mouse.x > v_b3.x-30 and mouse.x < v_b3.x+30 and mouse.y > v_b3.y-30 and mouse.y < v_b3.y+30:
			flag_box3 = true
			show_label(box3,label3,"Box3")
			flag_box3 = new_to_box(v_b3,box3,flag_box3)
			label1.set_text(" ")
			label2.set_text(" ")
			label4.set_text(" ")

			
		if mouse.x > v_b4.x-30 and mouse.x < v_b4.x+30 and mouse.y > v_b4.y-30 and mouse.y < v_b4.y+30:
			flag_box4 = true
			show_label(box4,label4,"Box4")
			flag_box4 = new_to_box(v_b4,box4,flag_box4)
			label1.set_text(" ")
			label2.set_text(" ")
			label3.set_text(" ")
		return

func box_to(var box, var label ,var flag, var message):
	var mouse = get_viewport().get_mouse_position()
	var v_box = get_viewport().get_camera().unproject_position(box.transform.origin)
	
	if Input.is_mouse_button_pressed(BUTTON_LEFT):
		print("In func")
		if mouse.x > v_box.x-30 and mouse.x < v_box.x+30 and mouse.y > v_box.y-30 and mouse.y <v_box.y+30:
			flag_box1 = true
			show_label(box,label,message)
			flag_box1 = new_to_box(v_box,box,flag)
		else:
			label.set_text(" ")


func new_to_box(var position, var box, var flag):
	# box screen position, box
	if flag == false:
		return false
	var delta = Vector3(0,5,10)
	var old_pos = self.transform.origin
	var new_pos = box.transform.origin + delta
	var dx = old_pos.x-new_pos.x
	var dy = old_pos.y-new_pos.y
	var dz = old_pos.z-new_pos.z
	# close enough
	if dx > -0.5 and dx < 0.5 and dy > -0.5 and dy < 0.5 and dz > -0.5 and dz < 0.5:
		print("close enough")
		return false
	if dx >= 0.5 :
		old_pos.x -= 0.5
	if dx <= -0.5 :
		old_pos.x += 0.5
	if dy >= 0.5 :
		old_pos.y -= 0.5
	if dy <= -0.5 :
		old_pos.y += 0.5
	if dz >= 0.5 :
		old_pos.z -= 0.5
	if dz <= -0.5 :
		old_pos.z += 0.5
	print("target pos",new_pos)
	print("now_pos",old_pos)
	self.transform.origin = old_pos
	self.rotation_degrees = Vector3(-10,0,0)
	self.fov = 90
	
	return true

# 显示标签
func show_label(var box, var label, var message):
#	box: node ; message: label message ; label : label node
	var position =  get_viewport().get_camera().unproject_position(box.transform.origin)
	var mouse = get_viewport().get_mouse_position()
	
	if mouse.x > position.x-30 and mouse.x < position.x+30 and mouse.y > position.y-30 and mouse.y < position.y+30 :
#		在点击范围内显示box信息，否则消失
		label.set_text(message)
		label.rect_position = position + Vector2(20,-40)
	else:
		label.set_text(" ")
