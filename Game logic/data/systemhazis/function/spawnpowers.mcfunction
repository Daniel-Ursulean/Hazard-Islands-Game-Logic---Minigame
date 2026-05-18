execute run tellraw @a {"color":"gold","text":"New powers spawned"}
execute positioned -72 16 -56 at @e[type=minecraft:armor_stand,tag=PowerSpawner1,distance=..26] run loot spawn ~ ~ ~ loot abilities:random_power
execute positioned -72 16 -56 at @e[type=minecraft:armor_stand,tag=PowerSpawner2,distance=..26] run loot spawn ~ ~ ~ loot abilities:random_power
execute positioned -72 16 -56 at @e[type=minecraft:armor_stand,tag=PowerSpawner1,distance=..26] run summon firework_rocket ~ ~ ~ {LifeTime:20}
execute positioned -72 16 -56 at @e[type=minecraft:armor_stand,tag=PowerSpawner2,distance=..26] run summon firework_rocket ~ ~ ~ {LifeTime:20}
