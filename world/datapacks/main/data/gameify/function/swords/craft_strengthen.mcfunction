execute as @s at @s if entity @e[type=item,nbt={Item:{id:"minecraft:blaze_rod"}},distance=..3] if entity @e[type=item,nbt={Item:{id:"minecraft:blaze_powder"}},distance=..3] if entity @e[type=item,nbt={Item:{id:"minecraft:flint_and_steel"}},distance=..3] if entity @e[type=item,nbt={Item:{id:"minecraft:fire_charge"}},distance=..3] if entity @e[type=item,nbt={Item:{id:"minecraft:dragon_breath"}},distance=..3] if entity @e[type=item,nbt={Item:{id:"minecraft:end_crystal"}},distance=..3] if entity @e[type=item,nbt={Item:{id:"minecraft:gunpowder"}},distance=..3] run tag @s add CraftedPotion1

execute as @s[tag=CraftedPotion1] at @s as @e[type=item,nbt={Item:{id:"minecraft:blaze_rod"}},distance=..3,limit=1] at @s run function gameify:consume_item with entity @s
execute as @s[tag=CraftedPotion1] at @s as @e[type=item,nbt={Item:{id:"minecraft:blaze_powder"}},distance=..3,limit=1] at @s run function gameify:consume_item with entity @s
execute as @s[tag=CraftedPotion1] at @s as @e[type=item,nbt={Item:{id:"minecraft:fire_charge"}},distance=..3,limit=1] at @s run function gameify:consume_item with entity @s
execute as @s[tag=CraftedPotion1] at @s as @e[type=item,nbt={Item:{id:"minecraft:flint_and_steel"}},distance=..3,limit=1] at @s run function gameify:consume_item with entity @s
execute as @s[tag=CraftedPotion1] at @s as @e[type=item,nbt={Item:{id:"minecraft:gunpowder"}},distance=..3,limit=1] at @s run function gameify:consume_item with entity @s
execute as @s[tag=CraftedPotion1] at @s as @e[type=item,nbt={Item:{id:"minecraft:dragon_breath"}},distance=..3,limit=1] at @s run function gameify:consume_item with entity @s
execute as @s[tag=CraftedPotion1] at @s as @e[type=item,nbt={Item:{id:"minecraft:end_crystal"}},distance=..3,limit=1] at @s run function gameify:consume_item with entity @s

execute as @s[tag=CraftedPotion1] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:stored_enchantments":{"gameify:strengthen":1}}}}
execute as @s[tag=CraftedPotion1] at @s run function gameify:consume_item with entity @s
 
execute as @s[tag=CraftedPotion1] at @s run particle small_flame ~ ~ ~ 0 0 0 0.2 25 normal

tag @s remove CraftedPotion1