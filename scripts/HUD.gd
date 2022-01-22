extends CanvasLayer

signal start_game

const Hours = preload("Hours.gd")
onready var hours = Hours.new()

# Called when the node enters the scene tree for the first time.
func _ready():
    pass # Replace with function body.

func update_time(hour):
    var time = hours.hour_to_time(hour)
    print("Time: %s" % time)
    $Time.text = str(time)
