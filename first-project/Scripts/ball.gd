extends RigidBody3D

var originalPosition: Vector3
var fell = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	originalPosition = position


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if position.y < -7 && not fell:
		fell = true
		die()
		
func die():
	if PlayerStats.lives > 1:
		PlayerStats.lives -= 1
		respawn()
	else:
		PlayerStats.lives -= 1
		get_tree().change_scene_to_file("res://Scenes/main_menu_control.tscn")
		PlayerStats.lives = 3
		print("Game Over")
	updateUI()

func respawn():
	position = originalPosition
	linear_velocity = Vector3.ZERO
	angular_velocity = Vector3.ZERO
	fell = false
	
func updateUI():
	$CanvasLayer/Control/Lives.text = "Lives: " + str(PlayerStats.lives )
