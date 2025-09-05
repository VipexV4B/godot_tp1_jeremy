extends CharacterBody2D

var speed = 600.0;

func _process(_delta):
	velocity = Input.get_vector("move_left", "move_right", "move_up", "move_down");
	
func _physics_process(delta: float) -> void:
	move_and_collide(velocity * speed * delta);
