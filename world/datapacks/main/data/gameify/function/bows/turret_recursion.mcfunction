execute if score @s basenumber matches 1.. run scoreboard players add @e[type=arrow,tag=TheTurretArrow] blank 10
scoreboard players operation @s basenumber -= @e[type=arrow,tag=TheTurretArrow] blank
execute as @s at @s if score @s basenumber matches 1.. run function gameify:bows/turret_recursion with entity @s