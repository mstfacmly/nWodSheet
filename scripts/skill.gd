extends 'res://scripts/DotCount.gd'

onready var spec = $SPECIALTIES

func save():
	Global.dict['skills'][get_name()] = { 'value ' : value, 'specialties' : spec.checked }

func _ready():
	value = 0