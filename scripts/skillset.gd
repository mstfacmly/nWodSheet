extends Node

onready var children = $list.get_children().size()
var checked = []
var skillset

func save():
	pass

func set_skills():
	for i in children:
		$list.get_child(i).add_to_group('saveData')

func get_skill_id(i):
	skillset = $list.get_child(i).get_node('SPECIALTIES').get_popup()

func _ready():
	set_skills()
	set_specialties()
	$label.add_font_override('font', load('res://assets/Bold.tres'))
	PhysicsServer.set_active(false)
	Physics2DServer.set_active(false)