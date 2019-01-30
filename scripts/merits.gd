extends 'res://scripts/DotCount.gd'

func update_text(i):
	save()

func save():
	var dict = { $input.get_text() : value }
	return dict

func _ready():
	value = 0
	$input.connect('focus_exited', self, 'save')
	$input.connect('text_entered', self, 'update_text')