extends Sprite2D

var speed = 1000
var angular_speed = PI


func _process(delta):
	var direction = 0
	var velocity = Vector2.ZERO

	if Input.is_action_pressed("ui_left") or Input.is_key_pressed(KEY_A):
		direction = -1
	if Input.is_action_pressed("ui_right") or Input.is_key_pressed(KEY_D):
		direction = 1
		
	rotation += angular_speed * direction * delta
	if Input.is_action_pressed("ui_up") or Input.is_key_pressed(KEY_W):
		velocity = Vector2.UP.rotated(rotation) * speed
	
	if Input.is_action_pressed("ui_down") or Input.is_key_pressed(KEY_S):
		velocity = Vector2.DOWN.rotated(rotation) * speed
	
	position += velocity * delta
