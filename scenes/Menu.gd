extends CanvasLayer

signal hide_scanlines(should_hide)
signal pressed_start

# Called when the node enters the scene tree for the first time.
func _ready():
    pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#    pass


func _on_TextureButton_pressed():
    print("start pressed")
    emit_signal("pressed_start")

func _on_CheckButton_toggled(button_pressed):
    ShaderManager.set_scanlines_enabled(button_pressed)
