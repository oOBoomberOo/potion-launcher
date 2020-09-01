#> boomber:potion_launcher/player/event/close
# Opening bag event
# @within
#   boomber:potion_launcher/player/transition/*
#   boomber:potion_launcher/player/state/*
#   boomber:potion_launcher/player/main

data modify storage boomber:potion_launcher item set from entity @s SelectedItem
	data modify storage boomber:potion_launcher target_item set from storage boomber:potion_launcher item
	data modify storage boomber:potion_launcher target_item.tag.boomber.hotbar_gui set value {is_open: false, data: []}
	execute store result storage boomber:potion_launcher target_item.Slot byte 1 run data get entity @s SelectedItemSlot

function boomber:potion_launcher/player/impl/get_filter_type
	function boomber:potion_launcher/player/impl/copy_inventory
	data modify storage boomber:potion_launcher target_item.tag.boomber.potion_launcher.inventory set from storage boomber:hotbar_gui/filter output
	function boomber:potion_launcher/player/display/extra

data modify storage boomber:hotbar_gui data set from storage boomber:potion_launcher item.tag.boomber.hotbar_gui.data
data modify storage boomber:hotbar_gui target_item set from storage boomber:potion_launcher target_item
	function boomber:hotbar_gui/deserialize/run

function boomber:potion_launcher/player/transition/idle