extends 'res://scripts/DotCount.gd'

func save():
	Global.dict[sheet.MORALNAME] = value

func _ready():
	value = sheet.MORAL
	hint_tooltip = str(value)
	$label.set_text(sheet.MORALNAME.capitalize())
	add_to_group('saveData')