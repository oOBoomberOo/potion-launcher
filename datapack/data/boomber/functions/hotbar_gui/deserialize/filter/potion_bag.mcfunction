#> boomber:hotbar_gui/deserialize/filter/potion_bag
# @within boomber:hotbar_gui/deserialize/filter

execute if data storage boomber:hotbar_gui/filter iter{id: 'minecraft:potion'} run scoreboard players set #success bb.hg.var 1
execute if data storage boomber:hotbar_gui/filter iter{id: 'minecraft:splash_potion'} run scoreboard players set #success bb.hg.var 1
execute if data storage boomber:hotbar_gui/filter iter{id: 'minecraft:lingering_potion'} run scoreboard players set #success bb.hg.var 1
execute if data storage boomber:hotbar_gui/filter iter{id: 'minecraft:glass_bottle'} run scoreboard players set #success bb.hg.var 1