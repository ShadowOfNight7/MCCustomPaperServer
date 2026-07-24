scoreboard players set @s cooldown 8400
execute as @s at @s positioned 0.001 0.001 0.001 positioned ^ ^ ^0.5 run summon marker ~ ~ ~ {Tags:["ChaplainMotion"]}
execute as @e[tag=ChaplainMotion] at @s store result score @s posX run data get entity @s Pos[0] 10000
execute as @e[tag=ChaplainMotion] at @s store result score @s posY run data get entity @s Pos[1] 10000
execute as @e[tag=ChaplainMotion] at @s store result score @s posZ run data get entity @s Pos[2] 10000

execute as @s at @s positioned ^ ^ ^0.5 positioned ~ ~1.5 ~ run summon splash_potion ~ ~ ~ {Tags:["ChaplainPotion"],Item:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{custom_color:5299776,custom_effects:[{id:"minecraft:regeneration",amplifier:1,duration:600,show_particles:1b},{id:"minecraft:speed",amplifier:1,duration:600,show_particles:1b},{id:"minecraft:saturation",amplifier:10,duration:600,show_particles:1b}]}}}}
execute as @e[tag=ChaplainPotion] at @s store result entity @s Motion[0] double 0.0001 run scoreboard players get @e[tag=ChaplainMotion,limit=1] posX
execute as @e[tag=ChaplainPotion] at @s store result entity @s Motion[1] double 0.0001 run scoreboard players get @e[tag=ChaplainMotion,limit=1] posY
execute as @e[tag=ChaplainPotion] at @s store result entity @s Motion[2] double 0.0001 run scoreboard players get @e[tag=ChaplainMotion,limit=1] posZ

tag @e[tag=ChaplainPotion] remove ChaplainPotion
kill @e[tag=ChaplainMotion]

tellraw @s ["You used ",{"text":"Potion","bold":true,"color":"dark_green"}, "!"]