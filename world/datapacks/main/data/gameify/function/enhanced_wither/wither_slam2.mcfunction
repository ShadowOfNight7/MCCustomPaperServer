execute as @s at @s positioned 0.001 0.001 0.001 run summon marker ^ ^ ^-0.5 {Tags:["WitherSlamGuide"]}
execute as @s at @s store result entity @s Motion[0] double 0.0001 run data get entity @e[tag=WitherSlamGuide,limit=1] Pos[0] 10000
execute as @s at @s store result entity @s Motion[2] double 0.0001 run data get entity @e[tag=WitherSlamGuide,limit=1] Pos[2] 10000
kill @e[tag=WitherSlamGuide]