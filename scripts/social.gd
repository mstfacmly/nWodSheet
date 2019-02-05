extends 'res://scripts/skillset.gd'

var skill = [ 'ANIMAL_KEN', 'EMPATHY', 'EXPRESSION', 'INTIMIDATION', 'PERSUASION', 'SOCIALIZE', 'STREETWISE', 'SUBTERFUGE' ]

var ANIMAL_KEN = [ 'animal needs', 'imminent attack', 'specific kind of animal', 'training' ]
var EMPATHY = [ 'emotion', 'lies', 'motives', 'personalities' ]
var EXPRESSION = [ 'classical dance', 'drama', 'exposés', 'musical instrument', 'newspaper articles', 'speeches' ]
var INTIMIDATION = [ 'bluster', 'physical threats', 'stare-downs', 'torture', 'veiled threats' ]
var PERSUASION = [ 'fast-talking', 'inspiring troops', 'motivational speeches', 'sales pitches', 'seduction' ]
var SOCIALIZE = [ 'bar hopping', 'dress balls', 'formal events', 'frat parties', 'state dinners' ]
var STREETWISE = [ 'black market', 'gangs', 'rumours', 'undercover operations' ]
var SUBTERFUGE = [ 'con jobs', 'hiding emotions', 'lying', 'misdirection', 'spotting lies' ]

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