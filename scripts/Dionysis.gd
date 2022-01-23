extends KinematicBody2D

signal increase_player_toxicity(amount)

# Called when the node enters the scene tree for the first time.
func _ready():
    pass # Replace with function body.

func interaction_can_interact(interactionComponentParent: Node) -> bool:
    return interactionComponentParent is Player

func interaction_get_text() -> String:
    return "Smash"

func interaction_interact(interactionComponentParent : Node) -> void:
    $CanvasLayer/Dialogue.show()
    emit_signal("increase_player_toxicity", 10)

    yield(get_tree().create_timer(1.5), "timeout")
    $CanvasLayer/Dialogue.hide()
