execute as @s at @s if entity @e[type=item,nbt={Item:{id:"minecraft:brick"}},distance=..3] if entity @e[type=item,nbt={Item:{id:"minecraft:nether_brick"}},distance=..3] if entity @e[type=item,nbt={Item:{id:"minecraft:resin_brick"}},distance=..3] if entity @e[type=item,nbt={Item:{id:"minecraft:gold_ingot"}},distance=..3] if entity @e[type=item,nbt={Item:{id:"minecraft:iron_ingot"}},distance=..3] if entity @e[type=item,nbt={Item:{id:"minecraft:iron_ingot"}},distance=..3] run tag @s add CraftedPotion1

execute as @s[tag=CraftedPotion1] at @s as @e[type=item,nbt={Item:{id:"minecraft:brick"}},distance=..3,limit=1] at @s run function gameify:consume_item with entity @s
execute as @s[tag=CraftedPotion1] at @s as @e[type=item,nbt={Item:{id:"minecraft:nether_brick"}},distance=..3,limit=1] at @s run function gameify:consume_item with entity @s
execute as @s[tag=CraftedPotion1] at @s as @e[type=item,nbt={Item:{id:"minecraft:resin_brick"}},distance=..3,limit=1] at @s run function gameify:consume_item with entity @s
execute as @s[tag=CraftedPotion1] at @s as @e[type=item,nbt={Item:{id:"minecraft:gold_ingot"}},distance=..3,limit=1] at @s run function gameify:consume_item with entity @s
execute as @s[tag=CraftedPotion1] at @s as @e[type=item,nbt={Item:{id:"minecraft:iron_ingot"}},distance=..3,limit=1] at @s run function gameify:consume_item with entity @s
execute as @s[tag=CraftedPotion1] at @s as @e[type=item,nbt={Item:{id:"minecraft:copper_ingot"}},distance=..3,limit=1] at @s run function gameify:consume_item with entity @s

execute as @s[tag=CraftedPotion1] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:stored_enchantments":{"gameify:endurance":1}}}}
 
execute as @s[tag=CraftedPotion1] at @s run particle damage_indicator ~ ~ ~ 0 0 0 0.1 25 normal

execute as @s[tag=CraftedPotion1] at @s run function gameify:consume_item with entity @s

tag @s remove CraftedPotion1