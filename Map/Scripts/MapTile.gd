extends Control

onready var map = self.get_owner()
export(String,"Neutral", "USA", "USSR", "Europe") var country_this_tile_belongs_to
var tile_color


func _ready():
	match country_this_tile_belongs_to:
		"Neutral": tile_color = "7a7a7a"
		"USA": tile_color = "1d65d4"
		"USSR": tile_color = "d41d1d"
		"Europe":tile_color = "059cf6"
		
	$Tile.color = tile_color


func _on_mouse_entered():
	if country_this_tile_belongs_to != "Neutral":
		map.highlight_country(country_this_tile_belongs_to)

func _on_mouse_exited():
	map.stop_highlight_country()


func highlight_tile():
	$Tile.color = "fff"

func stop_highlight_tile():
	$Tile.color = tile_color
