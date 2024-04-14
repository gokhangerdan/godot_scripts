extends Camera3D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var player_pos = $"../Car".position
	var cam = $"."
	cam.transform.origin.x = player_pos.x
	cam.transform.origin.z = player_pos.z
