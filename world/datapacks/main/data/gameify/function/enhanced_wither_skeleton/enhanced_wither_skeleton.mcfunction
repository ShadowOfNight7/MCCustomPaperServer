execute as @s[scores={time=1}] at @s run attribute @s knockback_resistance base set 1
execute as @s[scores={time=1}] at @s run attribute @s entity_interaction_range base set 5
execute as @s[scores={time=1}] at @s run attribute @s attack_speed base set 10
execute as @s[scores={time=1}] at @s run attribute @s max_health base set 35
execute as @s[scores={time=1}] at @s run effect give @s instant_damage 1 10

tag @s add WitherSkeletonMarker
execute as @s at @s on target if entity @s[nbt={HurtTime:9s}] run effect give @e[tag=WitherSkeletonMarker] instant_damage 1 1 true
tag @s remove WitherSkeletonMarker
