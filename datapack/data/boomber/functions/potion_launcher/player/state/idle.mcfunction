#> boomber:potion_launcher/player/state/idle
# @within boomber:potion_launcher/player/main

execute if data entity @s Inventory[{Slot: -106b}].tag.ctc.traits{'boomber/hotbar_gui': 1b} run function boomber:potion_launcher/player/transition/open