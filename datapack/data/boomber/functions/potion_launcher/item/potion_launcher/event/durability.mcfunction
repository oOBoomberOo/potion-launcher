#> boomber:potion_launcher/item/potion_launcher/event/durability
# @within
#   boomber:potion_launcher/item/potion_launcher/main
#   boomber:potion_launcher/item/potion_launcher/event/*
#   boomber:potion_launcher/item/potion_launcher/impl/launch_potion

data merge storage boomber:potion_launcher {item: false}
	data modify storage boomber:potion_launcher item set from entity @s SelectedItem

#>
# @private
#declare score_holder #damage
execute store result score #damage bb.pl.var run data get storage boomber:potion_launcher item.tag.Damage
execute store result storage boomber:potion_launcher item.tag.Damage int 1 run scoreboard players add #damage bb.pl.var 1

execute positioned ~ 255 ~ run function boomber:potion_launcher/item/potion_launcher/impl/update_item

execute if score #damage bb.pl.var matches 26.. run function boomber:potion_launcher/item/potion_launcher/event/destroy

data remove storage boomber:potion_launcher item