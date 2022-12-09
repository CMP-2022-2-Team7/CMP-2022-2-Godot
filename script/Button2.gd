extends Button

export(bool) var start_focused = false
var text1 = false
var text2 = false
var text3 = false

func _ready():
	if(start_focused):
		grab_focus()
		
	connect("mouse_entered",self,"_on_Button_mouse_entered")
	connect("pressed",self,"_on_Button_Pressed")
	
func _on_Button_mouse_entered():
	grab_focus()
	$click.play()
	
	
func _on_Button_Pressed():
	if(text1 == false):
		text1 = true
		get_node("/root/endingScene/text1").show()
	elif(text2 == false):
		text2 = true
		get_node("/root/endingScene/text1").hide()
		get_node("/root/endingScene/text2").show()
	elif(text3 == false):
		text3 = true
		get_node("/root/endingScene/text2").hide()
		get_node("/root/endingScene/text3").show()
		get_node("/root/endingScene/Button").show()
	
