#> boomber:hotbar_gui/utils/into_inventory
# @api

setblock ~ ~ ~ minecraft:yellow_shulker_box
	data modify block ~ ~ ~ Items set from storage boomber:hotbar_gui data
	loot replace entity @s hotbar.0 9 mine ~ ~ ~ minecraft:air{drop_contents: 1b}
setblock ~ ~ ~ minecraft:air