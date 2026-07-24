execute as @s at @s run scoreboard players add @s random 1
execute as @s at @s store result entity @s Size double 1 run scoreboard players get @s random
execute as @s at @s run scoreboard players remove @s random 1
