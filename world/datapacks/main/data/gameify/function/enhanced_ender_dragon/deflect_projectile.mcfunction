execute as @s at @s store result entity @s Motion[0] double -0.0001 run data get entity @s Motion[0] 10000
execute as @s at @s store result entity @s Motion[1] double -0.0001 run data get entity @s Motion[1] 10000
execute as @s at @s store result entity @s Motion[2] double -0.0001 run data get entity @s Motion[2] 10000

tag @s add Deflected