#> boomber:hotbar_gui/deserialize/run
# Deserialize item into player's inventory
# @api

#> Currently selected slot
# @within boomber:hotbar_gui/deserialize/*
#declare score_holder #slot.current
execute store result score #slot.current bb.hg.var run data get entity @s SelectedItemSlot

# data merge storage boomber:hotbar_gui/filter {input: [], output: [], iter: {}}
#	data modify storage boomber:hotbar_gui/filter input set from storage boomber:hotbar_gui data
#	function boomber:hotbar_gui/deserialize/filter

data merge storage boomber:hotbar_gui/conflict {input: [], iter: {}, to_offhand: {}, to_inventory: []}
	data modify storage boomber:hotbar_gui/conflict input set from storage boomber:hotbar_gui data
	function boomber:hotbar_gui/deserialize/handle_conflict
	data modify storage boomber:hotbar_gui/conflict to_inventory append from storage boomber:hotbar_gui target_item

data modify storage boomber:hotbar_gui data set from storage boomber:hotbar_gui/conflict to_inventory
	execute positioned ~ 255 ~ run function boomber:hotbar_gui/utils/into_inventory

data modify storage boomber:hotbar_gui data set from storage boomber:hotbar_gui/conflict to_offhand
	execute positioned ~ 255 ~ run function boomber:hotbar_gui/deserialize/into_offhand

data remove storage boomber:hotbar_gui data

data remove storage boomber:hotbar_gui/conflict input
data remove storage boomber:hotbar_gui/conflict target_item
data remove storage boomber:hotbar_gui/conflict iter
data remove storage boomber:hotbar_gui/conflict to_offhand
data remove storage boomber:hotbar_gui/conflict to_inventory

data remove storage boomber:hotbar_gui/filter input
data remove storage boomber:hotbar_gui/filter output
data remove storage boomber:hotbar_gui/filter iter