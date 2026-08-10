execute as @s if score @s flagRandom1 matches 1.. run scoreboard players remove @s flagRandom1 1
execute as @s if score @s flagRandom1 matches 1.. rotated ~10 ~ run function gameify:abilities/emperor_4 with entity @s

execute as @s if score @s flagRandom2 matches 1.. run scoreboard players remove @s flagRandom2 1
execute as @s if score @s flagRandom2 matches 1.. rotated ~1 ~ run function gameify:abilities/emperor_4 with entity @s

execute as @s if score @s flagRandom3 matches 1.. run scoreboard players remove @s flagRandom3 1
execute as @s if score @s flagRandom3 matches 1.. rotated ~0.1 ~ run function gameify:abilities/emperor_4 with entity @s

execute as @s if score @s flagRandom3 matches 0 run tp @e[tag=MobChosen] ^ ^ ^130
execute as @s if score @s flagRandom3 matches 0 as @e[tag=MobChosen] at @s run spreadplayers ~ ~ 0 1 true @s
execute as @s if score @s flagRandom3 matches 0 run scoreboard players set @s flagRandom3 -1