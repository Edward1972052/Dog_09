extends Button

func _ready():
	var menuButton = get_node(".")
	menuButton.connect("pressed", self, "mainMenu")
	
func mainMenu():
	get_tree().change_scene("res://MainMenu.tscn")
