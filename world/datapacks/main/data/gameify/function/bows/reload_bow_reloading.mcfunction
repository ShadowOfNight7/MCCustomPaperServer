execute as @s at @s store success score @s crossbowCart run clear @s *[custom_data~{cartridge:true}] 1
execute as @s at @s if score @s crossbowCart matches 1 run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Invulnerable:1b,Tags:["CrossbowReloader"]}
execute as @s at @s if score @s crossbowCart matches 1 run data modify entity @e[type=armor_stand,tag=CrossbowReloader,limit=1] equipment.mainhand set from entity @s SelectedItem
execute as @s at @s if score @s crossbowCart matches 1 run data modify entity @e[type=armor_stand,tag=CrossbowReloader,limit=1] equipment.mainhand.components."minecraft:custom_data".reloads set value 8
execute as @s at @s if score @s crossbowCart matches 1 run item replace entity @s weapon.mainhand from entity @e[type=armor_stand,tag=CrossbowReloader,limit=1] weapon.mainhand
execute as @s at @s if score @s crossbowCart matches 1 run kill @e[type=armor_stand,tag=CrossbowReloader]
say a