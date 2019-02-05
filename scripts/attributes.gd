extends 'res://scripts/DotCount.gd'

func save():
	Global.dict['attributes'][get_name()] = value

func _ready():
	value = 1
	$label.set_text(self.get_name().capitalize())
	hint_tooltip = str(value)
	$sep.hint_tooltip = str(value)