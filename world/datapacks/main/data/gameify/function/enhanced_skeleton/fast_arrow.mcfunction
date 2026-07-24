execute as @s at @s run data merge entity @s {crit:true}
execute as @s at @s store result score @s posX run data get entity @s Motion[0] 10000
execute as @s at @s store result score @s posY run data get entity @s Motion[1] 10000
execute as @s at @s store result score @s posZ run data get entity @s Motion[2] 10000
execute as @s at @s store result entity @s Motion[0] double 0.0002 run scoreboard players get @s posX
execute as @s at @s store result entity @s Motion[1] double 0.00007 run scoreboard players get @s posY
execute as @s at @s store result entity @s Motion[2] double 0.0002 run scoreboard players get @s posZ
