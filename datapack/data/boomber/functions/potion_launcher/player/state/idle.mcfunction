#> boomber:potion_launcher/player/state/idle
# @within boomber:potion_launcher/player/main

execute if predicate boomber:hotbar_gui/check/offhand positioned ~ 255 ~ run function boomber:potion_launcher/player/event/open
execute if predicate boomber:potion_launcher/filter/potion_launcher run function boomber:potion_launcher/item/potion_launcher/main