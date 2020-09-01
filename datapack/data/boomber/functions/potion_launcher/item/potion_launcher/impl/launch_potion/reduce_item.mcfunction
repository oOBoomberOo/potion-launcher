#> boomber:potion_launcher/item/potion_launcher/impl/launch_potion/reduce_item
# @within boomber:potion_launcher/item/potion_launcher/impl/launch_potion

data modify storage boomber:potion_launcher item set from entity @s SelectedItem
	data remove storage boomber:potion_launcher item.tag.boomber.potion_launcher.inventory[0]
	execute positioned ~ 255 ~ run function boomber:potion_launcher/item/potion_launcher/impl/update_item