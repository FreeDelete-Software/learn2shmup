extends KinematicBody2D

var velocity = Vector2.ZERO

func _physics_process(delta):
	position += velocity * delta

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
