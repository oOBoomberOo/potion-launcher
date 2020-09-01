#> boomber:potion_launcher/item/potion_launcher/event/use
# @within boomber:potion_launcher/item/potion_launcher/main

#>
# @private
#declare score_holder #contain_potion
execute store success score #contain_potion bb.pl.var if data entity @s SelectedItem.tag.boomber.potion_launcher.inventory[]

execute if score #contain_potion bb.pl.var matches 1.. run function boomber:potion_launcher/item/potion_launcher/impl/launch_potion
execute if score #contain_potion bb.pl.var matches 0 run function boomber:potion_launcher/item/potion_launcher/impl/launch_fail