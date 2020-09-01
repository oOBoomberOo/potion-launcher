#> boomber:potion_launcher/item/hotbar_gui/impl/dissolve_item/spawn
# @within boomber:potion_launcher/item/hotbar_gui/impl/dissolve_item

#>
# @private
#declare tag boomber.potion_launcher.temp

summon item ~ ~ ~ {Item: {id: 'minecraft:stone', Count: 1b} ,Tags: ['boomber.potion_launcher.temp']}
	execute as @e[tag=boomber.potion_launcher.temp] run data modify entity @s Item set from storage boomber:potion_launcher/item iter
	execute as @e[tag=boomber.potion_launcher.temp] run tag @s remove boomber.potion_launcher.temp