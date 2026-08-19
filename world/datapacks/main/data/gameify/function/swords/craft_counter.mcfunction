execute as @s at @s if entity @e[type=item,nbt={Item:{id:"minecraft:shield"}},distance=..3] if entity @e[type=item,nbt={Item:{id:"minecraft:cactus"}},distance=..3] if entity @e[type=item,nbt={Item:{id:"minecraft:golden_sword"}},distance=..3] if entity @e[type=item,nbt={Item:{id:"minecraft:netherite_ingot"}},distance=..3] if entity @e[type=item,nbt={Item:{id:"minecraft:clock"}},distance=..3] run tag @s add CraftedPotion1

execute as @s[tag=CraftedPotion1] at @s as @e[type=item,nbt={Item:{id:"minecraft:shield"}},distance=..3,limit=1] at @s run function gameify:consume_item with entity @s
execute as @s[tag=CraftedPotion1] at @s as @e[type=item,nbt={Item:{id:"minecraft:cactus"}},distance=..3,limit=1] at @s run function gameify:consume_item with entity @s
execute as @s[tag=CraftedPotion1] at @s as @e[type=item,nbt={Item:{id:"minecraft:golden_sword"}},distance=..3,limit=1] at @s run function gameify:consume_item with entity @s
execute as @s[tag=CraftedPotion1] at @s as @e[type=item,nbt={Item:{id:"minecraft:netherite_ingot"}},distance=..3,limit=1] at @s run function gameify:consume_item with entity @s
execute as @s[tag=CraftedPotion1] at @s as @e[type=item,nbt={Item:{id:"minecraft:clock"}},distance=..3,limit=1] at @s run function gameify:consume_item with entity @s

execute as @s[tag=CraftedPotion1] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:stored_enchantments":{"gameify:aquatic":1}}}}
 
execute as @s[tag=CraftedPotion1] at @s run particle dust{color:11605526,scale:2} ~ ~ ~ 0.1 0.1 0.1 0.15 35 normal
execute as @s[tag=CraftedPotion1] at @s run particle sweep_attack ~ ~ ~ 0 0 0 0.15 3 normal
execute as @s[tag=CraftedPotion1] at @s run particle explosion_emitter ~ ~ ~ 0 0 0 0 1 normal
execute as @s[tag=CraftedPotion1] at @s run kill @e[type=end_crystal,distance=..1]

execute as @s[tag=CraftedPotion1] at @s run function gameify:consume_item with entity @s

tag @s remove CraftedPotion1