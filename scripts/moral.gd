extends Node

#export var MORALITY = 7
onready var sheet = get_node('/root/base')

func save():
	var data = { get_node('label').get_text() : sheet.MORAL }
	return data

func _ready():
	$label.set_text(sheet.MORALNAME.capitalize())
	add_to_group('saveData')