extends CanvasLayer

signal hide_scanlines(should_hide)

signal start_game

# Called when the node enters the scene tree for the first time.
func _ready():
    pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#    pass


func _on_TextureButton_pressed():
    emit_signal("start_game")


func _on_CheckButton_toggled(button_pressed):
    print("button toggled %s" % button_pressed)
    emit_signal("hide_scanlines", !button_pressed)
