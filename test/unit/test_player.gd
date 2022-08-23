extends GutTest

var player_res = load("res://player/player.gd")


func test_can_create_player():
	var player_obj = player_res.new()
	assert_not_null(player_obj)


func test_has_shoot_signal():
	var player_obj = player_res.new()
	assert_has_signal(player_obj, "shoot")
