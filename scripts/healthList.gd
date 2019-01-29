extends MenuButton

var Damage = [ ' ', '/', '✶X' , '✶✶✶✶✶*' ]

onready var sheet = get_node('/root/base')

func populate():
	if !get_popup().items :
		for i in Damage:
			get_popup().add_item(i)

func set_text(i):
	text = Damage[i]
	save()
	sheet.call('save_data')

func save():
	var data = text
	return data
#	for i in Damage:
#		get_text()

func _ready():
	populate()
	get_popup().connect('id_pressed', self, 'set_text')
	PhysicsServer.set_active(false)
	Physics2DServer.set_active(false)
	add_to_group('saveData')