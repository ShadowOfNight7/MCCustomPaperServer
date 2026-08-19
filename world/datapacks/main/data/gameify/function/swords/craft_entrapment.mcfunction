execute as @s at @s if entity @e[type=item,nbt={Item:{id:"minecraft:string"}},distance=..3] if entity @e[type=item,nbt={Item:{id:"minecraft:cobweb"}},distance=..3] if entity @e[type=item,nbt={Item:{id:"minecraft:spider_eye"}},distance=..3] if entity @e[type=item,nbt={Item:{id:"minecraft:fermented_spider_eye"}},distance=..3] if entity @e[type=item,nbt={Item:{id:"minecraft:soul_sand"}},distance=..3] run tag @s add CraftedPotion1

execute as @s[tag=CraftedPotion1] at @s as @e[type=item,nbt={Item:{id:"minecraft:string"}},distance=..3,limit=1] at @s run function gameify:consume_item with entity @s
execute as @s[tag=CraftedPotion1] at @s as @e[type=item,nbt={Item:{id:"minecraft:cobweb"}},distance=..3,limit=1] at @s run function gameify:consume_item with entity @s
execute as @s[tag=CraftedPotion1] at @s as @e[type=item,nbt={Item:{id:"minecraft:spider_eye"}},distance=..3,limit=1] at @s run function gameify:consume_item with entity @s
execute as @s[tag=CraftedPotion1] at @s as @e[type=item,nbt={Item:{id:"minecraft:fermented_spider_eye"}},distance=..3,limit=1] at @s run function gameify:consume_item with entity @s
execute as @s[tag=CraftedPotion1] at @s as @e[type=item,nbt={Item:{id:"minecraft:soul_sand"}},distance=..3,limit=1] at @s run function gameify:consume_item with entity @s

execute as @s[tag=CraftedPotion1] at @s run summon item ~ ~ ~ {Item:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:stored_enchantments":{"gameify:entrapment":1}}}}
 
execute as @s[tag=CraftedPotion1] at @s run particle block{block_state:"minecraft:cobweb"} ~ ~ ~ 0 0 0 0.05 15 normal
execute as @s[tag=CraftedPotion1] at @s run fill ~ ~ ~ ~ ~ ~ air replace cobweb

execute as @s[tag=CraftedPotion1] at @s run function gameify:consume_item with entity @s

tag @s remove CraftedPotion1