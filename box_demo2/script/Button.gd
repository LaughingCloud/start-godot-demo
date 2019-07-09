extends Button

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	self.set_text("Home")
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
		print(camera.rotation_degrees)
		camera.rotation_degrees = Vector3(-10,0,0)
		
		
	pass