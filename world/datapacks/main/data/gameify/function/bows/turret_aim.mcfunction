
execute as @s at @s if score @s turret_utility matches ..16383 positioned ~ ~1 ~ run summon arrow ^ ^ ^ {Tags:["TheTurretArrow","TurretArrow"],NoGravity:true}
execute as @s at @s if score @s turret_utility matches 16384.. positioned ~ ~1 ~ run summon arrow ^ ^ ^ {Tags:["TheTurretArrow","TurretArrow"],NoGravity:true,item:{id:"minecraft:tipped_arrow",count:1,components:{"minecraft:potion_contents":{custom_effects:[{id:"minecraft:wither",amplifier:5,duration:200,show_particles:1b,show_icon:1b,ambient:0b},{id:"minecraft:glowing",amplifier:1,duration:100,show_icon:1b,ambient:0b}]}}}}
execute as @s at @s if score @s turret_utility matches 128.. rotated ~ ~ positioned 0.0001 0.0001 0.0001 run summon marker ^ ^ ^4 {Tags:["TheTurretArrowGuide"]}
execute as @s at @s if score @s turret_utility matches ..127 rotated ~ ~ positioned 0.0001 0.0001 0.0001 run summon marker ^ ^ ^4 {Tags:["TheTurretArrowGuide"]}
execute as @e[type=marker,tag=TheTurretArrowGuide] at @s run data modify entity @e[type=#arrows,tag=TheTurretArrow,limit=1] Motion[0] set from entity @s Pos[0]
execute as @e[type=marker,tag=TheTurretArrowGuide] at @s run data modify entity @e[type=#arrows,tag=TheTurretArrow,limit=1] Motion[1] set from entity @s Pos[1]
execute as @e[type=marker,tag=TheTurretArrowGuide] at @s run data modify entity @e[type=#arrows,tag=TheTurretArrow,limit=1] Motion[2] set from entity @s Pos[2]
kill @e[type=marker,tag=TheTurretArrowGuide]

#atk
scoreboard players set @e[type=arrow,tag=TheTurretArrow] blank 0
execute as @s at @s store result score @s basenumber run scoreboard players get @s turret_attack
execute as @s at @s run function gameify:bows/turret_recursion with entity @s
scoreboard players add @e[type=arrow,tag=TheTurretArrow] blank 66
execute as @e[type=arrow,tag=TheTurretArrow] at @s store result entity @s damage double 0.015 run scoreboard players get @s blank

#Utility
execute as @s at @s if score @s turret_utility matches 64..1023 run data merge entity @e[type=arrow,tag=TheTurretArrow,limit=1] {weapon:{id:"minecraft:bow",components:{enchantments:{punch:1b}}}}


execute as @s at @s if score @s turret_utility matches 512.. run data merge entity @e[type=arrow,tag=TheTurretArrow,limit=1] {PierceLevel:1b}
execute as @s at @s if score @s turret_utility matches 1024.. run data merge entity @e[type=arrow,tag=TheTurretArrow,limit=1] {weapon:{id:"minecraft:bow",components:{enchantments:{punch:2b}}}}

execute as @s at @s if score @s turret_utility matches 4096.. run data merge entity @e[type=arrow,tag=TheTurretArrow,limit=1] {PierceLevel:5b}
execute as @s at @s if score @s turret_utility matches 8192.. run data merge entity @e[type=arrow,tag=TheTurretArrow,limit=1] {crit:true}

execute as @s at @s if score @s turret_utility matches 32768.. run data modify entity @e[type=arrow,tag=TheTurretArrow,limit=1] Tags append value BreakerArrow


tag @e[type=arrow,tag=TheTurretArrow] remove TheTurretArrow


scoreboard players remove @s turret_power 3
scoreboard players remove @s[scores={turret_attack=1..}] turret_attack 1
scoreboard players remove @s[scores={turret_utility=1..}] turret_utility 1



execute store result score @s turret.cooldown run scoreboard players get @s turret_power
scoreboard players set @s basenumber 128
execute as @s at @s run scoreboard players operation @s turret.cooldown /= @s basenumber
execute as @s at @s run scoreboard players add @s turret.cooldown 10
scoreboard players set @s basenumber 600
execute as @s at @s store result score @s turret.cooldown run scoreboard players operation @s basenumber /= @s turret.cooldown

