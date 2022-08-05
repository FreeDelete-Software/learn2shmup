
extends KinematicBody2D

#signal shoot(Bullet, location)

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var speed = 50

#var _bullet = preload("res://bullet/bullet.tscn")
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	var velocity = Vector2.ZERO
	velocity.x -= 1
	move_and_slide(velocity * speed)
	
	
#		emit_signal("shoot", _bullet, self.position)
