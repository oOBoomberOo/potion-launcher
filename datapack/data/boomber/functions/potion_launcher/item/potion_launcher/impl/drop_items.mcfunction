#> boomber:potion_launcher/item/potion_launcher/impl/drop_items
# @within boomber:potion_launcher/item/potion_launcher/event/*
# @private

data modify storage boomber:hotbar_gui data set from storage boomber:potion_launcher inventory[0]
data remove storage boomber:potion_launcher inventory[0]

function boomber:hotbar_gui/utils/drop_item

execute if data storage boomber:potion_launcher inventory[] run function boomber:potion_launcher/item/potion_launcher/impl/drop_items