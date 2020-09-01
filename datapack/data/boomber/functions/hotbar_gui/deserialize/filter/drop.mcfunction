#> boomber:hotbar_gui/deserialize/filter/drop
# @within boomber:hotbar_gui/deserialize/filter

data modify storage boomber:hotbar_gui data set from storage boomber:hotbar_gui/filter iter
	execute at @s run function boomber:hotbar_gui/utils/drop_item