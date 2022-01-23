extends CanvasLayer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
    if ShaderManager.scanlines_enabled:
        $ColorRect.show()
    else:
        $ColorRect.hide()

    ShaderManager.connect("set_scanline_shader", self, "_on_ShaderManagerManager_set_scanline_shader")

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#    pass

func _on_ShaderManagerManager_set_scanline_shader(is_on):
    print("%s" % is_on)
    if is_on:
        $ColorRect.show()
    else:
        $ColorRect.hide()
