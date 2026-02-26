extends KinematicBody2D

# Declare member variables here. Examples:
var speed = 200
var jump_force = -600
var gravity = 1000
var velocity = Vector2()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
    velocity.y += gravity * delta
    var input_vector = Vector2()
    if Input.is_action_pressed("ui_right"):
        input_vector.x += 1
    if Input.is_action_pressed("ui_left"):
        input_vector.x -= 1
    if Input.is_action_just_pressed("ui_up") and is_on_floor():
        velocity.y = jump_force
    input_vector = input_vector.normalized()
    # Apply movement
    velocity.x = input_vector.x * speed
    velocity = move_and_slide(velocity, Vector2.UP)