extends VehicleBody3D


var car_name = "taxi"

const MAX_STEER = 0.4
const STEER_SPEED = 1.5
const ENGINE_POWER = 1000
var in_car = true

# Called when the node enters the scene tree for the first time.
func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if in_car:
		steering = move_toward(steering, Input.get_axis("steer_right", "steer_left") * MAX_STEER, delta * STEER_SPEED)
		engine_force = Input.get_axis("brake", "accelerate") * ENGINE_POWER
