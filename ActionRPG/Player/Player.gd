extends CharacterBody2D

@export var speed = 100

#not necessary
func _ready():
	print("Player Loaded")
	
func printDirection(input_direction):
	if input_direction != Vector2(0,0):
		#print("Key pressed" + str(input_direction))
		pass



func get_input():
	var input_direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	printDirection(input_direction)
	velocity = input_direction * speed

#runs at every step
func _physics_process(_delta):
	get_input()
	move_and_slide()
	
	
