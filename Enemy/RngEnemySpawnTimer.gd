extends Timer

export var min_wait_time = 1.0
export var max_wait_time = 2.0

onready var rspawner = get_parent()


# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	if autostart:
		random_start()


func random_start(time = rand_range(min_wait_time, max_wait_time)):
	start(time)


func _on_timeout() -> void:
	rspawner.global_position.y = rand_range(100, 500)
	rspawner.spawn()
	if not one_shot:
		random_start()
