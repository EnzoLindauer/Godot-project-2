
extends Area3D

# Reference to the ball node (not the script file)
@onready var ball = get_node("/root/Node3D/Ball")

func _ready():
	body_entered.connect(_on_body_entered)

func _on_body_entered(body: Node3D):
	print("Collision detected with: ", body.name)
	if body is RigidBody3D:
		ball.die()
