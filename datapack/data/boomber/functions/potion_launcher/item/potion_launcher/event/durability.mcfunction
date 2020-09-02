#> boomber:potion_launcher/item/potion_launcher/event/durability
# @within
#   boomber:potion_launcher/item/potion_launcher/main
#   boomber:potion_launcher/item/potion_launcher/event/*
#   boomber:potion_launcher/item/potion_launcher/impl/launch_potion

data merge storage boomber:potion_launcher {item: false}
	data modify storage boomber:potion_launcher item set from entity @s SelectedItem

#>
# @private
# @within boomber:potion_launcher/item/potion_launcher/impl/sync_durability
#declare score_holder #durability
execute store result score #durability bb.pl.var run data get storage boomber:potion_launcher item.tag.ctc.tool.durability

#>
# @private
# @within boomber:potion_launcher/item/potion_launcher/impl/sync_durability
#declare score_holder #damage
execute store result score #damage bb.pl.var run data get storage boomber:potion_launcher item.tag.ctc.tool.damage
execute store result storage boomber:potion_launcher item.tag.ctc.tool.damage int 1 run scoreboard players add #damage bb.pl.var 1
	execute positioned ~ 255 ~ run function boomber:potion_launcher/item/potion_launcher/display/durability
	function boomber:potion_launcher/item/potion_launcher/impl/sync_durability
	execute positioned ~ 255 ~ run function boomber:potion_launcher/item/potion_launcher/impl/update_item
	
execute store result score #damage bb.pl.var run data get storage boomber:potion_launcher item.tag.ctc.tool.damage
	execute if score #damage bb.pl.var >= #durability bb.pl.var run function boomber:potion_launcher/item/potion_launcher/event/destroy

data remove storage boomber:potion_launcher item