extends ColorRect

func highlight_country(var country):
	for tile in self.get_children():
		if tile.country_this_tile_belongs_to == country:
			tile.highlight_tile()

func stop_highlight_country():
	for tile in self.get_children(): tile.stop_highlight_tile()
