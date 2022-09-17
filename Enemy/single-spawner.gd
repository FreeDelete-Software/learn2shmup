extends "res://Enemy/spawner.gd"




# Called when the node enters the scene tree for the first time.
func _ready():
	self.spawnling_scene = load("res://Enemy/enemy.tscn")
	.spawn()
