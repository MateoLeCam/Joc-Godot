extends KinematicBody2D

var velocitat := 500
var moviment := Vector2.ZERO
var gravetat := Vector2.DOWN * 5000
var salt := Vector2.UP * 1500

func _ready():
	position = Vector2(200,300)
	
func _process(delta):
	moviment += gravetat * delta
	moviment.x = Input.get_axis("ves_esquerra","ves_dreta") * velocitat
	
	if Input.is_action_just_pressed("ves_aumnt") and is_on_floor():
		moviment=salt
	
	moviment = move_and_slide(moviment, Vector2.UP)

