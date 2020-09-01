#> boomber:potion_launcher/item/hotbar_gui/event/dissolve
# @within
#   boomber:potion_launcher/item/hotbar_gui/*

#>
# @within
#   boomber:potion_launcher/item/hotbar_gui/event/dissolve
#   boomber:potion_launcher/item/hotbar_gui/impl/dissolve_item
#   boomber:potion_launcher/item/hotbar_gui/impl/dissolve_item/spawn
#declare storage boomber:potion_launcher/item
data merge storage boomber:potion_launcher/item {items: []}
	data modify storage boomber:potion_launcher/item items set from entity @s Item.tag.boomber.hotbar_gui.data
	data modify entity @s Item.tag.boomber.hotbar_gui.data set value []
	function boomber:potion_launcher/item/hotbar_gui/impl/dissolve_item

function boomber:potion_launcher/item/hotbar_gui/impl/close_item
function boomber:potion_launcher/item/hotbar_gui/impl/clear_inventory