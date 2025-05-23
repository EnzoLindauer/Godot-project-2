extends Area3D

func _ready():
	# Connect the signal properly
	body_entered.connect(_on_body_entered)

func _on_body_entered(body: Node3D):
	print("Collision detected with: ", body.name)
	if body is RigidBody3D:
		print("RigidBody3D detected - emitting levelPassed")
		EventBus.levelPassed.emit()
