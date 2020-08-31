#> boomber:hotbar_gui/deserialize/into_offhand
# @within
#   boomber:hotbar_gui/deserialize/*

data modify storage boomber:hotbar_gui data.Slot set value 0b

setblock ~ ~ ~ minecraft:yellow_shulker_box
	data modify block ~ ~ ~ Items append from storage boomber:hotbar_gui data
	loot replace entity @s weapon.offhand 1 mine ~ ~ ~ minecraft:air{drop_contents: 1b}
setblock ~ ~ ~ minecraft:air