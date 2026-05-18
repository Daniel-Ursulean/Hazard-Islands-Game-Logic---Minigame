execute at @a run playsound entity.experience_orb.pickup master @a ~ ~ ~


#Placing and points

tellraw @a {"color":"gold","text":"Results:"}
execute as @a[scores={Place=10}] run tellraw @a [{"color":"dark_gray","text":"10th place: "},{"selector":"@s"}]
execute as @a[scores={Place=9}] run tellraw @a [{"color":"dark_gray","text":"9th place: "},{"selector":"@s"}]
execute as @a[scores={Place=8}] run tellraw @a [{"color":"dark_gray","text":"8th place: "},{"selector":"@s"}]
execute as @a[scores={Place=7}] run tellraw @a [{"color":"dark_gray","text":"7th place: "},{"selector":"@s"}]
execute as @a[scores={Place=6}] run tellraw @a [{"color":"dark_gray","text":"6th place: "},{"selector":"@s"}]
execute as @a[scores={Place=5}] run tellraw @a [{"color":"dark_gray","text":"5th place: "},{"selector":"@s"}]
execute as @a[scores={Place=4}] run tellraw @a [{"color":"dark_gray","text":"4th place: "},{"selector":"@s"}]
execute if score TypeOfScoring System matches 1 as @a[scores={Place=3}] run tellraw @a [{"color":"#784624","text":"3rd place: "},{"selector":"@s"}," (+1 point)"]
execute if score TypeOfScoring System matches 1 as @a[scores={Place=2}] run tellraw @a [{"color":"gray","text":"2nd place: "},{"selector":"@s"}," (+2 points)"]
execute if score TypeOfScoring System matches 1 as @a[scores={Place=1}] run tellraw @a [{"color":"gold","text":"1st place: "},{"selector":"@s"}," (+3 points)"]
execute if score TypeOfScoring System matches 0 as @a[scores={Place=3}] run tellraw @a [{"color":"#784624","text":"3rd place: "},{"selector":"@s"}]
execute if score TypeOfScoring System matches 0 as @a[scores={Place=2}] run tellraw @a [{"color":"gray","text":"2nd place: "},{"selector":"@s"}]
execute if score TypeOfScoring System matches 0 as @a[scores={Place=1}] run tellraw @a [{"color":"gold","text":"1st place: "},{"selector":"@s"}," (+1 point)"]

execute if score TypeOfScoring System matches 1 as @a[scores={Place=3}] run scoreboard players add @s Score 1
execute if score TypeOfScoring System matches 1 as @a[scores={Place=2}] run scoreboard players add @s Score 2
execute if score TypeOfScoring System matches 1 as @a[scores={Place=1}] run scoreboard players add @s Score 3

execute if score TypeOfScoring System matches 0 as @a[scores={Place=1}] run scoreboard players add @s Score 1

#End game
execute if score Round System > NumberOfRounds System run title @a title {"color":"white","text":"And the winner is..."}
execute if score Round System > NumberOfRounds System run scoreboard players set WinnerTimer System 350
