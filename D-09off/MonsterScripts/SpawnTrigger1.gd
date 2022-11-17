extends Area2D

var waiting = true

func _on_SpawnTrigger1_body_entered(body):
	if (body.get_name() == "Doggo" && waiting):
		get_node("../Monster/SpawnAnimation").play("SpawnAnimation")
		waiting = false # biar ga ngaco kalo masuk lagi
