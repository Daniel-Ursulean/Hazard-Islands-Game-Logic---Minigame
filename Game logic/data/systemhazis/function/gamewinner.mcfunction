place template minecraft:lobby_winner -83 200 -67
scoreboard players set #highest Score 0
scoreboard players operation #highest Score > @a Score
execute as @a if score @s Score = #highest Score run tag @s add Winner
tp @a[tag=Winner] -72 210 -61 0 0
tp @a[tag=!Winner] -72 208 -53 180 0
title @a title {"color":"aqua","selector":"@a[tag=Winner]","separator":", "}
playsound entity.ender_dragon.death master @a -72 210 -61 1 1
tag @a[tag=Winner] remove Winner
scoreboard objectives setdisplay sidebar Score