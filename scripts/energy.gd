extends Node

onready var sheet = get_node('/root/base')

func _ready():
	$label.set_text(sheet.ENERGYNAME.capitalize())