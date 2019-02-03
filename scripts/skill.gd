extends 'res://scripts/DotCount.gd'
"""
func set_group():
	if $check.pressed:
		$check.add_to_group('sepcialty')
	elif !$check.pressed:
		$check.remove_from_group('specialty')
"""
"""
func save():
	var dict = { get_name() : value }
	return dict
"""
func _ready():
	value = 0