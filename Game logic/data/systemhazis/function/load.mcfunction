tellraw @a {"text": "Reloaded","color":green}

scoreboard objectives add System dummy
scoreboard objectives add Score dummy
scoreboard objectives add Deaths deathCount
scoreboard objectives add Health health {"text":"❤️","color":"red"}
scoreboard objectives add Place dummy
scoreboard objectives add PlayerDiesTick dummy

scoreboard objectives setdisplay below_name Health

forceload add 0 0

gamerule commandBlockOutput false
gamerule sendCommandFeedback false
gamerule naturalRegeneration false

#Variables 
scoreboard players set MatchOnGoing System 0

#Rounds 

scoreboard players set NumberOfRounds System 10

#Scoring
# 0 - Top1
# 1 - Top3

scoreboard players set TypeOfScoring System 0

#Maps
# 0 - Random
# 1 - Plains
# 2 - Modern art
# 3 - Levels
# 4 - Mountain
# 5 - Stone bits
# 6 - Desert
# 7 - Rooms
# 8 - Dimensional trees
# 9 - City
# 10 - End tower


#Modifiers
# 0 - Random
# 1 - Classic
# 2 - Moon
# 3 - Mirror
# 4 - Low Health
# 5 - Sudden end
# 6 - Power supplies
# 7 - Serious fights
# 8 - Knock backs
# 9 - Healthy kills
# 10 - Underdog

scoreboard players set DefaultModifier System 1

# SelectedModifier 0->Default modifier 1-> Preselected
scoreboard players set SelectedModifier System 0
