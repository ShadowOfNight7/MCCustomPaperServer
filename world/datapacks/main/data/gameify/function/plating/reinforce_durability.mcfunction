
execute as @s at @s on vehicle unless data entity @s Item.components."minecraft:max_damage" run function gameify:plating/reinforce_durability_default with entity @s
execute as @s at @s on vehicle if data entity @s Item.components."minecraft:max_damage" store result score @s itemStats run data get entity @s Item.components."minecraft:max_damage" 1


execute as @s at @s on vehicle store result score @s newItemStats run data get entity @a[tag=Smithing,limit=1] equipment.offhand.components."minecraft:custom_data".plate_lvl 1
execute as @s at @s on vehicle run scoreboard players operation @s itemStats += @s newItemStats

execute as @s at @s on vehicle run data merge entity @s {Item:{components:{"minecraft:max_damage":1}}}
execute as @s at @s on vehicle store result entity @s Item.components."minecraft:max_damage" int 1 run scoreboard players get @s itemStats

# execute as @s at @s on vehicle unless data entity @s Item.components."minecraft:custom_data".plate_type run data merge entity @s {Item:{components:{"minecraft:custom_data":{plate_type:"durability",plate_used:[]}}}}
# execute as @s at @s on vehicle run data modify entity @s Item.components."minecraft:custom_data".plate_used append from entity @a[tag=Smithing,limit=1] equipment.offhand.components."minecraft:custom_data".plate_lvl
