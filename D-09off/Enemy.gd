extends KinematicBody2D


var _player = null
const CHASE_SPEED = 200
onready var player = get_node("Doggo")

func _physics_process(delta):
	
	if _player:
		var player_direction = player.position - self.position
		if player_direction.x > player_direction.y:
			player_direction.y = 0
		else:
			player_direction.x =0
		move_and_slide(CHASE_SPEED * player_direction.normalized())
		
		
func _on_DetectPlayer_body_entered(body):
	if body.name == "Doggo":
		_player = body
func _on_DetectPlayer_body_exited(body):
	if body.name == "Doggo":
		_player = body
