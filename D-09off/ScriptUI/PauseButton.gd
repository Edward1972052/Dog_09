extends Button

func _ready():
	var pauseButton = get_node(".")
	pauseButton.connect("pressed", self, "showPauseMenu")
	
var menuHidden = true
func showPauseMenu():
	if (menuHidden):
		get_node("../../PauseMenu/MainMenu").show()
		get_node("../../PauseMenu/Continue").show()
		get_tree().paused = !get_tree().paused
		menuHidden = !menuHidden
	


func _on_Continue_pressed():
	print("menu")
	get_node("../../PauseMenu/Continue").hide()
	get_node("../../PauseMenu/MainMenu").hide()
	get_tree().paused = false
	menuHidden = !menuHidden
	


func _on_MainMenu_pressed():
	get_node("../../PauseMenu/Continue").hide()
	get_node("../../PauseMenu/MainMenu").hide()
	get_tree().paused = false
	get_tree().change_scene("res://MainMenu.tscn")
	menuHidden = !menuHidden
