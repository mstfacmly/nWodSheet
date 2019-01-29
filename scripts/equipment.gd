extends BoxContainer

onready var sheet = get_node('/root/base')

func new_text(x):
	$name.text = x
	save()
	sheet.call('save_data')

func new_val(x):
	$value.text = x
	save()
	sheet.call('save_data')

func save():
	var data = { $name.text : $value.text }
	return data
	sheet.call('save_data')

func _ready():
	$name.connect('focus_exited', self , 'save')
	$name.connect('text_entered', self , 'new_text')
	$value.connect('focus_exited', self , 'save')
	$value.connect('text_entered', self , 'new_val')
	add_to_group('saveData')