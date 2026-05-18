
#Scores
scoreboard players set MatchOnGoing System 1
scoreboard players set MatchTimer System 6000 
scoreboard players reset @a Deaths
scoreboard players reset @a Place

scoreboard objectives setdisplay sidebar

#Gamemodes tags tps
tag @a[tag=InGame] add Playing
gamemode adventure @a[tag=Playing]
execute as @a[tag=Spectator] run function systemhazis:teleports/spectatate
clear @a[tag=Playing]
effect give @a[tag=Playing] slowness 1 255 true
spreadplayers -72 -56 8 23 under 32 false @a[tag=Playing]

execute at @a run playsound minecraft:block.note_block.harp master @a ~ ~ ~ 1 2

#Title
title @a title [{"color":"gold","text":"Round "},{"score":{"name":"Round","objective":"System"}}]
execute if score Round System = NumberOfRounds System run title @a subtitle {"color":"red","text":"(Last round)"}

execute unless score Modifier System matches 3 run function systemhazis:givepowers

#Modifiers

#Moon
execute if score Modifier System matches 2 as @a[tag=Playing] run function systemhazis:modifiers/moon
#Mirror
execute if score Modifier System matches 3 run function systemhazis:modifiers/mirror

#Low Health
execute if score Modifier System matches 4 as @a[tag=Playing] run attribute @s minecraft:max_health base set 10

#Sudden end -> tick function

#Power supplies -> tick function

#Serious fights
execute if score Modifier System matches 7 run give @a[tag=Playing] wooden_sword[item_name="Sword",unbreakable={}] 1

#Knock backs
execute if score Modifier System matches 8 run give @a[tag=Playing] stick[item_name="Knockback stick",enchantments={"minecraft:knockback":1}] 1

#Healthy kills
execute if score Modifier System matches 9 as @a if score @s Deaths matches 1 at @s run summon area_effect_cloud ~ ~ ~ {Radius:2f,RadiusOnUse:-2f,Duration:100,WaitTime:0,potion_contents:{potion:"minecraft:healing",custom_effects:[{id:"minecraft:instant_health",amplifier:2,duration:1}]}}

#Underdog
execute if score Modifier System matches 10 run function systemhazis:modifiers/underdog

