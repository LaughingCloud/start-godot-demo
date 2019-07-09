extends Button

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

func _ready():
	self.set_text("Home")

func _pressed():
	if pressed:
		print("BUtton2 pressed")
		
		get_parent().get_node("Camera1").transform.origin = Vector3(0,10,30)
	pass

# Called when the node enters the scene tree for the first time.
#func _ready():
#	connect("pressed",self,"button2_click")
#	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

#func _pressed():
#	var parent = self.get_parent()
#	var b1 = parent.get_node("Button1")
#	b1.set_text("yes")
#	pass
#
#func button2_click():
#	self.set_text("yes")
#	pass