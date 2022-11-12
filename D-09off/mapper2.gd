extends Area2D





func _on_House_body_entered(body):
	get_tree().change_scene("res://"+ self.name +".tscn")
