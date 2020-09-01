#> boomber:potion_launcher/setup
# Initialize function
# @private

#> 
# Player State
# @within boomber:potion_launcher/**
scoreboard objectives add bb.pl.state dummy

#> 
# Constant value
# @within boomber:potion_launcher/**
scoreboard objectives add bb.pl.const dummy

#>
# @within
#   boomber:potion_launcher/**
#   boomber:hotbar_gui/deserialize/filter
scoreboard objectives add bb.pl.enum dummy

#>
# @within
#   boomber:potion_launcher/item/potion_launcher/main
#   boomber:potion_launcher/player/main
#   boomber:potion_launcher/uninstall
scoreboard objectives add bb.pl.use minecraft.used:carrot_on_a_stick

#>
# @within
#   boomber:potion_launcher/**
scoreboard objectives add bb.pl.var dummy

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
# No filter
#
# @within
#   boomber:hotbar_gui/deserialize/filter
#   boomber:potion_launcher/player/impl/get_filter_type
# @private
#declare score_holder #filter.none
scoreboard players set #filter.none bb.pl.enum 0

#>
# Potion Bag filter type.
# Accept any potion types.
#
# @within
#   boomber:hotbar_gui/deserialize/filter
#   boomber:potion_launcher/player/impl/get_filter_type
# @private
#declare score_holder #filter.potion_bag
scoreboard players set #filter.potion_bag bb.pl.enum 1

#>
# Potion Launcher filter type.
# Accept only splashing potion type.
#
# @within
#   boomber:hotbar_gui/deserialize/filter
#   boomber:potion_launcher/player/impl/get_filter_type
# @private
#declare score_holder #filter.potion_launcher
scoreboard players set #filter.potion_launcher bb.pl.enum 2

#>
# @within
#   boomber:potion_launcher/item/potion_launcher/impl/sync_durability
#declare score_holder #scaling_factor
scoreboard players set #scaling_factor bb.pl.const 100

#>
# @within
#   boomber:potion_launcher/item/potion_launcher/impl/sync_durability
#declare score_holder #actual_durability
scoreboard players set #actual_durability bb.pl.const 25

#>
# @within boomber:potion_launcher/**
#declare storage boomber:potion_launcher

#alias vector world_center 0 0
forceload add 0 0