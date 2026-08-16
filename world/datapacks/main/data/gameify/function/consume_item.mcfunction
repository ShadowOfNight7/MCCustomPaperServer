execute as @s at @s store result score @s itemCount run data get entity @s Item.count

execute as @s at @s if score @s itemCount matches 1 run kill @s
scoreboard players remove @s itemCount 1
execute as @s at @s store result entity @s Item.count int 1 run scoreboard players get @s itemCount