extends Node

# Mobile Input Handler Script

var touch_start_position = Vector2.ZERO
var is_dragging = false

func _ready():
    pass

func _input(event):
    if event is InputEventScreenTouch:
        if event.pressed:
            touch_start_position = event.position
            is_dragging = true
        else:
            is_dragging = false
    elif event is InputEventScreenDrag and is_dragging:
        var drag_distance = event.position - touch_start_position
        handle_drag(drag_distance)

func handle_drag(drag_distance):
    # Implement logic to handle drag distance
    # This could control character movement, camera movement, etc.
    print("Dragging distance: ", drag_distance)