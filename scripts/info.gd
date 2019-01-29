extends BoxContainer

onready var sheet = get_node('/root/base')

var text_input

func new_text(x):
	text_input = x
	sheet.call('save_data')

func save():
	var data = { get_name() : text_input }
	return data

func _ready():
	$input.connect('text_entered', self , 'new_text')
	add_to_group('saveData')