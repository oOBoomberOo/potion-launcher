#> boomber:potion_launcher/item/potion_bag/display/items
# @within boomber:potion_launcher/player/display/potion_bag
# @private

data modify storage boomber:potion_launcher iter set from storage boomber:potion_launcher input[0]
data remove storage boomber:potion_launcher input[0]

function boomber:potion_launcher/item/potion_bag/display/line_format

execute if data storage boomber:potion_launcher input[] run function boomber:potion_launcher/item/potion_bag/display/items