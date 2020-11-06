extends Node2D

var colorRectSize = Vector2(30, 30)

func _ready() -> void:
	
	pass # Replace with function body.

func initializeBar(total: int, labelString: String) -> void:
	for i in range(total):
		var colorRect = ColorRect.new()
		colorRect.set_size(colorRectSize)
		var y = 35
		var x = (35 * i) + 5
		colorRect.set_position(Vector2(x, y))
		colorRect.color = Color('#4e7048')
		add_child(colorRect)
	var labelText = get_node("LabelText")
	labelText.set_text(labelString)
	pass
