extends Position2D
class_name ShmupSpawner, "res://icon.png"

signal spawned(spawn)

export (PackedScene) var spawnling_scene

func spawn():
	var spawnling = spawnling_scene.instance()
	
	add_child(spawnling)
	spawnling.set_as_toplevel(true)
	spawnling.global_position = global_position
	
	emit_signal("spawned", spawnling)
	return spawnling
