extends HSlider

#Get Audio
export var audio_bus_name := "Master"

#Get the right index for audio and store it in a variable
onready var _bus := AudioServer.get_bus_index(audio_bus_name)

#Get the volume value and save it in the value variable
func _ready() -> void:
	value = db2linear(AudioServer.get_bus_volume_db(_bus))

#Volume changes every time you drag the circle shape above left and right
func _on_volume_value_changed(value):
	AudioServer.set_bus_volume_db(_bus, linear2db(value))
