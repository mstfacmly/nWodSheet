extends OptionButton

onready var sheet = get_node('/root/base')
var value

func save():
	Global.dict[get_parent().get_name()] = value

func value_select(a):
	value = a
	sheet.call('save_data')

func _ready():	
	get_popup().connect('index_pressed', self, 'value_select')
	add_to_group('saveData')
	set_values()
	PhysicsServer.set_active(false)
	Physics2DServer.set_active(false)