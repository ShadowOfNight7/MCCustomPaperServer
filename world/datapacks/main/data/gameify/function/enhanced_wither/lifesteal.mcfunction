execute as @e[tag=WitherMarker] at @s store result score @s health run data get entity @s Health 10000
scoreboard players add @e[tag=WitherMarker] health 15000
execute if entity @s[type=!player] run scoreboard players add @e[tag=WitherMarker] health 30000
execute as @e[tag=WitherMarker] at @s store result entity @s Health float 0.0001 run scoreboard players get @s health
