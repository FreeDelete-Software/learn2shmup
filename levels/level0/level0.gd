extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.



func _on_Player_shoot(Bullet, location):
	var b = Bullet.instance()
	add_child(b)
	#b.rotation = direction
	b.position = location
	b.velocity.x += 500
