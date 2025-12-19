extends CharacterBody2D

const SPEED = 300.0
var moveright= 1
var canswitch = true
func _physics_process(delta: float) -> void:
	if !$RayCast2D.is_colliding() and canswitch :
		moveright*=-1
		canswitch=false
	else :
		canswitch=true
		
	if moveright<0:
		velocity.x= SPEED*-1
		$RayCast2D.target_position = Vector2(-270,250)
	else :
		velocity.x= SPEED*1
		$RayCast2D.target_position = Vector2(270,250)
	
	move_and_slide()


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group('player'):
		body.KillPlayer()
