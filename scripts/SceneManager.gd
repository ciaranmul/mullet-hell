extends Node2D

const MAIN_SCENE = preload("res://scenes/Main.tscn")
const OPENING_SCENE = preload("res://scenes/Opening.tscn")

var next_scene = MAIN_SCENE

func _on_TransitionScreen_can_transition():
    $CurrentScene.get_child(0).queue_free()
    $CurrentScene.add_child(next_scene.instance())

func _on_Menu_pressed_start():
    print("Scene manager calling transition screen")
    $TransitionScreen.transition()
    next_scene = OPENING_SCENE
