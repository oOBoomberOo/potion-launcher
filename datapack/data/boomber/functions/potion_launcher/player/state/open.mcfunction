#> boomber:potion_launcher/player/state/open
# @within boomber:potion_launcher/player/main

execute if data entity @s Inventory[{Slot: -106b}].tag.ctc.traits{'boomber/hotbar_gui': 1b} positioned ~ 255 ~ run function boomber:potion_launcher/player/impl/copy_inventory
execute unless data entity @s Inventory[{Slot: -106b}].tag.ctc.traits{'boomber/hotbar_gui': 1b} run function boomber:potion_launcher/player/transition/close