extends LineEdit

onready var sheet = get_node('/root/base')
onready var label = get_position_in_parent()

var xp_data

func experience(i):
	xp_data = { get_parent().get_child(label - 1).get_text() : i }
	return xp_data
#	save()
	sheet.call('save_data')

func save():
	xp_data = { get_parent().get_child(label - 1).get_text() : get_text() }
	return xp_data
#	print(xp_data)

func _ready():
	add_to_group('saveData')
	connect('text_changed', self, 'experience')