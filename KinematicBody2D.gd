extends KinematicBody2D
const UP = Vector2(0, -1)
var motion = Vector2()


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
#func _ready():
#pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	motion.y += 10
	
	if Input.is_action_pressed("ui_right"):
		motion.x = 100
	elif Input.is_action_pressed("ui_left"):
		motion.x = -100
	else:
		motion.x = 0
	if is_on_floor():
		if Input.is_action_just_pressed("ui_up"):
			motion.y = -400
	
	motion = move_and_slide(motion, UP)
	pass
	
#	pass
