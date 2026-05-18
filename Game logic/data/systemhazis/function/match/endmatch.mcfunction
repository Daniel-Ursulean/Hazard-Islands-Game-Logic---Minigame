clear @a
 
execute as @a run function systemhazis:teleports/backtolobby

scoreboard players add Round System 1
scoreboard players set Map System 0
scoreboard players set SelectedModifier System 0
scoreboard players set Modifier System 1

execute if score Round System <= NumberOfRounds System run scoreboard objectives setdisplay sidebar Score

#Lobby
execute if score Round System < NumberOfRounds System run place template minecraft:lobby_game_start -83 200 -67
execute if score Round System = NumberOfRounds System run place template minecraft:lobby_final_round -83 200 -67
execute if score Round System > NumberOfRounds System run place template minecraft:lobby_match_started -83 200 -67