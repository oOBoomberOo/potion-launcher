#> boomber:potion_launcher/player/main
# @within boomber:potion_launcher/main

# TODO: Implement item filtering

execute unless score @s bb.pl.state = @s bb.pl.state run function boomber:potion_launcher/player/transition/idle

execute if score @s bb.pl.state = #state.idle bb.pl.enum run function boomber:potion_launcher/player/state/idle
execute if score @s bb.pl.state = #state.open bb.pl.enum run function boomber:potion_launcher/player/state/open