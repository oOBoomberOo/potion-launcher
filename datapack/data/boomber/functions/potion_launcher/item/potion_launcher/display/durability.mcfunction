#> boomber:potion_launcher/item/potion_launcher/display/durability
# @within boomber:potion_launcher/item/potion_launcher/event/durability

#>
# @private
#declare score_holder #inverse_damage
scoreboard players operation #inverse_damage bb.pl.var = #durability bb.pl.var
scoreboard players operation #inverse_damage bb.pl.var -= #damage bb.pl.var

setblock ~ ~ ~ minecraft:oak_sign{Text1: '[{"text": "Durability: ", "color": "blue", "italic": false}, {"score": {"name": "#inverse_damage", "objective": "bb.pl.var"}}, "/", {"score": {"name": "#durability", "objective": "bb.pl.var"}}]'}
	data modify storage boomber:potion_launcher item.tag.display.Lore[-1] set from block ~ ~ ~ Text1
setblock ~ ~ ~ minecraft:air