extends Timer

onready var rspawner = get_parent()

export var min_wait_time = 1.0
export var max_wait_time = 2.0

# Called when the node enters the scene tree for the first time.
func _ready():
	print("Spawn Timer ready!")
#	rspawner.spawnling_scene = preload("res://Enemy/enemy.tscn")
	randomize()
	if autostart:
		print("Spawn Timer autostart!")
		random_start()
	

func random_start(time = rand_range(min_wait_time, max_wait_time)):
	print("Spawn Timer: random_start")
	start(time)

func _on_timeout() -> void:
	print("Timer activated")
	rspawner.spawn()
	rspawner.global_position.y = rand_range(100, 500)
	if not one_shot:
		random_start()
