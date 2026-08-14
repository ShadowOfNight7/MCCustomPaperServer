
execute as @s at @s positioned ~ ~1 ~ run summon arrow ^ ^ ^ {Tags:["TheTurretArrow","TurretArrow"]}
execute as @s at @s rotated ~ ~ positioned 0.0001 0.0001 0.0001 run summon marker ^ ^ ^2.5 {Tags:["TheTurretArrowGuide"]}
execute as @e[type=marker,tag=TheTurretArrowGuide] at @s run data modify entity @e[type=arrow,tag=TheTurretArrow,limit=1] Motion[0] set from entity @s Pos[0]
execute as @e[type=marker,tag=TheTurretArrowGuide] at @s run data modify entity @e[type=arrow,tag=TheTurretArrow,limit=1] Motion[1] set from entity @s Pos[1]
execute as @e[type=marker,tag=TheTurretArrowGuide] at @s run data modify entity @e[type=arrow,tag=TheTurretArrow,limit=1] Motion[2] set from entity @s Pos[2]
kill @e[type=marker,tag=TheTurretArrowGuide]
tag @e[type=arrow,tag=TheTurretArrow] remove TheTurretArrow

# execute as @e[type=marker,tag=TheTurretArrowGuide] at @s store result score @s posX run data get entity @s Motion[0] 10000
# execute as @e[type=marker,tag=TheTurretArrowGuide] at @s store result score @s posY run data get entity @s Motion[1] 10000
# execute as @e[type=marker,tag=TheTurretArrowGuide] at @s store result score @s posZ run data get entity @s Motion[2] 10000


execute store result score @s turret.cooldown run scoreboard players get @s turret_power
scoreboard players set @s basenumber 128
execute as @s at @s run scoreboard players operation @s turret.cooldown /= @s basenumber
execute as @s at @s run scoreboard players add @s turret.cooldown 10
scoreboard players set @s basenumber 600
execute as @s at @s store result score @s turret.cooldown run scoreboard players operation @s basenumber /= @s turret.cooldown

