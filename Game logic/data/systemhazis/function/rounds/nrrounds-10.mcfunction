scoreboard players remove NumberOfRounds System 10
execute if score NumberOfRounds System matches ..0 run scoreboard players set NumberOfRounds System 1
title @s actionbar [{"color":"gold","text":"Number of rounds: "},{"score":{"name":"NumberOfRounds","objective":"System"}}]
