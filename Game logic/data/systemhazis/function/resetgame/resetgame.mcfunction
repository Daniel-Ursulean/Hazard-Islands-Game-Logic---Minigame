place template minecraft:lobby -83 200 -67
tag @a[tag=InGame] remove InGame
tag @a[tag=Spectator] remove Spectator
scoreboard players set GameStarted System 0
scoreboard players set @a Score 0
scoreboard objectives setdisplay sidebar

scoreboard players set Map System 0
scoreboard players set SelectedModifier System 0

execute unless score WinnerTimer System matches 1 run title @a title [{"color":"dark_red","text":"Game "},{"color":"red","text":"stopped"}]
execute unless score WinnerTimer System matches 1 run playsound entity.ender_dragon.growl master @a -71 208 -55