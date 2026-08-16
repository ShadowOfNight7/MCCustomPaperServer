execute as @s at @s if entity @e[type=item,nbt={Item:{id:"minecraft:prismarine_shard"}},distance=..3] if entity @e[type=item,nbt={Item:{id:"minecraft:prismarine_crystals"}},distance=..3] if entity @e[type=item,nbt={Item:{id:"minecraft:lapis_block"}},distance=..3] if entity @e[type=item,nbt={Item:{id:"minecraft:glow_ink_sac"}},distance=..3] run tag @s add CraftedPotion1

execute as @s[tag=CraftedPotion1] at @s as @e[type=item,nbt={Item:{id:"minecraft:prismarine_shard"}},distance=..3,limit=1] at @s run function gameify:consume_item with entity @s
execute as @s[tag=CraftedPotion1] at @s as @e[type=item,nbt={Item:{id:"minecraft:prismarine_crystals"}},distance=..3,limit=1] at @s run function gameify:consume_item with entity @s
execute as @s[tag=CraftedPotion1] at @s as @e[type=item,nbt={Item:{id:"minecraft:lapis_block"}},distance=..3,limit=1] at @s run function gameify:consume_item with entity @s
execute as @s[tag=CraftedPotion1] at @s as @e[type=item,nbt={Item:{id:"minecraft:glow_ink_sac"}},distance=..3,limit=1] at @s run function gameify:consume_item with entity @s

execute as @s[tag=CraftedPotion1] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:stored_enchantments":{"gameify:aquatic":1}}}}
execute as @s[tag=CraftedPotion1] at @s run function gameify:consume_item with entity @s
 
execute as @s[tag=CraftedPotion1] at @s run particle bubble ~ ~ ~ 0 0 0 0.15 20 normal

tag @s remove CraftedPotion1