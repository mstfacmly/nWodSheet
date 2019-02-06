extends 'res://scripts/DotCount.gd'

func save():
	Global.dict['skills'][get_name()] = { 'value ' : value, 'specialties' : $SPECIALTIES.checked }
	
func load_data():
	var saved_data = File.new()
	if !saved_data.file_exists('res://savegame.save'):
		value = 0
		set_pressed(value)
		return # No save file to load!
	saved_data.open('res://savegame.save', File.READ )
	var load_data = parse_json(saved_data.get_line())
	while not saved_data.eof_reached():
		for i in load_data['skills']:
			value = i['value']
			set_pressed(value)
	
func _ready():
#	load_data()
	hint_tooltip = str(value)