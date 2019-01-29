extends LineEdit

onready var sheet = get_node('/root/base')

func update_text(i):
	text = i
	save()
	sheet.call('save_data')

func save():
	var data = text
	return data
	sheet.call('save_data')

func _ready():
	add_to_group('saveData')
	connect('text_entered', self, 'update_text')
	connect('focus_exited', self, 'save')