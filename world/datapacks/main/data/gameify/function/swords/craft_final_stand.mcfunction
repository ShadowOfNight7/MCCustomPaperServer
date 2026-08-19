execute as @s at @s if entity @e[type=item,nbt={Item:{id:"minecraft:ender_eye"}},distance=..3] if entity @e[type=item,nbt={Item:{id:"minecraft:blaze_rod"}},distance=..3] if entity @e[type=item,nbt={Item:{id:"minecraft:golden_apple"}},distance=..3] if entity @e[type=item,nbt={Item:{id:"minecraft:chorus_flower"}},distance=..3] if entity @e[type=item,nbt={Item:{id:"minecraft:respawn_anchor"}},distance=..3] if entity @e[type=item,nbt={Item:{id:"minecraft:sculk_shrieker"}},distance=..3] run tag @s add CraftedPotion1

execute as @s[tag=CraftedPotion1] at @s as @e[type=item,nbt={Item:{id:"minecraft:ender_eye"}},distance=..3,limit=1] at @s run function gameify:consume_item with entity @s
execute as @s[tag=CraftedPotion1] at @s as @e[type=item,nbt={Item:{id:"minecraft:blaze_rod"}},distance=..3,limit=1] at @s run function gameify:consume_item with entity @s
execute as @s[tag=CraftedPotion1] at @s as @e[type=item,nbt={Item:{id:"minecraft:golden_apple"}},distance=..3,limit=1] at @s run function gameify:consume_item with entity @s
execute as @s[tag=CraftedPotion1] at @s as @e[type=item,nbt={Item:{id:"minecraft:chorus_flower"}},distance=..3,limit=1] at @s run function gameify:consume_item with entity @s
execute as @s[tag=CraftedPotion1] at @s as @e[type=item,nbt={Item:{id:"minecraft:respawn_anchor"}},distance=..3,limit=1] at @s run function gameify:consume_item with entity @s
execute as @s[tag=CraftedPotion1] at @s as @e[type=item,nbt={Item:{id:"minecraft:sculk_shrieker"}},distance=..3,limit=1] at @s run function gameify:consume_item with entity @s

execute as @s[tag=CraftedPotion1] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:stored_enchantments":{"gameify:final_stand":1}}}}
 
execute as @s[tag=CraftedPotion1] at @s run particle end_rod ~ ~ ~ 0 0 0 0.2 30 normal

execute as @s[tag=CraftedPotion1] at @s run function gameify:consume_item with entity @s

tag @s remove CraftedPotion1