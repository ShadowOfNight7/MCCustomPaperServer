execute as @s at @s facing entity @p eyes positioned 0.001 0.001 0.001 run summon marker ^ ^ ^1.5 {Tags:["WitherDashGuide"]}
execute as @s at @s store result entity @s Motion[0] double 0.0001 run data get entity @e[tag=WitherDashGuide,limit=1] Pos[0] 10000
execute as @s at @s store result entity @s Motion[1] double 0.0001 run data get entity @e[tag=WitherDashGuide,limit=1] Pos[1] 10000
execute as @s at @s store result entity @s Motion[2] double 0.0001 run data get entity @e[tag=WitherDashGuide,limit=1] Pos[2] 10000
kill @e[tag=WitherDashGuide]