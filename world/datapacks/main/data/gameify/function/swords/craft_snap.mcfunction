
execute as @s at @s if entity @e[type=item,nbt={Item:{id:"minecraft:netherite_scrap"}},distance=..3] if entity @e[type=item,nbt={Item:{id:"minecraft:arrow"}},distance=..3] if entity @e[type=item,nbt={Item:{id:"minecraft:tipped_arrow"}},distance=..3] if entity @e[type=item,nbt={Item:{id:"minecraft:spectral_arrow"}},distance=..3] if entity @e[type=item,nbt={Item:{id:"minecraft:fire_charge"}},distance=..3] if entity @e[type=item,nbt={Item:{id:"minecraft:ender_pearl"}},distance=..3] run tag @s add CraftedPotion1

execute as @s[tag=CraftedPotion1] at @s as @e[type=item,nbt={Item:{id:"minecraft:netherite_scrap"}},distance=..3,limit=1] at @s run function gameify:consume_item with entity @s
execute as @s[tag=CraftedPotion1] at @s as @e[type=item,nbt={Item:{id:"minecraft:arrow"}},distance=..3,limit=1] at @s run function gameify:consume_item with entity @s
execute as @s[tag=CraftedPotion1] at @s as @e[type=item,nbt={Item:{id:"minecraft:tipped_arrow"}},distance=..3,limit=1] at @s run function gameify:consume_item with entity @s
execute as @s[tag=CraftedPotion1] at @s as @e[type=item,nbt={Item:{id:"minecraft:spectral_arrow"}},distance=..3,limit=1] at @s run function gameify:consume_item with entity @s
execute as @s[tag=CraftedPotion1] at @s as @e[type=item,nbt={Item:{id:"minecraft:fire_charge"}},distance=..3,limit=1] at @s run function gameify:consume_item with entity @s
execute as @s[tag=CraftedPotion1] at @s as @e[type=item,nbt={Item:{id:"minecraft:ender_pearl"}},distance=..3,limit=1] at @s run function gameify:consume_item with entity @s

execute as @s[tag=CraftedPotion1] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:stored_enchantments":{"gameify:snap":1}}}}
 
execute as @s[tag=CraftedPotion1] at @s run particle ash ~ ~ ~ 0 0 0 0.1 50 normal

execute as @s[tag=CraftedPotion1] at @s run function gameify:consume_item with entity @s

tag @s remove CraftedPotion1