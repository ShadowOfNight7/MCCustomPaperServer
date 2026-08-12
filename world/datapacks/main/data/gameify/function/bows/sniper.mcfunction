
execute as @s as @e[distance=..1] at @s run damage @s 1000 arrow by @s from @s
execute as @s positioned ~ ~-1 ~ as @e[distance=..1] at @s run damage @s 1000 arrow by @s from @s

scoreboard players remove @s max_snipe_distance 1
execute as @s positioned ^ ^ ^1 if score @s max_snipe_distance matches 1.. run function gameify:bows/sniper with entity @s
