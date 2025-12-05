extends Node2D

@onready var player = get_parent()
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func attack() -> void:
	print("Hya",position.x)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var radius = 10  
	
	var angle = (get_global_mouse_position() - player.global_position).angle()	
	
	look_at(get_global_mouse_position())
								#Nate Note: v I have no idea what this Vector thing does but it works v
	global_position = player.global_position + Vector2.RIGHT.rotated(angle) * radius

	if Input.is_physical_key_pressed(KEY_Z):
		attack()
	
