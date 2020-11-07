extends Control

export(String,"Neutral", "USA", "USSR", "Europe") var country_this_tile_belongs_to


func _ready():
	pass
	match country_this_tile_belongs_to:
		"Neutral": $Tile.color = "7a7a7a"
		"USA": $Tile.color = "1d65d4"
		"USSR": $Tile.color = "d41d1d"
		"Europe":$Tile.color = "059cf6"



