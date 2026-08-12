tag @s add SniperIgnore
execute as @s as @e[distance=..2] at @s run damage @s 1000 arrow by @e[tag=SniperIgnore,limit=1] from @e[tag=SniperIgnore,limit=1]
execute as @s positioned ~ ~-1.8 ~ as @e[distance=..2] at @s run damage @s 1000 arrow by @e[tag=SniperIgnore,limit=1] from @e[tag=SniperIgnore,limit=1]

scoreboard players remove @s max_snipe_distance 1
execute as @s positioned ^ ^ ^1 if score @s max_snipe_distance matches 1.. run function gameify:bows/sniper with entity @s
tag @s remove SniperIgnore