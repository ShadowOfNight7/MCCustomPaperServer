execute as @s[scores={time=1}] at @s run summon marker ~ ~ ~ {Tags:["Clone","CloneRider"]}
execute as @s at @s run ride @e[tag=CloneRider,limit=1] mount @s
tag @e[tag=CloneRider] remove CloneRider

execute as @s[scores={time=1},tag=Cloned] at @s run particle minecraft:totem_of_undying ~ ~1 ~ 0 0 0 0.5 200 normal

execute as @s[scores={time=1}] at @s run attribute @s movement_speed base set 0.3
execute as @s[scores={time=1}] at @s run data merge entity @s {Fuse:30s}

execute as @s[scores={time=1}] at @s store result score @s random run random value 1..100
execute as @s[scores={time=1,random=1..5}] at @s run data merge entity @s {powered:1b}

execute as @s[scores={time=1}] run team join creepers @s


effect give @s unluck 1 10 true

execute as @s at @s run kill @e[type=arrow,distance=..3,tag=!Homing,tag=!Fast,tag=!Teleport]

execute as @s at @s on vehicle if entity @s[type=#boat] run kill @s
execute as @s at @s on vehicle if entity @s[type=minecart] run kill @s