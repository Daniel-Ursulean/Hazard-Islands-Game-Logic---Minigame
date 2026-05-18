gamemode adventure @s
tp @s -72 208 -56
tag @s remove Playing
tag @a[tag=InGame] remove Spectator
clear @s

function abilities:resetcooldown

attribute @s gravity base reset
attribute @s safe_fall_distance base reset
attribute @s max_health base reset
attribute @s scale base reset
attribute @s fall_damage_multiplier base reset