
execute as @s as @e[distance=..2] at @s run damage @s 1000 arrow by @s from @s
execute as @s positioned ~ ~-1.8 ~ as @e[distance=..2] at @s run damage @s 1000 arrow by @s from @s
execute as @s as @e[type=ender_dragon,distance=..30] at @s run damage @s 1000 arrow by @s from @s
execute as @s as @e[type=ender_dragon,distance=..30] at @s run say a
scoreboard players remove @s max_snipe_distance 1
execute as @s positioned ^ ^ ^1 if score @s max_snipe_distance matches 1.. run function gameify:bows/sniper with entity @s
