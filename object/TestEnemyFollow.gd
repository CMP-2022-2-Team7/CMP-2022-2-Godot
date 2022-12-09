extends KinematicBody2D				

export (int) var speed = 2
var velocity = Vector2.ZERO
onready var agent = $NavigationAgent2D

# player to follow
onready var player = $"../PlayerNode"

func _ready():
	update_pathfinding()
	# use timer to update the path periodically
	#$Timer.connect("timeout", self, "update_pathfinding")

func _physics_process(delta):

	# arrived at the player location?
	if(agent.is_navigation_finished()):
		return
		
	# get direction to the next location from the navigation agent
	var direction = global_position.direction_to(agent.get_next_location())
	
	# Set velocity toward the next location and move
	velocity = direction * speed
	move_and_slide(velocity)
	
# Update the agent with a new path to the player. 
# This is called by the timer at every 0.5 seconds.
func update_pathfinding():
	agent.set_target_location(player.global_position)

