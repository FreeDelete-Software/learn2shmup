tool
extends EditorPlugin


func _enter_tree():
	add_custom_type("ShmupBullet","KinematicBody2D",preload("ShmupBullet.gd"),preload("res://icon.png"))


func _exit_tree():
	remove_custom_type("ShmupBullet")
