title @a title [{"text":"The winner is: "},{"selector":"@a[gamemode=adventure,limit=1,tag=Playing]","color":"gold"}]
scoreboard players set EndTimer System 140
scoreboard players set MatchOnGoing System 0
scoreboard players reset AlivePlayers
scoreboard players set MatchTimer System 0
scoreboard players set OverTime System 0
scoreboard players set @a[gamemode=adventure,limit=1,tag=Playing] Place 1
execute at @a run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 1 0.8