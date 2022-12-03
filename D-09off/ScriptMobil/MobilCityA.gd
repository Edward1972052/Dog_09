extends Node2D

func _ready():
	var rand = RandomNumberGenerator.new()
	
	while true:
		var mobil = load("res://CarA.tscn").instance()
		mobil.set_position(Vector2(-37, 320))
		var texture = rand.randi_range(0, 2) # 0 > red, 1 > green, 2 > blue
		match (texture):
			0:
				mobil.get_node("Mobil/Sprite").texture = load("res://AssetMap/redCar.png")
			1:
				mobil.get_node("Mobil/Sprite").texture = load("res://AssetMap/greenCar.png")
			2:
				mobil.get_node("Mobil/Sprite").texture = load("res://AssetMap/blueCar.png")
		
		add_child(mobil)
		
		var mobil2 = load("res://CarA2.tscn").instance()
		mobil2.set_position(Vector2(1128, 288))
		texture = rand.randi_range(0, 2) # 0 > red, 1 > green, 2 > blue
		match (texture):
			0:
				mobil2.get_node("Mobil/Sprite").texture = load("res://AssetMap/redCar.png")
			1:
				mobil2.get_node("Mobil/Sprite").texture = load("res://AssetMap/greenCar.png")
			2:
				mobil2.get_node("Mobil/Sprite").texture = load("res://AssetMap/blueCar.png")
		
		add_child(mobil2)
		
		var mobil3 = load("res://CarA3.tscn").instance()
		mobil3.set_position(Vector2(559, -65))
		texture = rand.randi_range(0, 2) # 0 > red, 1 > green, 2 > blue
		match (texture):
			0:
				mobil3.get_node("Mobil/Sprite").texture = load("res://AssetMap/redCar.png")
			1:
				mobil3.get_node("Mobil/Sprite").texture = load("res://AssetMap/greenCar.png")
			2:
				mobil3.get_node("Mobil/Sprite").texture = load("res://AssetMap/blueCar.png")
				
		add_child(mobil3)
		
		var mobil4 = load("res://CarA4.tscn").instance()
		mobil4.set_position(Vector2(593, 691))
		texture = rand.randi_range(0, 2) # 0 > red, 1 > green, 2 > blue
		match (texture):
			0:
				mobil4.get_node("Mobil/Sprite").texture = load("res://AssetMap/redCar.png")
			1:
				mobil4.get_node("Mobil/Sprite").texture = load("res://AssetMap/greenCar.png")
			2:
				mobil4.get_node("Mobil/Sprite").texture = load("res://AssetMap/blueCar.png")
				
		add_child(mobil4)
		
		yield(get_tree().create_timer(3.0), "timeout")
