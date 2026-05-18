scoreboard players set #min Score 99999
scoreboard players operation #min Score < @a Score
execute as @a[tag=Playing] if score @s Score = #min Score run tag @s add Low
execute as @r[tag=Low] run tag @s add Underdog
tag @a[tag=Low] remove Low
loot give @a[tag=Underdog] loot abilities:random_power
tellraw @a [{"selector":"@a[tag=Underdog]","color":"aqua"},{"text":" is underdog","color":"white"}]
tag @a[tag=Underdog] remove Underdog