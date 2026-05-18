execute unless entity @p[tag=Spectator] run tellraw @p {"color":"gray","text":"You are now a spectator"}
execute if entity @p[tag=Spectator] run tellraw @p {"color":"gray","text":"You are no longer a spectator"}
execute unless entity @p[tag=Spectator] run tag @p add Spectatoradding
execute if entity @p[tag=Spectator] run tag @p remove Spectator
tag @a[tag=Spectatoradding] add Spectator
tag @a[tag=Spectatoradding] remove Spectatoradding