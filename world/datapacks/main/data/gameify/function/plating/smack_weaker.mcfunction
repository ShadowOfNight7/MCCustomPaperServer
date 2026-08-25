execute as @s at @s on attacker if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{Hammer:true}}}}] if items entity @s weapon.offhand *[custom_data~{plating:true,},item_model="minecraft:copper_ingot"] run tag @s add Smithing
execute as @s at @s on attacker if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{Hammer:true}}}}] if items entity @s weapon.offhand *[custom_data~{plating:true,},item_model="minecraft:iron_ingot"] run tag @s add Smithing
execute as @s at @s on attacker if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{Copper_Hammer:true}}}}] if items entity @s weapon.offhand *[custom_data~{plating:true,},item_model="minecraft:copper_ingot"] run tag @s add Smithing
execute as @s at @s on attacker if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{Copper_Hammer:true}}}}] if items entity @s weapon.offhand *[custom_data~{plating:true,},item_model="minecraft:iron_ingot"] run tag @s add Smithing

execute as @s at @s on attacker run tag @s add SmithingAttacked

execute as @s at @s on vehicle if data entity @s Item.components."minecraft:custom_data".plate_applied run tellraw @a[tag=Smithing] ["This armor already has a plating!"]
execute as @s at @s on vehicle if data entity @s Item.components."minecraft:custom_data".plate_applied run tag @a[tag=Smithing] remove Smithing

execute as @s at @s if entity @a[tag=Smithing] run function gameify:plating/reinforce with entity @s
execute as @s at @s if entity @a[tag=Smithing] run particle electric_spark ~ ~0.08 ~ 0 0 0 0.5 11 normal
# execute as @s at @s if entity @a[tag=Smithing] run particle small_flame ~ ~0.08 ~ 0 0 0 0.1 3 normal

execute as @s at @s if entity @a[tag=SmithingAttacked] run data remove entity @s attack

tag @a remove Smithing
tag @a remove SmithingAttacked