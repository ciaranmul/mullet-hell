extends Node

signal score_changed(new_score)

var _score : int = 0
var _multiplier : float = 1

# Called when the node enters the scene tree for the first time.
func _ready():
    pass # Replace with function body.

func increase_score(additional_score : int):
    print("Score increased by: %s" % additional_score)
    _score += additional_score * max(1, _multiplier)
    emit_signal("score_changed", "%06d" % _score)

func set_multiplier(new_multiplier: float):
    _multiplier = new_multiplier
