#> boomber:potion_launcher/item/potion_bag/display/line_format
# @within boomber:potion_launcher/item/potion_bag/display/items
# @private

data modify entity @s Item set from storage boomber:potion_launcher iter

setblock ~ ~ ~ minecraft:oak_sign{Text1: '[{"text": "・", "color": "gold", "italic": false}, {"selector": "@e[tag=boomber.potion_launcher.temp, limit=1]", "color": "gray", "italic": false}]'}
	data modify storage boomber:potion_launcher output append from block ~ ~ ~ Text1
setblock ~ ~ ~ minecraft:air