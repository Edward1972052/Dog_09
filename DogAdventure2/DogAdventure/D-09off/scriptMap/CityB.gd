extends Area2D



func _on_CityB_body_entered(_body):
	get_tree().change_scene("res://"+ self.name +"tscn")

