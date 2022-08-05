extends Node2D

onready var _enemy = preload("res://Enemy/enemy.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()

func _process(delta):
	pass
	
	
func _on_Player_shoot(Bullet, location):
	var b = Bullet.instance()
	add_child(b)
	#b.rotation = direction
	b.position = location
	b.velocity.x += 500
