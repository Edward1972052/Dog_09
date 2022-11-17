extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

var mov_speed = 100

var isDead = false

func _physics_process(delta):
	if (!isDead):
		var movement = Vector2.ZERO
		movement.x = Input.get_axis("ui_left","ui_right")
		movement.y = Input.get_axis("ui_up","ui_down")
		move_and_slide(movement*mov_speed)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
