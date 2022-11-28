extends Node2D

func _ready():
	var rand = RandomNumberGenerator.new()
	
	yield(get_tree().create_timer(2.0), "timeout") #kasi delay 2 detik sebelum mulai spawn mobil
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
		
		#var mobil2 = load("res://CarB2.tscn").instance()
		#mobil2.set_position(Vector2(128, 700))
		#texture = rand.randi_range(0, 2) # 0 > red, 1 > green, 2 > blue
		#match (texture):
		#	0:
		#		mobil2.get_node("Mobil/Sprite").texture = load("res://AssetMap/redCar.png")
		#	1:
		#		mobil2.get_node("Mobil/Sprite").texture = load("res://AssetMap/greenCar.png")
		#	2:
		#		mobil2.get_node("Mobil/Sprite").texture = load("res://AssetMap/blueCar.png")
		#
		#add_child(mobil2)
		yield(get_tree().create_timer(2.0), "timeout")
