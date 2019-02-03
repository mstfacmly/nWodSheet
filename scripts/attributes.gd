extends 'res://scripts/DotCount.gd'

func _ready():
	value = 1
	$label.set_text(self.get_name().capitalize())
