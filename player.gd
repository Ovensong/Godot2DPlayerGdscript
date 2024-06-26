extends KinematicBody2D

#change to change speed
var speed = 6
var fastSpeed = 9
var defaultSpeed = 6
var dead = false
var health = 100

func _ready():
	#shows player on start
	show()
	 
func _process(delta):
	#checks if health is 0
	if health == 0:
		dead = true
	#checks input then changes by relative value
	var velocity = Vector2.ZERO
	if Input.is_action_pressed("left"):
		velocity -= 1
	if Input.is_action_pressed("right"):
		velocity += 1
	if Input.is_action_pressed("up"):
		velocity -= 1
	if Input.is_action_pressed("down"):
		velocity += 1
	velocity = velocity.normalized() * speed
	move_local_x(velocity.x)
	move_local_y(velocity.y)
	#sprinting
	if Input.is_action_pressed("fast"):
		speed = fastSpeed
	if !Input.is_action_pressed("fast"):
		speed = defaultSpeed
	if dead == true:
		#put death code here instead of pass
		pass
		


