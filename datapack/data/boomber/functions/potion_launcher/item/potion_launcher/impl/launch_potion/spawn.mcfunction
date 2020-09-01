#> boomber:potion_launcher/item/potion_launcher/impl/launch_potion/spawn
# @within boomber:potion_launcher/item/potion_launcher/impl/launch_potion

#>
# @private
#declare tag boomber.potion_launcher.potion

function boomber:potion_launcher/player/impl/direction_vector
data modify storage boomber:potion_launcher owner set from entity @s UUID

execute at @s anchored eyes run summon potion ^ ^ ^0.5 {Tags: ['boomber.potion_launcher.potion']}
	execute as @e[tag=boomber.potion_launcher.potion] run function boomber:potion_launcher/item/potion_launcher/impl/launch_potion/spawn_inner