#> boomber:potion_launcher/item/potion_launcher/event/destroy
# @within
#   boomber:potion_launcher/item/potion_launcher/event/*

data modify storage boomber:potion_launcher inventory set from storage boomber:potion_launcher item.tag.boomber.potion_launcher.inventory
	function boomber:potion_launcher/item/potion_launcher/impl/drop_items

playsound item.shield.break player @a ~ ~ ~ 1.0 1.0 0.0
replaceitem entity @s weapon.mainhand minecraft:air

data remove storage boomber:potion_launcher inventory