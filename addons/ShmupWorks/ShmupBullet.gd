tool
extends KinematicBody2D

var velocity = Vector2.ZERO
var speed = 0

func set_velocity(new_vector: Vector2):
	velocity = new_vector.normalized()

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
