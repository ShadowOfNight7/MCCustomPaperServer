execute as @s at @s on vehicle run data merge entity @s {Item:{components:{attribute_modifiers:[{type:knockback_resistance,slot:armor,amount:1,operation:add_value,id:"1"}]}}}

execute as @s at @s on vehicle run function gameify:plating/reinforce_armor_default with entity @s

execute as @s at @s on vehicle run data modify entity @s Item.components."minecraft:attribute_modifiers"[0].id set from entity @s Item.id

execute as @s at @s on vehicle store result entity @s Item.components."minecraft:attribute_modifiers"[0].amount float 0.1 run data get entity @a[tag=Smithing,limit=1] equipment.offhand.components."minecraft:custom_data".plate_lvl 10
