tag @s add TheSnapped

execute as @e[type=#arrows] at @s run function gameify:swords/snapper with entity @s
execute as @e[type=ender_pearl] at @s run function gameify:swords/snapper with entity @s
execute as @e[type=fireball] at @s run function gameify:swords/snapper with entity @s
execute as @e[type=small_fireball] at @s run function gameify:swords/snapper with entity @s
execute as @e[type=snowball] at @s run function gameify:swords/snapper with entity @s
execute as @e[type=shulker_bullet] at @s run function gameify:swords/snapper with entity @s
execute as @e[type=llama_spit] at @s run function gameify:swords/snapper with entity @s
execute as @e[type=firework_rocket] at @s run function gameify:swords/snapper with entity @s

scoreboard players remove @s enchant.snap 1

execute as @s at @s run particle mycelium ~ ~1 ~ 0.5 0.5 0.5 0.2 3 normal
tag @s remove TheSnapped