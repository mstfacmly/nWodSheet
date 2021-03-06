extends BoxContainer

signal recalc
signal xp_spend

var nm = ''
var value = 0

onready var sheet = get_node('/root/base')
#onready var health = find_node('HEALTH', 1 )

func _on_dot_toggled(btn):
	count(btn)
	emit_signal('recalc')
	emit_signal('xp_spend', self)

func count(b):
	if b != false:
		value -= 1
	else:
		value += 1
	hint_tooltip = str(value)
	set_pressed()

func load_pressed(nm, val):
	if get_name() == nm:
		value = val
		hint_tooltip = str(val)
		for i in val:
			find_node('dots').get_child(i).set_pressed(0)

func set_pressed():
	for i in value:
		find_node('dots').get_child(i).set_pressed(0)
	call('save')
#	sheet.call('save_data')

func _ready():
	connect('recalc', sheet, 'calcs')
	connect('xp_spend', sheet, 'spend_xp')
#	connect('recalc', health, 'calc_health')
#		print(is_connected('recalc', sheet, 'calcs'))
#	hint_tooltip = str(value)
	add_to_group('saveData')
