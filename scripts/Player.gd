extends KinematicBody2D

signal hit
export var speed = 400  # How fast the player will move (pixels/sec).
var screen_size  # Size of the game window.

# Called when the node enters the scene tree for the first time.
func _ready():
    screen_size = get_viewport_rect().size
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

    position.x = clamp(position.x, 0, screen_size.x)
    position.y = clamp(position.y, 0, screen_size.y)
    
    move_and_collide(movement)


func start(pos):
    position = pos
    show()
    $CollisionShape2D.disabled = false
