extends Node2D

@onready var player = get_parent()
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func attack() -> void:
	print("Hya",position.x)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var radius = 8
	var mouse_pos = get_global_mouse_position()
	var player_pos = player.global_position
	
	var min_distance = 4.0
	
	if mouse_pos.distance_to(player_pos) > min_distance:
		var angle = (mouse_pos - player_pos).angle()
		
		global_position = player_pos + Vector2.RIGHT.rotated(angle) * radius
		
		rotation = angle

	
