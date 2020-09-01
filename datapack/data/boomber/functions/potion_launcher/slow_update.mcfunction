#> boomber:potion_launcher/slow_update
# @private
# @within boomber:potion_launcher/uninstall

#> Don't get scared just yet!
# This line simply query all `hotbar_gui` item entities with the tag `is_open`.
# These items will get transform into un-open item after this is run.
execute as @e[type=item, nbt={Item: {tag: {boomber: {hotbar_gui: {is_open: 1b}}, ctc: {traits: {'boomber/hotbar_gui': 1b}}}}}, tag=!global.ignore] at @s run function boomber:potion_launcher/item/hotbar_gui/main

schedule function boomber:potion_launcher/slow_update 1s