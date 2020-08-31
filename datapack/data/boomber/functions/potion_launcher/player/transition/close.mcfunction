#> boomber:potion_launcher/player/transition/close
# @within boomber:potion_launcher/player/state/*

function boomber:potion_launcher/player/event/close
scoreboard players operation @s bb.pl.state = #state.idle bb.pl.enum