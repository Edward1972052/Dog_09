extends Node2D

func _process(delta):
	var y = position[1]
	if (y >= 700):
		queue_free()
	else:
		translate(Vector2(0, 1))

func _on_Mobil_body_entered(body):
	get_node("../CanvasLayer").show()
	get_node("../CanvasLayer/Game Over Node").get_child(2).play()
	get_node("../TileMap/building/KinematicBody2D").isDead = true
