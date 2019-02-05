extends LineEdit

onready var sheet = get_node('/root/base')

func update_text(i):
	text = i
	sheet.call('save_data')

func save():
	Global.dict['data'][get_name()] = text

func _ready():
	add_to_group('saveData')
	connect('text_entered', self, 'update_text')
	connect('focus_exited', self, 'save')