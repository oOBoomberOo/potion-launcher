#> boomber:potion_launcher/item/potion_launcher/impl/launch_potion/spawn_inner
# @within boomber:potion_launcher/item/potion_launcher/impl/launch_potion/spawn

data modify entity @s Owner set from storage boomber:potion_launcher owner
data modify entity @s Item set from storage boomber:potion_launcher item
data modify entity @s Motion set from storage boomber:potion_launcher vector

execute store result entity @s xTile int 1 run data get entity @s Pos[0]
execute store result entity @s yTile int 1 run data get entity @s Pos[1]
execute store result entity @s zTile int 1 run data get entity @s Pos[2]

tag @s remove boomber.potion_launcher.potion