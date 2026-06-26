extends Control


var block_1: Control = null
var block_2: Control = null

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if block_2 != null and block_1 != null:
		if block_1.bottom_connection != null:
			block_2.global_position = block_1.bottom_connection.global_position
			block_1 = null
			block_2 = null
