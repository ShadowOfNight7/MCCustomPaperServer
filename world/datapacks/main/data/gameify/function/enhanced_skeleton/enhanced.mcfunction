execute as @s at @s store result score @s random run random value 1..100

execute if score @s random matches 1..33 run tag @s add Homing
execute if score @s random matches 34..66 run tag @s add Teleport
execute if score @s random matches 67..100 run tag @s add Fast