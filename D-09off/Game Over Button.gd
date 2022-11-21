extends Button

var sound_played = false


func _ready():
	if(!sound_played):
		sound_played = true

	var menuButton = get_node(".")
	menuButton.connect("pressed", self, "mainMenu")
	
func mainMenu():
	get_node("../../Click Sound Effect").play()
	# TODO: Animation fade to black
	get_tree().change_scene("res://MainMenu.tscn")

