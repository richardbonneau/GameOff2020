extends Control

export var node_open = false


func _ready():
	if node_open:
		$Closed.visible = false
		$Open.visible = true
	else:
		$Closed.visible = true
		$Open.visible = false
