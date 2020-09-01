#> boomber:potion_launcher/item/hotbar_gui/impl/dissolve_item
# @within
#   boomber:potion_launcher/item/hotbar_gui/event/dissolve
#   boomber:potion_launcher/item/hotbar_gui/impl/dissolve_item

data modify storage boomber:potion_launcher/item iter set from storage boomber:potion_launcher/item items[0]
data remove storage boomber:potion_launcher/item items[0]

function boomber:potion_launcher/item/hotbar_gui/impl/dissolve_item/spawn

execute if data storage boomber:potion_launcher/item items[] run function boomber:potion_launcher/item/hotbar_gui/impl/dissolve_item