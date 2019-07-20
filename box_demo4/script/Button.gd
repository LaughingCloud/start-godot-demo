extends Button

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	# button 位置及字
	self.set_text("Home")
	self.set_position(Vector2(1450,800))
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _pressed():
	if pressed:
		print("-BUtton(Home) pressed")
		#	返回主场景
		var camera = get_parent().get_node("Camera")
		camera.transform.origin = Vector3(0,15,50)
		camera.rotation_degrees = Vector3(0,0,0)
		camera.set_perspective(70,1,100)
		var l1 = get_parent().get_node("box1/Label1")
		var l2 = get_parent().get_node("box2/Label2")
		var l3 = get_parent().get_node("box3/Label3")
		var l4 = get_parent().get_node("box4/Label4")
		l1.set_text(" ")
		l2.set_text(" ")
		l3.set_text(" ")
		l4.set_text(" ")
		
	pass