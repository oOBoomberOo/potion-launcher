#> boomber:hotbar_gui/utils/into_item
# @within
#   boomber:hotbar_gui/deserialize/*
#   boomber:hotbar_gui/serialize/*

#>
# @private
#declare tag boomber.hotbar_gui.temp
summon item ~ ~ ~ {Item: {id: 'minecraft:stone', Count: 1b}, Tags: ['boomber.hotbar_gui.temp']}
	execute as @e[tag=boomber.hotbar_gui.temp] run data modify entity @s Item set from storage boomber:hotbar_gui data[0]
	execute as @e[tag=boomber.hotbar_gui.temp] run tag @s remove boomber.hotbar_gui.temp