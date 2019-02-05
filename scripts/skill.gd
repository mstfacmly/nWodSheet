extends 'res://scripts/DotCount.gd'

func save():
	Global.dict['skills'][get_name()] = value

func _ready():
	value = 0