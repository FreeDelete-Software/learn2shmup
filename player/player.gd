extends KinematicBody2D

signal shoot(Bullet, location)

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var speed = 420

var _bullet = preload("res://Bullet/Bullet.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func _physics_process(_delta):
	var velocity = Vector2.ZERO
	if Input.is_action_pressed("ui_up"):
		velocity.y -= 1
	if Input.is_action_pressed("ui_down"):
		velocity.y += 1
	if Input.is_action_pressed("ui_left"):
		velocity.x -= 1
	if Input.is_action_pressed("ui_right"):
		velocity.x += 1
	velocity = velocity.normalized() * speed
	var _player_slide = move_and_slide(velocity)
	
	if Input.is_action_just_pressed("ui_select"):
		var bullet_pos = self.position
		bullet_pos.x += 33
		emit_signal("shoot", _bullet, bullet_pos)
