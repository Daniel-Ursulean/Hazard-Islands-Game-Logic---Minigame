tag @r[tag=Playing,tag=!Powered] add Powering

loot give @a[tag=Powering] loot abilities:random_power
loot give @a[tag=Powering] loot abilities:random_power
loot give @a[tag=Powering] loot abilities:random_power

tag @a[tag=Powering] add Powered
tag @a[tag=Powering] remove Powering

execute if entity @a[tag=Playing,tag=!Powered] run function systemhazis:givepowers
execute unless entity @a[tag=Playing,tag=!Powered] run tag @a[tag=Powered] remove Powered