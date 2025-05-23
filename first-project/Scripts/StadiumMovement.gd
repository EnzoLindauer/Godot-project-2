extends StaticBody3D

var shouldReturn = true
var origialRotation: Vector3

func _ready() -> void:
	origialRotation = rotation

func _process(delta: float) -> void:
	
	shouldReturn = true
	
	if Input.is_action_pressed("Up"):
		rotation.x -= 2.5 * delta
		shouldReturn = false
	if Input.is_action_pressed("Down"):
		rotation.x += 2.5 * delta
		shouldReturn = false
	if Input.is_action_pressed("Left"):
		rotation.z -= 2.5 * delta
		shouldReturn = false
	if Input.is_action_pressed("Right"):
		rotation.z += 2.5 * delta
		shouldReturn = false
		
	if shouldReturn:
		rotation = lerp(rotation, origialRotation, 5 * delta)
	
