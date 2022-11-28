extends Node2D

func _process(delta):
	var x = position[0]
	if (x >= 1136):
		queue_free()
	else:
		translate(Vector2(1, 0))

func _on_Mobil_body_entered(body):
	get_node("../CanvasLayer").show()
	get_node("../CanvasLayer/Game Over Node").get_child(2).play()
	get_node("../TileMap/Building/Doggo").isDead = true
