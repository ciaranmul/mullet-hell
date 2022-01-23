extends Node

var hour = 0

const Hours = preload("Hours.gd")
onready var hours = Hours.new()

# Called when the node enters the scene tree for the first time.
func _ready():
    new_game()

func _process(delta):
    if Input.is_action_pressed("ui_cancel"):
        end_game()

func _on_HourTimer_timeout():
    if hours.is_before_work(hour):
        hour+=1
        $HUD.update_time(hour)
    else:
        time_up()

func time_up():
    game_over()

func new_game():
    hour = 0
    $HUD.update_time(hour)
    $HourTimer.start()
    $Player.start($StartPosition.position)

func end_game():
    get_tree().change_scene("res://scenes/SceneManager.tscn")

func _on_Menu_start_game():
    for child in $Menu.get_children():
        child.hide()
    new_game()

func game_over():
    get_tree().change_scene("res://scenes/GameOver.tscn")
    

func _on_Player_blacked_out():
    game_over()
