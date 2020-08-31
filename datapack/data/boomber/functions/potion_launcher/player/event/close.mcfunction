#> boomber:potion_launcher/player/event/close
# Opening bag event
# @within
#   boomber:potion_launcher/player/transition/*
#   boomber:potion_launcher/player/state/*
#   boomber:potion_launcher/player/main

data modify storage boomber:potion_launcher item set from entity @s SelectedItem
	data modify storage boomber:potion_launcher target_item set from storage boomber:potion_launcher item
	data modify storage boomber:potion_launcher target_item.tag.boomber.hotbar_gui set value {}
	data modify storage boomber:potion_launcher target_item.Slot set from entity @s SelectedItemSlot

data modify storage boomber:hotbar_gui data set from storage boomber:potion_launcher item.tag.boomber.hotbar_gui.data
data modify storage boomber:hotbar_gui target_item set from storage boomber:potion_launcher target_item
	function boomber:hotbar_gui/deserialize/run

# Making sure player didn't take anything out of the bag
replaceitem entity @s weapon.offhand minecraft:air