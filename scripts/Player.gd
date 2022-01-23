extends KinematicBody2D
class_name Player

export var speed = 400  # How fast the player will move (pixels/sec).
export var toxicity_scale : NodePath

var toxicity_percent = 0

# Called when the node enters the scene tree for the first time.
func _ready():
    hide()

func _physics_process(delta):
    # Get player input
    var direction: Vector2
    direction.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
    direction.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")

    # If input is digital, normalize it for diagonal movement
    if abs(direction.x) == 1 and abs(direction.y) == 1:
        direction = direction.normalized()

    # Apply movement
    var movement = speed * direction * delta

    if not is_zero_approx(movement.x) or not is_zero_approx(movement.y):
        $AnimatedSprite.rotation = movement.angle() + (90 * PI / 180) # I dont wanna fuk wit da sprites
        $AnimatedSprite.play()
    else:
        $AnimatedSprite.stop()
        $AnimatedSprite.set_frame(0)

    move_and_collide(movement)


func start(pos):
    position = pos
    show()
