extends Node

onready var MainTimer = get_node("MainTimer")
onready var TimeLeft = get_node("MainTimer/TimeLeft")

func _ready():
	MainTimer.start(600)
	pass # Replace with function body.

func GetRemainingTime(RemainingTime: float):
	var RemainingMinutes = str(int(RemainingTime / 60))
	var RemainingSeconds = int(RemainingTime) % 60
	var RemainingSecondsText = str(RemainingSeconds) if RemainingSeconds > 10 else "0" + str(RemainingSeconds)		
	TimeLeft.set_text(str(RemainingMinutes + ":" + RemainingSecondsText))

func _process(delta):
	GetRemainingTime(MainTimer.time_left)
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
