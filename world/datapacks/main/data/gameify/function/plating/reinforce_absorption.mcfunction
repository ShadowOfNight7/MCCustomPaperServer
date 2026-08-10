execute as @s at @s on vehicle run data merge entity @s {Item:{components:{"minecraft:custom_data":{absorption:10f,passive_ability:true,plate_applied:1}}}}

execute as @s at @s on vehicle store result entity @s Item.components."minecraft:custom_data".absorption float 1 run data get entity @e[tag=Smithing,limit=1] equipment.offhand.components."minecraft:custom_data".plate_lvl 1
