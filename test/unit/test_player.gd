extends GutTest

var script_res = load("res://player/player.gd")
var scene_res = load("res://player/player.tscn")

var _script = script_res.new()
var _obj = scene_res.instance()


# -- Set-up and tear-down --

func before_all():
	# Runs once at start
	add_child(_obj)


func after_all():
	# Runs once at end
	_obj.free()
	_script.free()


# Tests

func test_can_create_player():
	assert_not_null(_script)


func test_has_shoot_signal():
	assert_has_signal(_script, "shoot")
