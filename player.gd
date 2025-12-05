extends AnimatedSprite2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
		pass # Replace with function body.

	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
		var direction = Vector2.ZERO
		var speed = 100
		
		if Input.is_action_pressed("ui_left"):
				direction.x -= 1
		if Input.is_action_pressed("ui_right"):
				direction.x += 1
		if Input.is_action_pressed("ui_up"):
				direction.y -= 1
		if Input.is_action_pressed("ui_down"):
				direction.y += 1

		position += direction * delta * speed
