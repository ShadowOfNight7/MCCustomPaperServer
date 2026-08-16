execute as @s at @s if entity @e[type=item,nbt={Item:{id:"minecraft:rotten_flesh"}},distance=..0.7] if entity @e[type=item,nbt={Item:{id:"minecraft:glass_bottle"}},distance=..0.7] if entity @e[type=item,nbt={Item:{id:"minecraft:spider_eye"}},distance=..0.7] if entity @e[type=item,nbt={Item:{id:"minecraft:ink_sac"}},distance=..0.7] if entity @e[type=item,nbt={Item:{id:"minecraft:nether_wart"}},distance=..0.7] if entity @e[type=item,nbt={Item:{id:"minecraft:redstone"}},distance=..0.7] if entity @e[type=item,nbt={Item:{id:"minecraft:glistering_melon_slice"}},distance=..0.7] if entity @e[type=item,nbt={Item:{id:"minecraft:resin_clump"}},distance=..0.7] if entity @e[type=item,nbt={Item:{id:"minecraft:fermented_spider_eye"}},distance=..0.7] run tag @s add CraftedPotion1

execute as @s[tag=CraftedPotion1] at @s as @e[type=item,nbt={Item:{id:"minecraft:rotten_flesh"}},distance=..0.7,limit=1] at @s run function gameify:consume_item with entity @s
execute as @s[tag=CraftedPotion1] at @s as @e[type=item,nbt={Item:{id:"minecraft:glass_bottle"}},distance=..0.7,limit=1] at @s run function gameify:consume_item with entity @s
execute as @s[tag=CraftedPotion1] at @s as @e[type=item,nbt={Item:{id:"minecraft:spider_eye"}},distance=..0.7,limit=1] at @s run function gameify:consume_item with entity @s
execute as @s[tag=CraftedPotion1] at @s as @e[type=item,nbt={Item:{id:"minecraft:ink_sac"}},distance=..0.7,limit=1] at @s run function gameify:consume_item with entity @s
execute as @s[tag=CraftedPotion1] at @s as @e[type=item,nbt={Item:{id:"minecraft:nether_wart"}},distance=..0.7,limit=1] at @s run function gameify:consume_item with entity @s
execute as @s[tag=CraftedPotion1] at @s as @e[type=item,nbt={Item:{id:"minecraft:redstone"}},distance=..0.7,limit=1] at @s run function gameify:consume_item with entity @s
execute as @s[tag=CraftedPotion1] at @s as @e[type=item,nbt={Item:{id:"minecraft:fermented_spider_eye"}},distance=..0.7,limit=1] at @s run function gameify:consume_item with entity @s
execute as @s[tag=CraftedPotion1] at @s as @e[type=item,nbt={Item:{id:"minecraft:glistering_melon_slice"}},distance=..0.7,limit=1] at @s run function gameify:consume_item with entity @s
execute as @s[tag=CraftedPotion1] at @s as @e[type=item,nbt={Item:{id:"minecraft:resin_clump"}},distance=..0.7,limit=1] at @s run function gameify:consume_item with entity @s

execute as @s[tag=CraftedPotion1] at @s run data merge entity @s {Item:{components:{"minecraft:enchantments":{"gameify:potion2":1}}}}
execute as @s[tag=CraftedPotion1] at @s run data remove entity @s Item.components."minecraft:enchantments"."gameify:potion1"

execute as @s[tag=CraftedPotion1] at @s run particle effect{color:1} ~ ~ ~ 0 0 0 0.3 80 normal

tag @s remove CraftedPotion1