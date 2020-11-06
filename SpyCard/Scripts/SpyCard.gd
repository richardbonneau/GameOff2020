extends Node2D

onready var nameTag = get_node("SpyName")
onready var description = get_node("SpyDescription")
onready var statusBar = load('res://StatusBar/StatusBar.tscn')

# interface Spy {
# name: string,
# country: string,
# description: string
# skills: {
# discretion: int,
# mobility: int,
# intelligenceGathering: int,
# disruption: int,
# strengthOfMind: int,
# }
# missionLength: int
#}
 
const mockSpyData = [
	{
		'name': 'Yvan Yakovlevitch',
		'country': 'Moldova',
		"description": 'Born during the harshest winter, Yvan was raised by wolves. He learned to tread lightly, not make a sound, and blend in.',
		'skills': {
			'discretion': 10,
			'mobility': 5,
			'intelligenceGathering': 3,
			'disruption': 7,
			'strengthOfMind': 10
		},
		'missionLength': 35
	}
]

const fieldLabels = ['Discretion', 'Mobility', 'Intelligence Gathering', 'Disruption', 'Strength of Mind']

func _ready() -> void:
	var currentSpy = mockSpyData[0]
	nameTag.set_text(currentSpy.name)
	description.set_text(currentSpy.description)
	var skills = currentSpy.skills.keys()
	for i in range(skills.size()):
		var skillBar = statusBar.instance()
		skillBar.initializeBar(currentSpy.skills[skills[i]], fieldLabels[i])
		# TODO: Not use magic numbers pls
		var x = 30
		var y = 250 + (i * 70)
		skillBar.set_position(Vector2(x, y))
		add_child(skillBar)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass
