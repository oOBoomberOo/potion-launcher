#> boomber:potion_launcher/setup
# Initialize function
# @private

#> 
# Player State
# @within boomber:potion_launcher/**
scoreboard objectives add bb.pl.state dummy

#>
# @within boomber:potion_launcher/**
scoreboard objectives add bb.pl.enum dummy

#>
# Idle state
# @within boomber:potion_launcher/**
#declare score_holder #state.idle
scoreboard players set #state.idle bb.pl.enum 1

#>
# Opening Bag state
# @within boomber:potion_launcher/**
#declare score_holder #state.open
scoreboard players set #state.open bb.pl.enum 2

#>
# @within boomber:potion_launcher/**
#declare storage boomber:potion_launcher