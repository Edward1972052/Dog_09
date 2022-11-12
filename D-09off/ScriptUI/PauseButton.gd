extends Button

func _ready():
	var pauseButton = get_node(".")
	pauseButton.connect("pressed", self, "showPauseMenu")
	
var menuHidden = true
func showPauseMenu():
	if (menuHidden):
		get_node("../../PauseMenu/MainMenu").show()
		menuHidden = !menuHidden
	else:
		get_node("../../PauseMenu/MainMenu").hide()
		menuHidden = !menuHidden
