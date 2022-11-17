extends KinematicBody2D

onready var player = get_node("../Floors/Doggo")
onready var monster1 = get_node(".")
onready var monster1Sprite = get_node("./AnimatedSprite")

var monsterSpeed = 50

func _physics_process(delta):
	var monsterPos = monster1.position
	var playerPos = player.position
	
	var vec = (playerPos - monsterPos).normalized()
	
	# ganti animasi monster berdasarkan arah jalan
	if (vec[0] < 0):
		monster1Sprite.animation = "walk-left"
	else:
		monster1Sprite.animation = "walk-right"
		
	#move_and_slide(vec * monsterSpeed)
	
