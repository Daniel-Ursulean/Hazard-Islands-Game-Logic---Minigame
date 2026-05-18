place template minecraft:lobby_game_start -83 200 -67

tag @a[tag=!Spectator] add InGame

scoreboard players set GameStarted System 1
scoreboard players set Map System 0
scoreboard players set Round System 1
scoreboard players set @a Score 0

scoreboard players reset @a[tag=Spectator] Score
scoreboard objectives setdisplay sidebar Score


title @a title [{"color":"dark_aqua","text":"Game "},{"color":"dark_green","text":"started"}]
title @a subtitle {"color":"white","text":"(Press the button to start the first round)"}
playsound entity.player.levelup master @a -71 208 -55