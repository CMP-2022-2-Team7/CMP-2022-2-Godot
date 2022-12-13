extends RichTextLabel

#Create a variable to put text in
var dialog = ["It was a really scary dream.......","Wait... What time is it?","(Clock: 12pm)","Oh!!!!!!!!! I'm late!!!!!!!!!!",""]
var page = 0

func _ready():
	#Initial Settings
	set_bbcode(dialog[page])
	set_visible_characters(0)
	set_process_input(true)

func _input(event):
	#Run when you press the spacebar or left-click the mouse
	if Input.is_action_pressed("pass"):
		#Run when there are more visible characters than total character
		if get_visible_characters() > get_total_character_count():
			#At the end of one line, bring up the next text and make it work
			if page < dialog.size()-1:
				page += 1
				set_bbcode(dialog[page])
				set_visible_characters(0)
			#If you don't have any lines left, show them the button to go to the lobby
			else:
				get_node("/root/endingScene/Button").show()
		#If the visible character is less than the one you have, set it up so that the next character is visible
		else:
			set_visible_characters(get_total_character_count())

#Make each letter visible according to the set seconds
func _on_Timer_timeout():
	set_visible_characters(get_visible_characters()+1)
