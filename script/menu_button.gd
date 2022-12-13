extends Button

#Path variable for scene to move when button is pressed
export var reference_path = ""
#First Time Start Button Variables
export(bool) var start_focused = false

func _ready():
	#Focus on the start button
	if(start_focused):
		grab_focus()
	
	#Link the right action to the right function
	connect("mouse_entered",self,"_on_Button_mouse_entered")
	connect("pressed",self,"_on_Button_Pressed")

#Function to run when mouse over button
func _on_Button_mouse_entered():
	#Change the appearance of the button to suit it
	grab_focus()
	#Play sound effects when you press a button
	$click.play()

#Function to run when a button is pressed
func _on_Button_Pressed():
	#If there is a path, let the appropriate scene run for that path
	if(reference_path != ""):
		get_tree().change_scene(reference_path)
	#If there is no path, let the game end
	else:
		get_tree().quit()

#Play sound effects when moved by keyboard
func _on_Button_focus_entered():
	$click.play()
