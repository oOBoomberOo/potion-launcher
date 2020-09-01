#> boomber:potion_launcher/player/display/potion_bag
# @within boomber:potion_launcher/player/display/extra

#>
# @private
# @within boomber:potion_launcher/item/potion_bag/display/line_format
#declare tag boomber.potion_launcher.temp
summon item ~ ~ ~ {Tags: ['boomber.potion_launcher.temp'], Item: {id: 'minecraft:stone', Count: 1b}}
	data modify storage boomber:potion_launcher input set from storage boomber:potion_launcher target_item.tag.boomber.potion_launcher.inventory
	data modify storage boomber:potion_launcher output set value []
	execute as @e[tag=boomber.potion_launcher.temp] run function boomber:potion_launcher/item/potion_bag/display/items
	kill @e[tag=boomber.potion_launcher.temp]

data modify storage boomber:potion_launcher target_item.tag.display.Lore set from storage boomber:potion_launcher output