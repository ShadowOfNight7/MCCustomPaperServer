execute as @s at @s run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Invulnerable:1b,Tags:["CrossbowReloader"]}
execute as @s at @s run data modify entity @e[type=armor_stand,tag=CrossbowReloader,limit=1] equipment.mainhand set from entity @s SelectedItem
execute as @s at @s store result score @s crossbowReloads run data get entity @e[type=armor_stand,tag=CrossbowReloader,limit=1] equipment.mainhand.components."minecraft:custom_data".reloads
scoreboard players remove @s crossbowReloads 1
execute as @s at @s store result entity @e[type=armor_stand,tag=CrossbowReloader,limit=1] equipment.mainhand.components."minecraft:custom_data".reloads int 1 run scoreboard players get @s crossbowReloads
execute as @s at @s run data merge entity @e[type=armor_stand,tag=CrossbowReloader,limit=1] {equipment:{mainhand:{components:{charged_projectiles:[{id:"minecraft:arrow",components:{intangible_projectile:{}}}]}}}}
execute as @s at @s run item replace entity @s weapon.mainhand from entity @e[type=armor_stand,tag=CrossbowReloader,limit=1] weapon.mainhand
execute as @s at @s run kill @e[type=armor_stand,tag=CrossbowReloader]