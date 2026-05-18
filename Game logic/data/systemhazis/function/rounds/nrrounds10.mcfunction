scoreboard players add NumberOfRounds System 10
execute if score NumberOfRounds System matches 100.. run scoreboard players set NumberOfRounds System 100
title @s actionbar [{"color":"gold","text":"Number of rounds: "},{"score":{"name":"NumberOfRounds","objective":"System"}}]
