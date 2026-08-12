tag @s add SniperUncounted
execute as @s at @s as @e[type=#gameify:hostile_mobs,distance=..1] at @s run damage @s 100 arrow by @s from @s
execute as @s at @s positioned ^ ^ ^1 if entity @a[distance=..200,tag=!SniperUncounted] run function gameify:bows/sniper with entity @s
tag @s remove SniperUncounted