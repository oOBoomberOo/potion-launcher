#> boomber:potion_launcher/player/state/open
# @within boomber:potion_launcher/player/main

execute if predicate boomber:hotbar_gui/check/offhand positioned ~ 255 ~ run function boomber:potion_launcher/player/impl/copy_inventory

execute if predicate boomber:hotbar_gui/check/mainhand unless predicate boomber:hotbar_gui/check/offhand positioned ~ 255 ~ run function boomber:potion_launcher/player/event/close
execute unless predicate boomber:hotbar_gui/check/mainhand unless predicate boomber:hotbar_gui/check/offhand run function boomber:potion_launcher/player/transition/idle