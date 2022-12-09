extends HSlider

export var audio_bus_name := "Master"

onready var _bus := AudioServer.get_bus_index(audio_bus_name)


func _ready() -> void:
	value = db2linear(AudioServer.get_bus_volume_db(_bus))




#var master_bus = AudioServer.get_bus_index("Master")



#func _on_volume_value_changed(value):
#	AudioServer.set_bus_volume_db(master_bus,value)
	
#	if value == 0:
#		AudioServer.set_bus_mute(master_bus,true)
#	else:
#		AudioServer.set_bus_mute(master_bus,false)
	
	


func _on_volume_value_changed(value):
	AudioServer.set_bus_volume_db(_bus, linear2db(value))
