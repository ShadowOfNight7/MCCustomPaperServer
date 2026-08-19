execute as @s at @s if entity @e[type=item,nbt={Item:{id:"minecraft:pufferfish"}},distance=..3] if entity @e[type=item,nbt={Item:{id:"minecraft:chorus_fruit"}},distance=..3] if entity @e[type=item,nbt={Item:{id:"minecraft:suspicious_stew"}},distance=..3] if entity @e[type=item,nbt={Item:{id:"minecraft:wither_rose"}},distance=..3] if entity @e[type=item,nbt={Item:{id:"minecraft:closed_eyeblossom"}},distance=..3] run tag @s add CraftedPotion1

execute as @s[tag=CraftedPotion1] at @s as @e[type=item,nbt={Item:{id:"minecraft:pufferfish"}},distance=..3,limit=1] at @s run function gameify:consume_item with entity @s
execute as @s[tag=CraftedPotion1] at @s as @e[type=item,nbt={Item:{id:"minecraft:chorus_fruit"}},distance=..3,limit=1] at @s run function gameify:consume_item with entity @s
execute as @s[tag=CraftedPotion1] at @s as @e[type=item,nbt={Item:{id:"minecraft:suspicious_stew"}},distance=..3,limit=1] at @s run function gameify:consume_item with entity @s
execute as @s[tag=CraftedPotion1] at @s as @e[type=item,nbt={Item:{id:"minecraft:wither_rose"}},distance=..3,limit=1] at @s run function gameify:consume_item with entity @s
execute as @s[tag=CraftedPotion1] at @s as @e[type=item,nbt={Item:{id:"minecraft:closed_eyeblossom"}},distance=..3,limit=1] at @s run function gameify:consume_item with entity @s

execute as @s[tag=CraftedPotion1] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:stored_enchantments":{"gameify:disorientate":1}}}}
 
execute as @s[tag=CraftedPotion1] at @s run particle glow ~ ~ ~ 0.1 0.1 0.1 0 12 normal

execute as @s[tag=CraftedPotion1] at @s run function gameify:consume_item with entity @s

tag @s remove CraftedPotion1