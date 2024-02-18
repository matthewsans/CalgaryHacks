extends CharacterBody2D
@onready var animated_sprite_2d = $AnimatedSprite2D

const SPEED = 150.0
#const JUMP_VELOCITY = -400.0

# From tutorial: https://kidscancode.org/godot_recipes/3.x/2d/8_direction/index.html
var current_animation="Idle"
var a = "D"


# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

'''
func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
'''

func _process(delta):
	current_animation = "Idle"
	velocity = Vector2.ZERO
	
	if Input.is_action_pressed("ui_right"):
		current_animation ="Run"
		a = "R"
		$AnimatedSprite2D.play()
		velocity.x += 1
	if Input.is_action_pressed("ui_left"):
		current_animation ="Run"
		a = "L"
		velocity.x -= 1
	if Input.is_action_pressed("ui_down"):
		current_animation ="Run"
		a = "D"
		velocity.y += 1
	if Input.is_action_pressed("ui_up"):
		current_animation ="Run"
		a = "U"
		velocity.y -= 1
	velocity.x = velocity.x*SPEED
	velocity.y = velocity.y*SPEED
	move_and_slide()

	$AnimatedSprite2D.play(current_animation + a)
