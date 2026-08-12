
execute as @s at @s run summon arrow ^ ^ ^0.1 {Tags:["TheTurretArrow"]}
execute as @s at @s rotated ~ ~ positioned 0.0001 0.0001 0.0001 run summon marker ^ ^ ^1 {Tags:["TheTurretArrowGuide"]}
execute as @e[type=marker,tag=TheTurretArrowGuide] at @s run data modify entity @e[type=arrow,tag=TheTurretArrow,limit=1] Motion[0] set from entity @s Pos[0]
execute as @e[type=marker,tag=TheTurretArrowGuide] at @s run data modify entity @e[type=arrow,tag=TheTurretArrow,limit=1] Motion[1] set from entity @s Pos[1]
execute as @e[type=marker,tag=TheTurretArrowGuide] at @s run data modify entity @e[type=arrow,tag=TheTurretArrow,limit=1] Motion[2] set from entity @s Pos[2]
kill @e[type=interaction,tag=TheTurretArrowGuide]
tag @e[type=arrow,tag=TheTurretArrow] remove TheTurretArrow

scoreboard players set @s turret.cooldown 60