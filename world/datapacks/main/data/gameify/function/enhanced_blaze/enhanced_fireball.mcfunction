execute as @s at @s run summon small_fireball ~ ~ ~ {Tags:["Summoning","SummonedSmallFireball"],acceleration_power:0.15}
execute as @s at @s as @e[tag=Summoning,limit=1] at @s facing entity @p eyes positioned 0.001 0.001 0.001 positioned ^ ^ ^0.4 run summon interaction ~ ~ ~ {Tags:["FireballGuide"]}
execute as @s as @e[tag=Summoning,limit=1] at @s store result entity @s Motion[0] double 0.0001 run data get entity @e[tag=FireballGuide,limit=1] Pos[0] 10000
execute as @s as @e[tag=Summoning,limit=1] at @s store result entity @s Motion[1] double 0.0001 run data get entity @e[tag=FireballGuide,limit=1] Pos[1] 10000
execute as @s as @e[tag=Summoning,limit=1] at @s store result entity @s Motion[2] double 0.0001 run data get entity @e[tag=FireballGuide,limit=1] Pos[2] 10000
execute as @s as @e[tag=Summoning,limit=1] at @s run tag @s remove Summoning
execute as @s run kill @e[tag=FireballGuide]
execute as @s at @s run scoreboard players set @s time 2
