extends CharacterBody2D

var speed = 600.0;
var JUMP_FORCE = -2000.0;
const GRAVITY = 25.0;

func _physics_process(delta: float) -> void:
	var direction = Input.get_axis("move_left", "move_right")
	velocity.x = direction * speed
	
	if not is_on_floor():
		velocity.y += GRAVITY * speed * delta
		
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_FORCE
	
	move_and_slide()
