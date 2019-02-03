extends 'res://scripts/skillset.gd'

var skill = [ 'ATHLETICS', 'BRAWL', 'DRIVE', 'FIREARMS', 'LARCENY', 'STEALTH', 'SURVIVAL', 'WEAPONRY' ]

var ATHLETICS = [ 'acrobatics' , 'climbing', 'kayaking', 'long distance running', 'sprinting', 'swimming', 'throwing'  ]
var BRAWL = [ 'blocking', 'boxing', 'dirty tricks', 'grappling', 'kung fu', 'throws' ]
var DRIVE = [ 'high-performance cars', 'motorcycles', 'off-road', 'pursuit', 'shaking tails', 'stunts' ]
var FIREARMS = [ 'autofire', 'bow', 'pistol', 'rifle', 'shotgun', 'sniping', 'trick shot' ]
var LARCENY = [ 'concealing stolen goods', 'lockpicking', 'pickpocketing', 'security systems', 'safecracking' ]
var STEALTH = [ 'camouflage', 'crowds', 'moving in darkness', 'moving in woods' ]
var SURVIVAL = [ 'foraging', 'navigation', 'meteorology', 'shelter' ]
var WEAPONRY = [ 'improvised weapons', 'knives', 'swords' ]

func set_skills():
	for i in children:
		$list.get_child(i).get_node('label').set_text(str(skill[i]).capitalize())
		$list.get_child(i).set_name(str(skill[i]))

func set_specialties():
	for i in skill:
		var skillName = find_node(i).get_child(2)
		for s in get(i):
			skillName.get_popup().add_check_item(s.capitalize())
			skillName.get_popup().set_item_as_checkable(int(s), 1)
			skillName.add_to_group('saveData')