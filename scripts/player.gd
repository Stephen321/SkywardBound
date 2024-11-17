extends Area2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0
const UPWARD_MOMENTUM = -100
const GRAVITY_SCALED = Vector2(0, 9.81) * 50

var jump: bool = false
var velocity: Vector2
var acceleration: Vector2

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("jump"):
		jump = true

func _physics_process(delta: float) -> void:
	acceleration = GRAVITY_SCALED
	velocity += acceleration * delta
	position += (velocity * delta)
	print("asdasd hi velocity %s" % velocity)
	print("position %s" % position)
