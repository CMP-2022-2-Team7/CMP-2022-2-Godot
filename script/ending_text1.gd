extends RichTextLabel

var dialog = ["It was a really scary dream.......","Wait... What time is it?","(Clock: 12pm)","Oh!!!!!!!!! I'm late!!!!!!!!!!",""]
var page = 0

func _ready():
	set_bbcode(dialog[page])
	set_visible_characters(0)
	set_process_input(true)

func _input(event):
	if Input.is_action_pressed("pass"):
		if get_visible_characters() > get_total_character_count():
			if page < dialog.size()-1:
				page += 1
				set_bbcode(dialog[page])
				set_visible_characters(0)
			else:
				get_node("/root/endingScene/Button").show()
		else:
			set_visible_characters(get_total_character_count())

func _on_Timer_timeout():
	set_visible_characters(get_visible_characters()+1)
