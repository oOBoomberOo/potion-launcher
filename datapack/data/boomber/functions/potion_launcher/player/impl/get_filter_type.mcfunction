#> boomber:potion_launcher/player/impl/get_filter_type
# @within
#   boomber:potion_launcher/player/event/close

#>
# @within
#   boomber:hotbar_gui/deserialize/filter
# @private
#declare score_holder #filter
scoreboard players operation #filter bb.hg.var = #filter.none bb.pl.enum

execute if predicate boomber:potion_launcher/filter/potion_bag run scoreboard players operation #filter bb.hg.var = #filter.potion_bag bb.pl.enum
execute if predicate boomber:potion_launcher/filter/potion_launcher run scoreboard players operation #filter bb.hg.var = #filter.potion_launcher bb.pl.enum