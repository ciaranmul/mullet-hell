extends RigidBody2D

signal increase_score(additional_score)

# Called when the node enters the scene tree for the first time.
func _ready():
    $AnimatedSprite.frame = 0
    $AnimatedSprite.stop()

func interaction_can_interact(interactionComponentParent: Node) -> bool:
    return interactionComponentParent is Player

func interaction_get_text() -> String:
    return "Smash"

func interaction_interact(interactionComponentParent : Node) -> void:
    $AnimatedSprite.frame = 1
    $Particles2D.emitting = 1
    
    emit_signal("increase_score", 1000)
    
    collision_layer = collision_layer ^ 4
