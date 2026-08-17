tag @s add Critted
execute as @s at @s on attacker if score @s crit matches 1 as @e[type=#gameify:mobs,tag=Critted] at @s run scoreboard players set @s enchant.knockout 20
execute as @s at @s on attacker if score @s crit matches 1 as @e[type=#gameify:mobs,tag=Critted] at @s run particle electric_spark ~ ~1.5 0 0 0 0 0.1 5 normal
tag @s remove Critted