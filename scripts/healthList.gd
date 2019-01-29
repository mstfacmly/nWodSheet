extends MenuButton

var Damage = [ ' ', '/', '✶X' , '✶✶✶✶✶*' ]

func populate():
	if !get_popup().items :
		for i in Damage:
			get_popup().add_item(i)

func set_text(i):
	text = Damage[i]

func save():
	pass
#	for i in Damage:
#		get_text()

func _ready():
	populate()
	get_popup().connect('id_pressed', self, 'set_text')
	PhysicsServer.set_active(false)
	Physics2DServer.set_active(false)