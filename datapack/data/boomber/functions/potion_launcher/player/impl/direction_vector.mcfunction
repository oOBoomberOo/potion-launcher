#> boomber:potion_launcher/player/impl/direction_vector
# @api

data merge storage boomber:potion_launcher {vector: [0d, 0d, 0d]}

#>
# @private
#declare tag boomber.potion_launcher.vector
execute at @s anchored eyes positioned 0.0 0.0 0.0 positioned ^ ^ ^1.0 run summon area_effect_cloud ~ ~ ~ {Age: 0, Duration: 1, Tags: ['boomber.potion_launcher.vector']}
	execute as @e[tag=boomber.potion_launcher.vector] run data modify storage boomber:potion_launcher vector set from entity @s Pos
	execute as @e[tag=boomber.potion_launcher.vector] run kill @s