extends BoxContainer

signal recalc
signal xp_spend

export var value = 0

onready var sheet = get_node('/root/base')
#onready var health = find_node('HEALTH', 1 )

func _on_dot_toggled(btn):
	count(btn)
	emit_signal('recalc')
	emit_signal('xp_spend', self)

func count(b):
	if b != false:
		value += 1
	else:
		value -= 1
	hint_tooltip = str(value)

func _ready():
	if !is_connected('recalc', sheet, 'calcs'):
		connect('recalc', sheet, 'calcs')
	if !is_connected('xp_spend', sheet, 'spend_xp'):
		connect('xp_spend', sheet, 'spend_xp')
#	connect('recalc', health, 'calc_health')
#		print(is_connected('recalc', sheet, 'calcs'))
	add_to_group('saveData')
	hint_tooltip = str(value)
	set_physics_process(false)
	set_process(false)
	PhysicsServer.set_active(false)
	Physics2DServer.set_active(false)