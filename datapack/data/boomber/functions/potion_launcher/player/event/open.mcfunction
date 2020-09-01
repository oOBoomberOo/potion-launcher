#> boomber:potion_launcher/player/event/open
# Opening bag event
# @within
#   boomber:potion_launcher/player/transition/*
#   boomber:potion_launcher/player/state/*
#   boomber:potion_launcher/player/main

data modify storage boomber:potion_launcher item set from entity @s Inventory[{Slot: -106b}]
	data modify storage boomber:potion_launcher item.Slot set value 0b

function boomber:hotbar_gui/serialize/run
	data modify storage boomber:potion_launcher item.tag.boomber.hotbar_gui.is_open set from storage boomber:hotbar_gui is_open
	data modify storage boomber:potion_launcher item.tag.boomber.hotbar_gui.data set from storage boomber:hotbar_gui data

data modify storage boomber:hotbar_gui data set from storage boomber:potion_launcher item.tag.boomber.potion_launcher.inventory
	function boomber:hotbar_gui/utils/into_inventory

function boomber:potion_launcher/player/impl/replace_offhand

function boomber:potion_launcher/player/transition/open