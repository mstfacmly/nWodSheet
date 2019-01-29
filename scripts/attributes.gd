extends 'res://scripts/DotCount.gd'

func save():
	var dict = { get_name() : value }
	return dict

func _ready():
	value = 1
	$label.set_text(self.get_name().capitalize())
