execute as @s at @s on origin on target run tag @s add HomingTarget
execute unless entity @e[tag=HomingTarget] run tag @s remove Homing


execute if entity @e[tag=HomingTarget] as @s at @s facing entity @e[tag=HomingTarget,limit=1,sort=nearest] eyes positioned 0.001 0.001 0.001 run summon marker ^ ^ ^1.5 {Tags:["HomingGuide"]}
execute if entity @e[tag=HomingTarget] as @e[type=marker,tag=HomingGuide] at @s store result score @e[type=arrow,tag=targetArrow,limit=1] posX run data get entity @s Pos[0] 10000
execute if entity @e[tag=HomingTarget] as @e[type=marker,tag=HomingGuide] at @s store result score @e[type=arrow,tag=targetArrow,limit=1] posY run data get entity @s Pos[1] 10000
execute if entity @e[tag=HomingTarget] as @e[type=marker,tag=HomingGuide] at @s store result score @e[type=arrow,tag=targetArrow,limit=1] posZ run data get entity @s Pos[2] 10000
execute if entity @e[tag=HomingTarget] as @s at @s store result entity @s Motion[0] double 0.0001 run scoreboard players get @s posX
execute if entity @e[tag=HomingTarget] as @s at @s store result entity @s Motion[1] double 0.0001 run scoreboard players get @s posY
execute if entity @e[tag=HomingTarget] as @s at @s store result entity @s Motion[2] double 0.0001 run scoreboard players get @s posZ
kill @e[tag=HomingGuide]
tag @e[tag=HomingTarget] remove HomingTarget