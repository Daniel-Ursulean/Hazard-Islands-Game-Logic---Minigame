#Lobby
place template minecraft:lobby_match_started -83 200 -67

#Map and modifier
execute if score Map System matches 0 store result score Map System run random value 1..10
execute if score SelectedModifier System matches 0 run scoreboard players operation Modifier System = DefaultModifier System
execute if score Modifier System matches 0 store result score Modifier System run random value 1..10

#Tellraw
tellraw @a [{"color":"gold","text":"Round "},{"score":{"name":"Round","objective":"System"}}]

execute if score Map System matches 1 run tellraw @a {"color":"green", "text":"Map: Plains"}
execute if score Map System matches 2 run tellraw @a {"color":"green", "text":"Map: Modern art"}
execute if score Map System matches 3 run tellraw @a {"color":"green", "text":"Map: Levels"}
execute if score Map System matches 4 run tellraw @a {"color":"green", "text":"Map: Mountain"}
execute if score Map System matches 5 run tellraw @a {"color":"green", "text":"Map: Stone bits"}
execute if score Map System matches 6 run tellraw @a {"color":"green", "text":"Map: Desert"}
execute if score Map System matches 7 run tellraw @a {"color":"green", "text":"Map: Rooms"}
execute if score Map System matches 8 run tellraw @a {"color":"green", "text":"Map: Dimensional trees"}
execute if score Map System matches 9 run tellraw @a {"color":"green", "text":"Map: City"}
execute if score Map System matches 10 run tellraw @a {"color":"green", "text":"Map: End tower"}

execute if score Modifier System matches 1 run tellraw @a [{"color":"light_purple", "text":"Modifier: Classic"},{"text":"\nDescription: No modifier"}]
execute if score Modifier System matches 2 run tellraw @a [{"color":"light_purple", "text":"Modifier: Moon"},{"text":"\nDescription: Everyone jumps higher and falls slower"}]
execute if score Modifier System matches 3 run tellraw @a [{"color":"light_purple", "text":"Modifier: Mirror"},{"text":"\nDescription: Everyone has the same power-ups"}]
execute if score Modifier System matches 4 run tellraw @a [{"color":"light_purple", "text":"Modifier: Low health"},{"text":"\nDescription: Every player has only 5 hearts"}]
execute if score Modifier System matches 5 run tellraw @a [{"color":"light_purple", "text":"Modifier: Sudden end"},{"text":"\nDescription: The overtime starts sooner"}]
execute if score Modifier System matches 6 run tellraw @a [{"color":"light_purple", "text":"Modifier: Power supplies"},{"text":"\nDescription: New powers will spawn twice faster"}]
execute if score Modifier System matches 7 run tellraw @a [{"color":"light_purple", "text":"Modifier: Serious fights"},{"text":"\nDescription: Everyone starts with a sword"}]
execute if score Modifier System matches 8 run tellraw @a [{"color":"light_purple", "text":"Modifier: Knock backs"},{"text":"\nDescription: Everybody has a knockback stick"}]
execute if score Modifier System matches 9 run tellraw @a [{"color":"light_purple", "text":"Modifier: Healthy kills"},{"text":"\nDescription: When a player dies a healing pool is spawned"}]
execute if score Modifier System matches 10 run tellraw @a [{"color":"light_purple", "text":"Modifier: Underdog"},{"text":"\nDescription: The player with the least points starts with a bonus power-up"}]

#Before match timer
scoreboard players set BeforeMatchTimer System 100

#Pro tip
function systemhazis:protip

#Kill entities
execute positioned -72 16 -56 run kill @e[distance=..26]
execute positioned -72 0 -56 run kill @e[distance=..26]
execute positioned -72 -10 -56 run kill @e[distance=..26]
execute positioned -72 -30 -56 run kill @e[distance=..26]
execute positioned -72 -50 -56 run kill @e[distance=..26]
execute positioned -72 -60 -56 run kill @e[distance=..26]

#Map
place template minecraft:air -87 1 -71

execute if score Map System matches 1 run place template minecraft:plains -87 1 -71
execute if score Map System matches 2 run place template minecraft:modern_art -87 1 -71
execute if score Map System matches 3 run place template minecraft:levels -87 1 -71
execute if score Map System matches 4 run place template minecraft:mountain -87 1 -71
execute if score Map System matches 5 run place template minecraft:stone_bits -87 1 -71
execute if score Map System matches 6 run place template minecraft:desert -87 1 -71
execute if score Map System matches 7 run place template minecraft:rooms -87 1 -71
execute if score Map System matches 8 run place template minecraft:dimensional_trees -87 1 -71
execute if score Map System matches 9 run place template minecraft:city -87 1 -71
execute if score Map System matches 10 run place template minecraft:end_tower -87 1 -71

fill -57 0 -41 -87 0 -71 air
fill -56 -1 -72 -87 -30 -40 air
fill -56 -31 -72 -87 -34 -40 air
fill -56 -35 -72 -88 -64 -40 air

#Atrributes reset
execute as @a run attribute @s gravity base reset
execute as @a run attribute @s safe_fall_distance base reset
execute as @a run attribute @s max_health base reset
execute as @a run attribute @s scale base reset
execute as @a run attribute @s fall_damage_multiplier base reset