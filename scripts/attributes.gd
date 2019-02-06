extends 'res://scripts/DotCount.gd'

func save():
	Global.dict['attributes'][get_name()] = {'value' : value}

func load_data():
	var saved_data = File.new()
	if !saved_data.file_exists('res://savegame.save'):
		value = 1
#		set_pressed(value)
		return # No save file to load!
	saved_data.open('res://savegame.save', File.READ )
	var load_data = parse_json(saved_data.get_as_text())
	for i in load_data['attributes']:
		if saved_data.eof_reached():
			break
		for v in load_data['attributes'][i]:
			value = load_data['attributes'][i][v]
			set_pressed(i, value)
			hint_tooltip = str(value)
#		value = load_data['attributes'][i]['value']
#		print(value)
#		set_pressed(value)

func _ready():
	load_data()
	set_pressed(nm, value)
	$label.set_text(self.get_name().capitalize())
	hint_tooltip = str(value)
	$sep.hint_tooltip = str(value)