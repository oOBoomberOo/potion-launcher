#> boomber:potion_launcher/player/impl/copy_inventory
# @within boomber:potion_launcher/player/state/*

data modify storage boomber:potion_launcher item set from entity @s Inventory[{Slot: -106b}]

data modify storage boomber:hotbar_gui data set value []
	function boomber:hotbar_gui/utils/from_inventory
	data modify storage boomber:potion_launcher item.tag.boomber.potion_launcher.inventory set from storage boomber:hotbar_gui data

function boomber:potion_launcher/player/impl/replace_offhand