tag @s add TheSnappered

execute as @s at @s on origin if entity @s[tag=TheSnapped] run kill @e[tag=TheSnappered,limit=1]

tag @s remove TheSnappered