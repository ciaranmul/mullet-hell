extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var animation = 0

# Called when the node enters the scene tree for the first time.
func _ready():
    pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
    if Input.is_action_just_pressed("interact"):
        if animation == 4:
            $KeyboardSounds.stop()
            $Hype.play()
        if animation == 5:
            get_tree().change_scene("res://scenes/Main.tscn")
        animation += 1
        $AnimationPlayer.play(get_animation(animation))

func get_animation(index) -> String:
    match index:
        0: return "mullet_man"
        1: return "dionysus"
        2: return "freya"
        3: return "mbaba"
        4: return "frakes"
        5: return "mullet_zoom"
    return "mullet_man"
