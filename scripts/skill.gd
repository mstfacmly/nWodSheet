extends 'res://scripts/DotCount.gd'

func save():
#	if !Global.dict['skills'].has(get_name()):
	Global.dict['skills'][get_name()] = { 'value' : value, 'specialties' : $SPECIALTIES.checked }
	"""
	elif Global.dict['skills'].has(get_name()):
		Global.dict['skills'][get_name()]['value'] += value
		Global.dict['skills'][get_name()]['specialties'] += $SPECIALTIES.checked"""
	
func load_data():
	var saved_data = File.new()
	if !saved_data.file_exists('res://savegame.save'):
		value = 0
		return # No save file to load!
	else:
		pass
	saved_data.open('res://savegame.save', File.READ )
	var load_data = parse_json(saved_data.get_line())
	for i in load_data['skills']:
		if saved_data.eof_reached():
			break
		for v in load_data['skills'][i]:
#			print(load_data['skills'][i]['value'])
			value = load_data['skills'][i]['value']
			load_pressed(i, value)
			
func _ready():
	pass
#	load_data()
#	set_pressed(nm, value)