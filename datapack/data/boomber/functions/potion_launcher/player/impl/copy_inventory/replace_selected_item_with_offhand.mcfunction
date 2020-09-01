#> boomber:potion_launcher/player/impl/copy_inventory/replace_selected_item_with_offhand
# Replace currently selected item with the item in offhand
# @within boomber:potion_launcher/player/impl/copy_inventory

#>
# @private
#declare score_holder #slot.current
execute store result score #slot.current bb.hg.var run data get entity @s SelectedItemSlot

execute if score #slot.current bb.hg.var matches 0 run data remove storage boomber:hotbar_gui data[{Slot: 0b}]
execute if score #slot.current bb.hg.var matches 1 run data remove storage boomber:hotbar_gui data[{Slot: 1b}]
execute if score #slot.current bb.hg.var matches 2 run data remove storage boomber:hotbar_gui data[{Slot: 2b}]
execute if score #slot.current bb.hg.var matches 3 run data remove storage boomber:hotbar_gui data[{Slot: 3b}]
execute if score #slot.current bb.hg.var matches 4 run data remove storage boomber:hotbar_gui data[{Slot: 4b}]
execute if score #slot.current bb.hg.var matches 5 run data remove storage boomber:hotbar_gui data[{Slot: 5b}]
execute if score #slot.current bb.hg.var matches 6 run data remove storage boomber:hotbar_gui data[{Slot: 6b}]
execute if score #slot.current bb.hg.var matches 7 run data remove storage boomber:hotbar_gui data[{Slot: 7b}]
execute if score #slot.current bb.hg.var matches 8 run data remove storage boomber:hotbar_gui data[{Slot: 8b}]

data modify storage boomber:hotbar_gui data append from entity @s Inventory[{Slot: -106b}]
	execute store result storage boomber:hotbar_gui data[{Slot: -106b}].Slot byte 1 run scoreboard players get #slot.current bb.hg.var