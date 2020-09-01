#> boomber:hotbar_gui/deserialize/handle_conflict
# @input score #slot.current bb.hg.var
#
# @within
#   boomber:hotbar_gui/deserialize/run
#   boomber:hotbar_gui/deserialize/handle_conflict

#>
# @within
#   boomber:hotbar_gui/deserialize/run
#   boomber:hotbar_gui/deserialize/handle_conflict
#   boomber:hotbar_gui/deserialize/handle_conflict/*
#declare storage boomber:hotbar_gui/conflict

data modify storage boomber:hotbar_gui/conflict iter set from storage boomber:hotbar_gui/conflict input[0]
data remove storage boomber:hotbar_gui/conflict input[0]

#> Item's Slot
# @within boomber:hotbar_gui/deserialize/into_inventory
#declare score_holder #slot.item
execute store result score #slot.item bb.hg.var run data get storage boomber:hotbar_gui/conflict iter.Slot

execute if score #slot.current bb.hg.var = #slot.item bb.hg.var run function boomber:hotbar_gui/deserialize/handle_conflict/replace
execute unless score #slot.current bb.hg.var = #slot.item bb.hg.var run function boomber:hotbar_gui/deserialize/handle_conflict/pass

execute if data storage boomber:hotbar_gui/conflict input[] run function boomber:hotbar_gui/deserialize/handle_conflict