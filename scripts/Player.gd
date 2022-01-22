extends KinematicBody2D

export var speed = 400  # How fast the player will move (pixels/sec).

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
        rotation = movement.angle() + (90 * PI / 180)
    
    move_and_collide(movement)


func start(pos):
    position = pos
    show()
