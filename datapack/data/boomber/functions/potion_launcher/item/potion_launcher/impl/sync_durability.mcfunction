#> boomber:potion_launcher/item/potion_launcher/impl/sync_durability
# @within boomber:potion_launcher/item/potion_launcher/event/durability

scoreboard players operation #damage bb.pl.var *= #scaling_factor bb.pl.const
scoreboard players operation #damage bb.pl.var /= #durability bb.pl.var
scoreboard players operation #damage bb.pl.var *= #actual_durability bb.pl.const
scoreboard players operation #damage bb.pl.var /= #scaling_factor bb.pl.const
scoreboard players add #damage bb.pl.var 1

execute store result storage boomber:potion_launcher item.tag.Damage int 1 run scoreboard players get #damage bb.pl.var