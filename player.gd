extends Area2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0
const UPWARD_MOMENTUM = -100

var jump: bool = false
var velocity: Vector2 = Vector2(0, UPWARD_MOMENTUM)
var acceleration: Vector2

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("jump"):
		jump = true

func _physics_process(delta: float) -> void:
	acceleration = Vector2(0, UPWARD_MOMENTUM)
	velocity += acceleration * delta
	if jump:
		velocity.x = UPWARD_MOMENTUM * 80 * delta
		velocity.y = UPWARD_MOMENTUM * 150 * delta
		jump = false
	position += (velocity * delta)
	pass
