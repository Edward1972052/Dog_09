extends Area2D


func _on_CityC_body_entered(_body):
	get_tree().change_scene("res://CityC.tscn")
