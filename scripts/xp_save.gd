extends LineEdit

onready var sheet = get_node('/root/base')
onready var label = get_position_in_parent()

var xp_data

func experience(i):
	sheet.call('save_data')

func save():
	Global.dict[get_parent().get_child(label - 1).get_text()] = get_text()

func _ready():
	add_to_group('saveData')
	connect('text_entered', self, 'experience')