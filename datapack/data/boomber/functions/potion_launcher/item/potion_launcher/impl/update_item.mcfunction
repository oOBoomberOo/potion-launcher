#> boomber:potion_launcher/item/potion_launcher/impl/update_item
# @within
#   boomber:potion_launcher/item/potion_launcher/event/*
#   boomber:potion_launcher/item/potion_launcher/impl/launch_potion/reduce_item

setblock ~ ~ ~ minecraft:yellow_shulker_box
	data modify block ~ ~ ~ Items append from storage boomber:potion_launcher item
	loot replace entity @s weapon.mainhand 1 mine ~ ~ ~ minecraft:air{drop_contents: 1b}
setblock ~ ~ ~ minecraft:air