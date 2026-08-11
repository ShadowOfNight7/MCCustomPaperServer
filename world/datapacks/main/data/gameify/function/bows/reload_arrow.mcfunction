tag @s add ArrowOriginCrossbow

execute as @s at @s on origin if entity @s[tag=OriginCrossbow] as @e[type=arrow,tag=ArrowOriginCrossbow] at @s run function gameify:bows/reload_bow_reloading with entity @s

tag @s remove ArrowOriginCrossbow