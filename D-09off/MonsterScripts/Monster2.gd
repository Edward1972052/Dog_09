extends Area2D

onready var player = get_node("../Floors/Doggo")
onready var monster2 = get_node(".")
onready var monster2Sprite = get_node("./AnimatedSprite")

var chase = false

func _process(delta):
	if (chase):
		var monsterPos = monster2.position
		var playerPos = player.position
		
		var vec = (playerPos - monsterPos).normalized()
		
		# ganti animasi monster berdasarkan arah jalan
		if (vec[0] < 0):
			monster2Sprite.animation = "walk-left"
		else:
			monster2Sprite.animation = "walk-right"
		
		monster2.translate(vec)
	
func startChase():
	chase = !chase

func _on_Monster2_body_entered(body):
	if (body.get_name() == "Doggo"):
		get_node("../Chase Sound").stop()
		chase = !chase
		get_node("../CanvasLayer").show()
		if (!body.isDead):
			get_node("../CanvasLayer/Node2D").get_child(2).play()
			
		body.isDead = true
