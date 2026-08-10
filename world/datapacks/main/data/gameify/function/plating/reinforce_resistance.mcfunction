# execute as @s at @s on vehicle run data merge entity @s {Item:{components:{attribute_modifiers:[{type:"armor",slot:armor,amount:1,operation:add_value,id:"1"}]}}}

execute as @s at @s on vehicle run function gameify:plating/reinforce_armor_default with entity @s

execute as @s at @s on vehicle store result score @s itemStats run data get entity @s Item.components."minecraft:attribute_modifiers"[0].amount 10
execute as @s at @s on vehicle store result score @s newItemStats run data get entity @a[tag=Smithing,limit=1] equipment.offhand.components."minecraft:custom_data".plate_lvl 10
execute as @s at @s on vehicle run scoreboard players operation @s itemStats += @s newItemStats
execute as @s at @s on vehicle store result entity @s Item.components."minecraft:attribute_modifiers"[0].amount double 0.1 run scoreboard players get @s itemStats

execute as @s at @s on vehicle store result score @s itemStats run data get entity @s Item.components."minecraft:attribute_modifiers"[1].amount 10
execute as @s at @s on vehicle store result score @s newItemStats run data get entity @a[tag=Smithing,limit=1] equipment.offhand.components."minecraft:custom_data".plate_lvl2 10
execute as @s at @s on vehicle run scoreboard players operation @s itemStats += @s newItemStats
execute as @s at @s on vehicle store result entity @s Item.components."minecraft:attribute_modifiers"[1].amount double 0.1 run scoreboard players get @s itemStats

# execute as @s at @s on vehicle store result entity @s Item.components."minecraft:attribute_modifiers"[0].amount float 0.1 run data get entity @a[tag=Smithing,limit=1] equipment.offhand.components."minecraft:custom_data".plate_lvl 10
# execute as @s at @s on vehicle store result entity @s Item.components."minecraft:attribute_modifiers"[1].amount float 0.1 run data get entity @a[tag=Smithing,limit=1] equipment.offhand.components."minecraft:custom_data".plate_lvl2 10

execute as @s at @s on vehicle run data merge entity @s {Item:{components:{"minecraft:custom_data":{resistance:1d,passive_ability:true,plate_applied:1}}}}
execute as @s at @s on vehicle run data modify entity @s Item.components."minecraft:custom_data".resistance set from entity @a[tag=Smithing,limit=1] equipment.offhand.components."minecraft:custom_data".plate_lvl