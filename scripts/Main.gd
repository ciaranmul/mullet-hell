extends Node

var hour = 0

const Hours = preload("Hours.gd")
onready var hours = Hours.new()

# Called when the node enters the scene tree for the first time.
func _ready():
    randomize()
    new_game()

func _on_StartTimer_timeout():
    $HourTimer.start()
    $Player.start($StartPosition.position)

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
    $StartTimer.start()
