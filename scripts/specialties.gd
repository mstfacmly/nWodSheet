extends Button

signal skillID

onready var sheet = get_node('/root/base')
onready var skillParent = get_parent()
onready var skillset = get_popup()
var checked = []

func set_checked(a):
	if skillset.is_item_checked(a) != true:
		skillset.set_item_checked(a, 1)
		checked.append(a)
	else:
		skillset.set_item_checked(a, 0)
		checked.remove(a)
	
	checked.sort()
	"""	
	if !checked.empty():
		add_stylebox_override('normal', load('res://assets/styleboxes/selected.tres'))
	else:
		add_stylebox_override('normal', load('res://assets/styleboxes/white_dark.tres'))
	"""
	save()
	sheet.call('save_data')

func save():
	SaveDict.dict[skillParent.get_name()] = str(' specialties', checked)

func _ready():
	get_popup().connect('index_pressed', self, 'set_checked')
	add_stylebox_override('normal', load('res://assets/styleboxes/white_dark.tres'))
	PhysicsServer.set_active(false)
	Physics2DServer.set_active(false)
