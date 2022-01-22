extends Node

var hour = 0

const Hours = preload("Hours.gd")
onready var hours = Hours.new()

# Called when the node enters the scene tree for the first time.
func _ready():
    pass

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
    print("Time's up")

func new_game():
    hour = 0
    $HUD.update_time(hour)
    $HourTimer.start()
    $Player.start($StartPosition.position)

func end_game():
    $Player.hide()

    for child in $Menu.get_children():
        child.show()

func _on_Menu_start_game():
    for child in $Menu.get_children():
        child.hide()
    new_game()
