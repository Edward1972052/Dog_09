extends Button

func _ready():
	var playButton = get_node(".")
	playButton.connect("pressed", self, "startGame")
	
func startGame():
	
	get_tree().change_scene("res://CityA.tscn")



