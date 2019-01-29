extends 'res://scripts/skillset.gd'

var skill = [ 'ACADEMICS', 'COMPUTER', 'CRAFTS', 'INVESTIGATION', 'MEDICINE', 'OCCULT', 'POLITICS', 'SCIENCE' ]

var ACADEMICS = [ 'anthropology', 'art', 'english', 'history', 'law', 'religion', 'research' ]
var COMPUTER = [ 'artificial intelligence', 'data retrieval', 'graphics', 'hacking', 'internet' ]
var CRAFTS = [ 'automobiles', 'aircraft', 'forging', 'jury-rigging', 'sculpting', 'rigging' ]
var INVESTIGATION = [ 'artifacts', 'body language', 'crime scenes', 'cryptography', 'dreams', 'autopsy diagnoses', 'puzzles', 'riddles', 'scientific experiments' ]
var MEDICINE = [ 'emergency care', 'pathology', 'pharmaceuticals', 'physical Therapy', 'surgery' ]
var OCCULT = [ 'cultural beliefs', 'ghosts', 'magic', 'monsters', 'superstitions', 'witchcraft' ]
var POLITICS = [ 'bribery', 'elections', 'federal', 'local', 'state', 'scandals' ]
var SCIENCE = [ 'biology', 'chemsitry', 'geology', 'metallurgy', 'physics' ]

func set_skills():
	for i in children:
		$list.get_child(i).get_node('label').set_text(str(skill[i]).capitalize())
		$list.get_child(i).set_name(str(skill[i]))
		$list.get_child(i).add_to_group('saveData')

func set_specialties():
	for i in skill:
		var skillName = find_node(i).get_child(2)
		for s in get(i):
			skillName.get_popup().add_check_item(s.capitalize())
			skillName.get_popup().set_item_as_checkable(int(s), 1)
			skillName.add_to_group('saveData')

func _ready():
	pass