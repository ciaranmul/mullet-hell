extends Node

var formatted_score : String

var _score : int = 0
var _multiplier : float = 1

# Called when the node enters the scene tree for the first time.
func _ready():
    pass # Replace with function body.

func increase_score(additional_score : int):
    _score += additional_score
    formatted_score = "%06d" % _score

func set_multiplier(new_multiplier: float):
    _multiplier = new_multiplier
