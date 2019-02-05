extends 'res://scripts/DotCount.gd'

func update_text(i):
	sheet.call('save_data')

func save():
	if $input.get_text().empty():
		Global.dict['backgrounds'][get_name()] = value
	else:
		Global.dict['backgrounds'][$input.get_text()] = value

func _ready():
	value = 0
	$input.connect('focus_exited', self, 'save')
	$input.connect('text_entered', self, 'update_text')