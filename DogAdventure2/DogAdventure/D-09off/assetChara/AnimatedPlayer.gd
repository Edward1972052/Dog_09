extends AnimatedSprite

func _physics_process(delta):
	if Input.is_action_pressed("ui_left"):
		animation = "walk-left"
	if Input.is_action_pressed("ui_right"):
		animation = "walk-right"
		
		
	if Input.is_action_just_released("ui_right"):
		animation = "idle"
