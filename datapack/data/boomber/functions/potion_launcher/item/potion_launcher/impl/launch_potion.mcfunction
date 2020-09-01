#> boomber:potion_launcher/item/potion_launcher/impl/launch_potion
# @within boomber:potion_launcher/item/potion_launcher/event/*

data merge storage boomber:potion_launcher {item: false}
	function boomber:potion_launcher/item/potion_launcher/impl/launch_potion/get_item
	function boomber:potion_launcher/item/potion_launcher/impl/launch_potion/spawn
	function boomber:potion_launcher/item/potion_launcher/impl/launch_potion/reduce_item

function boomber:potion_launcher/item/potion_launcher/event/durability

playsound minecraft:entity.splash_potion.throw player @a ~ ~ ~ 1.0 0.5