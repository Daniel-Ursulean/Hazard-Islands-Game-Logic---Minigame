execute store result score NumberOfPlayersGame System if entity @a[tag=!Spectator]
execute if score NumberOfPlayersGame System matches 2.. run function systemhazis:startgame
execute if score NumberOfPlayersGame System matches ..1 run tellraw @p {"color":"red","text":"Not enough players"}