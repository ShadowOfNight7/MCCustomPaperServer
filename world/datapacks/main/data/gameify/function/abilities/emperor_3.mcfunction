tag @s add MobChosen

execute as @s at @s store result score @e[tag=FlagChosen,limit=1] flagRandom1 run random value 1..36
execute as @s at @s store result score @e[tag=FlagChosen,limit=1] flagRandom2 run random value 1..10
execute as @s at @s store result score @e[tag=FlagChosen,limit=1] flagRandom3 run random value 1..10

execute as @e[scores={flagRandom1=1..},tag=FlagChosen] at @s rotated 0 0 run function gameify:abilities/emperor_4 with entity @s

tag @s remove MobChosen