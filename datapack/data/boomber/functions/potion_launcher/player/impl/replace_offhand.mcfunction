#> boomber:potion_launcher/player/impl/replace_offhand
# @within boomber:potion_launcher/player/**

data modify storage boomber:potion_launcher item.Slot set value 0b

setblock ~ ~ ~ minecraft:yellow_shulker_box
	data modify block ~ ~ ~ Items append from storage boomber:potion_launcher item
	loot replace entity @s weapon.offhand 1 mine ~ ~ ~ minecraft:air{drop_contents: 1b}
setblock ~ ~ ~ minecraft:air