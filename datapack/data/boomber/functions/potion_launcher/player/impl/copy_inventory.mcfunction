#> boomber:potion_launcher/player/impl/copy_inventory
# @within
#   boomber:potion_launcher/player/event/*

data modify storage boomber:hotbar_gui data set value []
	function boomber:hotbar_gui/utils/from_inventory
	function boomber:potion_launcher/player/impl/copy_inventory/replace_selected_item_with_offhand
	data merge storage boomber:hotbar_gui/filter {input: [], output: [], iter: {}}
		data modify storage boomber:hotbar_gui/filter input set from storage boomber:hotbar_gui data
		function boomber:hotbar_gui/deserialize/filter