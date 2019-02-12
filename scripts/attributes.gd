extends 'res://scripts/DotCount.gd'

func save():
#	if !Global.dict['attributes'].has(get_name()):
	Global.dict['attributes'][get_name()] = {'value' : value}
	"""
	elif Global.dict['attributes'].has(get_name()): 
		if Global.dict['attributes'][get_name()]['value'] == value:
			Global.dict['attributes'][get_name()]['value'] = value
		else:
			Global.dict['attributes'][get_name()]['value'] += value
#	sheet.call('save_data')"""

func load_data():
	var saved_data = File.new()
	if !saved_data.file_exists('res://savegame.save'):
		value = 1
		return # No save file to load!
	else:
		pass
	saved_data.open('res://savegame.save', File.READ )
	var load_data = parse_json(saved_data.get_line())
	for i in load_data['attributes']:
		if saved_data.eof_reached():
			break
		for v in load_data['attributes'][i]:
#			load_data['attributes'][i][v] = value = set(v,load_data['attributes'][i][v])
			value = load_data['attributes'][i][v]
			load_pressed(i, value)

func _ready():
#	load_data()
#	set_pressed(nm, value)
	$label.set_text(self.get_name().capitalize())
#	hint_tooltip = str(value)
#	$sep.hint_tooltip = str(value)