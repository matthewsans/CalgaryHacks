extends Area2D


var entered = false
var has_key = false

func _on_body_entered(body: PhysicsBody2D):
	entered = true
	if body.has_method("has_key"):
		has_key = body.has_key()

func _on_body_exited(body):
	entered = false

func _process(delta):
	if entered == true:
		if Input.is_action_just_pressed("ui_accept"):
			get_tree().change_scene_to_file("res://scenes/main.tscn")
