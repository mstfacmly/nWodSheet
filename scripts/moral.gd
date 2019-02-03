extends 'res://scripts/DotCount.gd'

#export var MORALITY = 7
#onready var sheet = get_node('/root/base')

#func save():
#	SaveDict.dict[sheet.MORALNAME] = sheet.MORAL
#	var data = { get_node('label').get_text() : sheet.MORAL }
#	return data

func _ready():
	value = sheet.MORAL
#	hint_tooltip = str(sheet.MORAL)
	$label.set_text(sheet.MORALNAME.capitalize())
#	add_to_group('saveData')