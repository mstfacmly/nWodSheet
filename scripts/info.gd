extends BoxContainer

onready var sheet = get_node('/root/base')

var text_input

func new_text(x):
	text_input = x
	save()
	sheet.call('save_data')

func save():
	Global.dict[get_name()] = text_input

func _ready():
	$input.connect('text_entered', self , 'new_text')
	$input.connect('tree_exited', self, 'new_text')
	add_to_group('saveData')