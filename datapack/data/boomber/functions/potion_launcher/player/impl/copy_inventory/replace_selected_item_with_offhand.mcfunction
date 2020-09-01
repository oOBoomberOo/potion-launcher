#> boomber:potion_launcher/player/impl/copy_inventory/replace_selected_item_with_offhand
# Replace currently selected item with the item in offhand
# @within boomber:potion_launcher/player/impl/copy_inventory

#>
# @private
#declare score_holder #slot.current
execute store result score #slot.current bb.hg.var run data get entity @s SelectedItemSlot

execute if score #slot.current bb.hg.var matches 0 run data modify storage boomber:hotbar_gui data[{Slot: 0b}] set from entity @s Inventory[{Slot: -106b}]
execute if score #slot.current bb.hg.var matches 1 run data modify storage boomber:hotbar_gui data[{Slot: 1b}] set from entity @s Inventory[{Slot: -106b}]
execute if score #slot.current bb.hg.var matches 2 run data modify storage boomber:hotbar_gui data[{Slot: 2b}] set from entity @s Inventory[{Slot: -106b}]
execute if score #slot.current bb.hg.var matches 3 run data modify storage boomber:hotbar_gui data[{Slot: 3b}] set from entity @s Inventory[{Slot: -106b}]
execute if score #slot.current bb.hg.var matches 4 run data modify storage boomber:hotbar_gui data[{Slot: 4b}] set from entity @s Inventory[{Slot: -106b}]
execute if score #slot.current bb.hg.var matches 5 run data modify storage boomber:hotbar_gui data[{Slot: 5b}] set from entity @s Inventory[{Slot: -106b}]
execute if score #slot.current bb.hg.var matches 6 run data modify storage boomber:hotbar_gui data[{Slot: 6b}] set from entity @s Inventory[{Slot: -106b}]
execute if score #slot.current bb.hg.var matches 7 run data modify storage boomber:hotbar_gui data[{Slot: 7b}] set from entity @s Inventory[{Slot: -106b}]
execute if score #slot.current bb.hg.var matches 8 run data modify storage boomber:hotbar_gui data[{Slot: 8b}] set from entity @s Inventory[{Slot: -106b}]

execute store result storage boomber:hotbar_gui data[{Slot: -106b}].Slot byte 1 run scoreboard players get #slot.current bb.hg.var