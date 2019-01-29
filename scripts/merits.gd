extends 'res://scripts/DotCount.gd'

func save():
	var dict = { $input.text : value }
	return dict

func _ready():
	value = 0