extends AnimatedSprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
    pass # Replace with function body.

func _on_Player_toxicity_changed(newValue):
    var frame = (newValue / 20) - 1
    set_frame(frame)
