extends Camera2D
var fixed_y: float

func _ready():
	fixed_y = global_position.y - 150
	make_current()

func _process(delta):
	var parent = get_parent()
	global_position.x = parent.global_position.x
	global_position.y = fixed_y
