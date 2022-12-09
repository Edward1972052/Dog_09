extends Area2D

func _ready():
	get_node("../Transition").play("fade_out")

func _on_Area2D_body_entered(_body):
	get_node("../Transition").play("fade_to_black")
	yield(get_tree().create_timer(0.6), "timeout")
	get_tree().change_scene("res://"+ self.name +".tscn")
