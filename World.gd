extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var Ball = load("res://Ball.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _unhandled_input(event):
	if event is InputEventMouseButton and event.is_pressed():
		if event.button_index == BUTTON_LEFT:
			var b = Ball.instance()
			b.position = event.position
			add_child(b)
	
