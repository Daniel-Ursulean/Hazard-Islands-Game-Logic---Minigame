#Effect
effect give @a saturation infinite 1 true
execute as @a at @s if entity @s[y=0,dy=-64] run effect give @s wither 1 3 true

#Adventure
gamemode adventure @a[gamemode=survival]

#Credits timer
execute if score CreditsTimer System matches 1.. run scoreboard players remove CreditsTimer System 1
execute if score CreditsTimer System matches 20 run particle minecraft:end_rod -72 208 -56 1 1 1 1 100 normal
execute if score CreditsTimer System matches 40 run particle minecraft:end_rod -72 208 -56 1 1 1 1 100 normal
execute if score CreditsTimer System matches 60 run title @a title [{"text":"Blue","color":"blue","bold":true},{"text":"Carrot","color":"#004F0D","bold":true}]
execute if score CreditsTimer System matches 60 run summon firework_rocket -72 208 -56 {LifeTime:20,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"large_ball",has_twinkle:true,has_trail:true,colors:[I;1443327,24070],fade_colors:[I;16751365]}]}}}}
execute if score CreditsTimer System matches 60 run particle minecraft:end_rod -72 208 -56 1 1 1 1 100 normal
execute if score CreditsTimer System matches 80 run particle minecraft:end_rod -72 208 -56 1 1 1 1 100 normal
execute if score CreditsTimer System matches 100 run particle minecraft:end_rod -72 208 -56 1 1 1 1 100 normal
execute if score CreditsTimer System matches 1 run place template minecraft:lobby -83 200 -67

#Spectator
execute if score MatchOnGoing System matches 0 run title @a[tag=Spectator] actionbar {"color":"gray","text":"You are a spectator"}

#Gamemodes
execute if score MatchOnGoing System matches 1 as @a[tag=!Playing,gamemode=!spectator] run function systemhazis:teleports/spectatate

#New players while game
execute if score GameStarted System matches 1 run tag @a[tag=!InGame,tag=!Spectator] add Spectator

#Before match start timer
execute if score BeforeMatchTimer System matches 1.. run scoreboard players remove BeforeMatchTimer System 1
execute if score BeforeMatchTimer System matches 99 run tellraw @a {"color":"gold","text":"Starting in 5 seconds"}
execute if score BeforeMatchTimer System matches 99 run playsound minecraft:block.note_block.harp master @a -71 208 -55
execute if score BeforeMatchTimer System matches 80 run tellraw @a {"color":"gold","text":"Starting in 4 seconds"}
execute if score BeforeMatchTimer System matches 80 run playsound minecraft:block.note_block.harp master @a -71 208 -55
execute if score BeforeMatchTimer System matches 60 run tellraw @a {"color":"gold","text":"Starting in 3 seconds"}
execute if score BeforeMatchTimer System matches 60 run playsound minecraft:block.note_block.harp master @a -71 208 -55
execute if score BeforeMatchTimer System matches 40 run tellraw @a {"color":"gold","text":"Starting in 2 seconds"}
execute if score BeforeMatchTimer System matches 40 run playsound minecraft:block.note_block.harp master @a -71 208 -55
execute if score BeforeMatchTimer System matches 20 run tellraw @a {"color":"gold","text":"Starting in 1 seconds"}
execute if score BeforeMatchTimer System matches 20 run playsound minecraft:block.note_block.harp master @a -71 208 -55
execute if score BeforeMatchTimer System matches 1 run function systemhazis:match/startmatch

execute if score BeforeMatchTimer System matches 50 if score ProTip System matches 1 run title @a[tag=!Spectator] actionbar {"color":"aqua","text":"Pro tip: With good reflexes, you can redirect fireballs"}
execute if score BeforeMatchTimer System matches 50 if score ProTip System matches 2 run title @a[tag=!Spectator] actionbar {"color":"aqua","text":"Pro tip: When invisible, avoid sprinting, as it creates particles that can reveal your location"}
execute if score BeforeMatchTimer System matches 50 if score ProTip System matches 3 run title @a[tag=!Spectator] actionbar {"color":"aqua","text":"Pro tip: Arrows and other projectiles can be used to activate traps on certain maps"}
execute if score BeforeMatchTimer System matches 50 if score ProTip System matches 4 run title @a[tag=!Spectator] actionbar {"color":"aqua","text":"Pro tip: Players affected by PoisonRun take less knockback, because of the constant damage"}
execute if score BeforeMatchTimer System matches 50 if score ProTip System matches 5 run title @a[tag=!Spectator] actionbar {"color":"aqua","text":"Pro tip: Using ExplosiveJump grants you immunity to fall damage until you land"}
execute if score BeforeMatchTimer System matches 50 if score ProTip System matches 6 run title @a[tag=!Spectator] actionbar {"color":"aqua","text":"Pro tip: Using Dash doesn't cancel fall damage"}
execute if score BeforeMatchTimer System matches 50 if score ProTip System matches 7 run title @a[tag=!Spectator] actionbar {"color":"aqua","text":"Pro tip: Players surrounded by iron block particles are invincible"}
execute if score BeforeMatchTimer System matches 50 if score ProTip System matches 8 run title @a[tag=!Spectator] actionbar {"color":"aqua","text":"Pro tip: For an easy kill, jump in the void when an enemy is near to your Evolved Teleportation"}
execute if score BeforeMatchTimer System matches 50 if score ProTip System matches 9 run title @a[tag=!Spectator] actionbar {"color":"aqua","text":"Pro tip: Avoid using Cobweb and ShadowSpot in narrow spaces, as you might hit yourself"}
execute if score BeforeMatchTimer System matches 50 if score ProTip System matches 10 run title @a[tag=!Spectator] actionbar {"color":"aqua","text":"Pro tip: You can use Wall to catch yourself when falling, great for overtime"}
execute if score BeforeMatchTimer System matches 50 if score ProTip System matches 11 run title @a[tag=!Spectator] actionbar {"color":"aqua","text":"Pro tip: IcePath can be used to suffocate or block other players"}
execute if score BeforeMatchTimer System matches 50 if score ProTip System matches 12 run title @a[tag=!Spectator] actionbar {"color":"aqua","text":"Pro tip: Laser is more likely to hit if you aim for the feet (thanks to Minecraft's code)"}
execute if score BeforeMatchTimer System matches 50 if score ProTip System matches 13 run title @a[tag=!Spectator] actionbar {"color":"aqua","text":"Pro tip: Use Storm to control a large part of the map"}
execute if score BeforeMatchTimer System matches 50 if score ProTip System matches 14 run title @a[tag=!Spectator] actionbar {"color":"aqua","text":"Pro tip: In a 2-player game, Evolved Storm and regular Storm are no different"}
execute if score BeforeMatchTimer System matches 50 if score ProTip System matches 15 run title @a[tag=!Spectator] actionbar {"color":"aqua","text":"Pro tip: Two power-ups evolve only when held in the main hand"}
execute if score BeforeMatchTimer System matches 50 if score ProTip System matches 16 run title @a[tag=!Spectator] actionbar {"color":"aqua","text":"Pro tip: On most maps, having the high ground is a major advantage"}
execute if score BeforeMatchTimer System matches 50 if score ProTip System matches 17 run title @a[tag=!Spectator] actionbar {"color":"aqua","text":"Pro tip: WindWave is a great way to send enemies into the void"}
execute if score BeforeMatchTimer System matches 50 if score ProTip System matches 18 run title @a[tag=!Spectator] actionbar {"color":"aqua","text":"Pro tip: Be careful not to dig under your feet when using Destroyer"}
execute if score BeforeMatchTimer System matches 50 if score ProTip System matches 19 run title @a[tag=!Spectator] actionbar {"color":"aqua","text":"Pro tip: Play with sound and particles on for the best experience"}
execute if score BeforeMatchTimer System matches 50 if score ProTip System matches 20 run title @a[tag=!Spectator] actionbar {"color":"aqua","text":"Pro tip: Warp + ExplosiveJump is a deadly combo"}
execute if score BeforeMatchTimer System matches 50 if score ProTip System matches 21 run title @a[tag=!Spectator] actionbar {"color":"aqua","text":"Pro tip: Gambling is just the name of the power-up, kids don't actually gamble"}
execute if score BeforeMatchTimer System matches 50 if score ProTip System matches 22 run title @a[tag=!Spectator] actionbar {"color":"aqua","text":"Pro tip: Trying to catch yourself with Evolved Dome isn’t a great idea"}
execute if score BeforeMatchTimer System matches 50 if score ProTip System matches 23 run title @a[tag=!Spectator] actionbar {"color":"aqua","text":"Pro tip: You still take fall damage when the Moon modifier is active, just not as much"}
execute if score BeforeMatchTimer System matches 50 if score ProTip System matches 24 run title @a[tag=!Spectator] actionbar {"color":"aqua","text":"Pro tip: The map Stone Bits is full of potential explosions"}
execute if score BeforeMatchTimer System matches 50 if score ProTip System matches 25 run title @a[tag=!Spectator] actionbar {"color":"aqua","text":"Pro tip: Camping is dishonorable for a gamer, do not camp"}
execute if score BeforeMatchTimer System matches 50 if score ProTip System matches 26 run title @a[tag=!Spectator] actionbar {"color":"aqua","text":"Pro tip: RIM TIM TAGI DIM"}
execute if score BeforeMatchTimer System matches 50 if score ProTip System matches 27 run title @a[tag=!Spectator] actionbar {"color":"aqua","text":"Pro tip: Daca poti citi asta esti jmek"}
execute if score BeforeMatchTimer System matches 50 if score ProTip System matches 28 run title @a[tag=!Spectator] actionbar {"color":"aqua","text":"Pro tip: Parkour skills are very helpful in this game"}
execute if score BeforeMatchTimer System matches 50 if score ProTip System matches 29 run title @a[tag=!Spectator] actionbar {"color":"aqua","text":"Pro tip: Give feedback on the map!"}
execute if score BeforeMatchTimer System matches 50 if score ProTip System matches 30 run title @a[tag=!Spectator] actionbar {"color":"aqua","text":"Pro tip: Have fun and try not to lose friends"}
execute if score BeforeMatchTimer System matches 50 if score ProTip System matches 31 run title @a[tag=!Spectator] actionbar {"color":"aqua","text":"Pro tip: You can find a donation link by going to <info> then <more>"}

##MAtch STart

execute if score MatchOnGoing System matches 1 store result score AlivePlayers System if entity @a[tag=Playing,gamemode=adventure]

#Match timer
execute if score MatchTimer System matches 1.. run scoreboard players remove MatchTimer System 1

execute if score MatchTimer System matches 4800 run tellraw @a {"color":"gold","text":"New powers will spawn in 15 seconds"}
execute if score MatchTimer System matches 4700 run tellraw @a {"color":"gold","text":"New powers will spawn in 10 seconds"}
execute if score MatchTimer System matches 4600 run tellraw @a {"color":"gold","text":"New powers will spawn in 5 seconds"}
execute if score MatchTimer System matches 4500 run function systemhazis:spawnpowers

execute if score MatchTimer System matches 3300 run tellraw @a {"color":"gold","text":"New powers will spawn in 15 seconds"}
execute if score MatchTimer System matches 3200 run tellraw @a {"color":"gold","text":"New powers will spawn in 10 seconds"}
execute if score MatchTimer System matches 3100 run tellraw @a {"color":"gold","text":"New powers will spawn in 5 seconds"}
execute if score MatchTimer System matches 3000 run function systemhazis:spawnpowers

execute if score MatchTimer System matches 1800 run tellraw @a {"color":"gold","text":"New powers will spawn in 15 seconds"}
execute if score MatchTimer System matches 1700 run tellraw @a {"color":"gold","text":"New powers will spawn in 10 seconds"}
execute if score MatchTimer System matches 1600 run tellraw @a {"color":"gold","text":"New powers will spawn in 5 seconds"}
execute if score MatchTimer System matches 1500 run function systemhazis:spawnpowers

execute if score MatchTimer System matches 1200 run tellraw @a {"text":"1 min until overtime","color":"yellow"}
execute if score MatchTimer System matches 600 run tellraw @a {"text":"30 sec until overtime","color":"yellow"}
execute if score MatchTimer System matches 200 run tellraw @a {"text":"10 sec until overtime","color":"yellow"}
execute if score MatchTimer System matches 100 run tellraw @a {"text":"5 sec until overtime","color":"red"}
execute if score MatchTimer System matches 1 run scoreboard players set OverTime System 1200

#Overtime
execute if score OverTime System matches 1.. run scoreboard players remove OverTime System 1

execute if score OverTime System matches 1199 run function systemhazis:overtime
execute if score OverTime System matches 1199 run fill -87 0 -71 -57 1 -41 air destroy
execute if score OverTime System matches 1160 run fill -87 2 -71 -57 2 -41 air destroy
execute if score OverTime System matches 1120 run fill -87 3 -71 -57 3 -41 air destroy
execute if score OverTime System matches 1080 run fill -87 4 -71 -57 4 -41 air destroy
execute if score OverTime System matches 1040 run fill -87 5 -71 -57 5 -41 air destroy
execute if score OverTime System matches 1000 run fill -87 6 -71 -57 6 -41 air destroy
execute if score OverTime System matches 960 run fill -87 7 -71 -57 7 -41 air destroy
execute if score OverTime System matches 920 run fill -87 8 -71 -57 8 -41 air destroy
execute if score OverTime System matches 880 run fill -87 9 -71 -57 9 -41 air destroy
execute if score OverTime System matches 840 run fill -87 10 -71 -57 10 -41 air destroy
execute if score OverTime System matches 800 run fill -87 11 -71 -57 11 -41 air destroy
execute if score OverTime System matches 760 run fill -87 12 -71 -57 12 -41 air destroy
execute if score OverTime System matches 720 run fill -87 13 -71 -57 13 -41 air destroy
execute if score OverTime System matches 680 run fill -87 14 -71 -57 14 -41 air destroy
execute if score OverTime System matches 640 run fill -87 15 -71 -57 15 -41 air destroy
execute if score OverTime System matches 600 run fill -87 16 -71 -57 16 -41 air destroy
execute if score OverTime System matches 560 run fill -87 17 -71 -57 17 -41 air destroy
execute if score OverTime System matches 520 run fill -87 18 -71 -57 18 -41 air destroy
execute if score OverTime System matches 480 run fill -87 19 -71 -57 19 -41 air destroy
execute if score OverTime System matches 440 run fill -87 20 -71 -57 20 -41 air destroy
execute if score OverTime System matches 400 run fill -87 21 -71 -57 21 -41 air destroy
execute if score OverTime System matches 360 run fill -87 22 -71 -57 22 -41 air destroy
execute if score OverTime System matches 320 run fill -87 23 -71 -57 23 -41 air destroy
execute if score OverTime System matches 280 run fill -87 24 -71 -57 24 -41 air destroy
execute if score OverTime System matches 240 run fill -87 25 -71 -57 25 -41 air destroy
execute if score OverTime System matches 200 run fill -87 26 -71 -57 26 -41 air destroy
execute if score OverTime System matches 160 run fill -87 27 -71 -57 27 -41 air destroy
execute if score OverTime System matches 120 run fill -87 28 -71 -57 28 -41 air destroy
execute if score OverTime System matches 80 run fill -87 29 -71 -57 29 -41 air destroy
execute if score OverTime System matches 40 run fill -87 30 -71 -57 31 -41 air destroy
execute if score OverTime System matches 1 run scoreboard players set OverTime System 1200

#Place score
execute if score MatchOnGoing System matches 1 run scoreboard players operation @a[tag=Playing] Place = AlivePlayers System

#Player dies
scoreboard players remove @a[scores={PlayerDiesTick=1..}] PlayerDiesTick 1
execute if score MatchOnGoing System matches 1 as @a[scores={Deaths=1..}] unless score @s PlayerDiesTick matches 1.. run scoreboard players set @s PlayerDiesTick 2
execute if score MatchOnGoing System matches 1 as @a[scores={Deaths=1..}] if score @s PlayerDiesTick matches 1 run function systemhazis:playerdied

#Last player standing
execute if score MatchOnGoing System matches 1 if score AlivePlayers System matches 1 as @a[tag=Playing] run function systemhazis:winner
#Tie
execute if score MatchOnGoing System matches 1 if score AlivePlayers System matches 0 run function systemhazis:tie

#End timer
execute if score EndTimer System matches 1.. run scoreboard players remove EndTimer System 1

execute if score EndTimer System matches 140 run tellraw @a {"text":"Returning to lobby in 5 seconds","color":"yellow"}
execute if score EndTimer System matches 40.. at @a[tag=Playing,gamemode=adventure] run particle end_rod ~ ~ ~ 1 1 1 1 5 normal
execute if score EndTimer System matches 40 run function systemhazis:match/endmatch
execute if score EndTimer System matches 1 run function systemhazis:match/results

#Game winner
execute if score WinnerTimer System matches 1.. run scoreboard players remove WinnerTimer System 1
execute if score WinnerTimer System matches 300 run function systemhazis:gamewinner
execute if score WinnerTimer System matches 1 run function systemhazis:resetgame/resetgame

#Modifiers
#Sudden end

execute if score Modifier System matches 5 if score MatchTimer System matches 4499 run scoreboard players set MatchTimer System 1200

#Power supplies
execute if score Modifier System matches 6 if score MatchTimer System matches 5550 run tellraw @a {"color":"gold","text":"New powers will spawn in 15 seconds"}
execute if score Modifier System matches 6 if score MatchTimer System matches 5450 run tellraw @a {"color":"gold","text":"New powers will spawn in 10 seconds"}
execute if score Modifier System matches 6 if score MatchTimer System matches 5350 run tellraw @a {"color":"gold","text":"New powers will spawn in 5 seconds"}
execute if score Modifier System matches 6 if score MatchTimer System matches 5250 run function systemhazis:spawnpowers

execute if score Modifier System matches 6 if score MatchTimer System matches 4050 run tellraw @a {"color":"gold","text":"New powers will spawn in 15 seconds"}
execute if score Modifier System matches 6 if score MatchTimer System matches 3950 run tellraw @a {"color":"gold","text":"New powers will spawn in 10 seconds"}
execute if score Modifier System matches 6 if score MatchTimer System matches 3850 run tellraw @a {"color":"gold","text":"New powers will spawn in 5 seconds"}
execute if score Modifier System matches 6 if score MatchTimer System matches 3750 run function systemhazis:spawnpowers

execute if score Modifier System matches 6 if score MatchTimer System matches 2550 run tellraw @a {"color":"gold","text":"New powers will spawn in 15 seconds"}
execute if score Modifier System matches 6 if score MatchTimer System matches 2450 run tellraw @a {"color":"gold","text":"New powers will spawn in 10 seconds"}
execute if score Modifier System matches 6 if score MatchTimer System matches 2350 run tellraw @a {"color":"gold","text":"New powers will spawn in 5 seconds"}
execute if score Modifier System matches 6 if score MatchTimer System matches 2250 run function systemhazis:spawnpowers

