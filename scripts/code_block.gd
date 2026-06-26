extends Control

var title: String = "Sample Title"
var body: String = "Sample $v1$"
var category: String = "Sample Category"
var has_bottom_connection: bool = true
var side_connections: int = 0
var code_snippet: String = "print(String($v1$))"
@onready var bottom_connection: Control = $VBoxContainer/bottom_connection


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if not has_bottom_connection:
		bottom_connection.queue_free()
		bottom_connection = null
