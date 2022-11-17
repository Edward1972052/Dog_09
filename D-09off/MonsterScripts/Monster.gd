extends Area2D

onready var player = get_node("../Floors/Doggo")
onready var monster1 = get_node(".")
onready var monster1Sprite = get_node("./AnimatedSprite")

var chase = false

func _process(delta):
	if (chase):
		var monsterPos = monster1.position
		var playerPos = player.position
		
		var vec = (playerPos - monsterPos).normalized()
		
		# ganti animasi monster berdasarkan arah jalan
		if (vec[0] < 0):
			monster1Sprite.animation = "walk-left"
		else:
			monster1Sprite.animation = "walk-right"
		
		monster1.translate(vec)
	
func startChase():
	chase = !chase

func _on_Monster_body_entered(body):
	if (body.get_name() == "Doggo"):
		chase = !chase
		body.isDead = true
		get_node("../CanvasLayer").show()
