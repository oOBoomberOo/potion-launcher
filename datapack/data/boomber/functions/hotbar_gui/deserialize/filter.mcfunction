#> boomber:hotbar_gui/deserialize/filter
# @api

#>
# @within
#   boomber:hotbar_gui/deserialize/run
#   boomber:hotbar_gui/deserialize/filter/*
#   boomber:potion_launcher/player/event/close
#   boomber:potion_launcher/player/impl/copy_inventory
# @private
#declare storage boomber:hotbar_gui/filter

data modify storage boomber:hotbar_gui/filter iter set from storage boomber:hotbar_gui/filter input[0]
data remove storage boomber:hotbar_gui/filter input[0]

#>
# @within
#   boomber:hotbar_gui/deserialize/filter/*
# @private
#declare score_holder #success
scoreboard players set #success bb.hg.var 0

execute if score #filter bb.hg.var = #filter.none bb.pl.enum run function boomber:hotbar_gui/deserialize/filter/none
execute if score #filter bb.hg.var = #filter.potion_bag bb.pl.enum run function boomber:hotbar_gui/deserialize/filter/potion_bag
execute if score #filter bb.hg.var = #filter.potion_launcher bb.pl.enum run function boomber:hotbar_gui/deserialize/filter/potion_launcher

execute if score #success bb.hg.var matches 0 run function boomber:hotbar_gui/deserialize/filter/drop
execute if score #success bb.hg.var matches 1 run function boomber:hotbar_gui/deserialize/filter/append

execute if data storage boomber:hotbar_gui/filter input[] run function boomber:hotbar_gui/deserialize/filter