execute as @s at @s if entity @e[type=item,nbt={Item:{id:"minecraft:rotten_flesh"}},distance=..0.7] if entity @e[type=item,nbt={Item:{id:"minecraft:glass_bottle"}},distance=..0.7] if entity @e[type=item,nbt={Item:{id:"minecraft:spider_eye"}},distance=..0.7] if entity @e[type=item,nbt={Item:{id:"minecraft:ink_sac"}},distance=..0.7] if entity @e[type=item,nbt={Item:{id:"minecraft:nether_wart"}},distance=..0.7] if entity @e[type=item,nbt={Item:{id:"minecraft:redstone"}},distance=..0.7] if entity @e[type=item,nbt={Item:{id:"minecraft:glistering_melon_slice"}},distance=..0.7] if entity @e[type=item,nbt={Item:{id:"minecraft:resin_clump"}},distance=..0.7] if entity @e[type=item,nbt={Item:{id:"minecraft:fermented_spider_eye"}},distance=..0.7] if entity @e[type=item,nbt={Item:{id:"minecraft:glow_ink_sac"}},distance=..0.7] if entity @e[type=item,nbt={Item:{id:"minecraft:closed_eyeblossom"}},distance=..0.7] if entity @e[type=item,nbt={Item:{id:"minecraft:pufferfish"}},distance=..0.7] if entity @e[type=item,nbt={Item:{id:"minecraft:sugar"}},distance=..0.7] if entity @e[type=item,nbt={Item:{id:"minecraft:sponge"}},distance=..0.7] if entity @e[type=item,nbt={Item:{id:"minecraft:honeycomb"}},distance=..0.7] if entity @e[type=item,nbt={Item:{id:"minecraft:glowstone_dust"}},distance=..0.7] if entity @e[type=item,nbt={Item:{id:"minecraft:echo_shard"}},distance=..0.7] if entity @e[type=item,nbt={Item:{id:"minecraft:rabbit_stew"}},distance=..0.7] if entity @e[type=item,nbt={Item:{id:"minecraft:wither_rose"}},distance=..0.7] if entity @e[type=item,nbt={Item:{id:"minecraft:netherite_scrap"}},distance=..0.7] if entity @e[type=item,nbt={Item:{id:"minecraft:breeze_rod"}},distance=..0.7] run tag @s add CraftedPotion1

execute as @s[tag=CraftedPotion1] at @s as @e[type=item,nbt={Item:{id:"minecraft:rotten_flesh"}},distance=..0.7,limit=1] at @s run function gameify:consume_item with entity @s
execute as @s[tag=CraftedPotion1] at @s as @e[type=item,nbt={Item:{id:"minecraft:glass_bottle"}},distance=..0.7,limit=1] at @s run function gameify:consume_item with entity @s
execute as @s[tag=CraftedPotion1] at @s as @e[type=item,nbt={Item:{id:"minecraft:spider_eye"}},distance=..0.7,limit=1] at @s run function gameify:consume_item with entity @s
execute as @s[tag=CraftedPotion1] at @s as @e[type=item,nbt={Item:{id:"minecraft:ink_sac"}},distance=..0.7,limit=1] at @s run function gameify:consume_item with entity @s
execute as @s[tag=CraftedPotion1] at @s as @e[type=item,nbt={Item:{id:"minecraft:nether_wart"}},distance=..0.7,limit=1] at @s run function gameify:consume_item with entity @s
execute as @s[tag=CraftedPotion1] at @s as @e[type=item,nbt={Item:{id:"minecraft:redstone"}},distance=..0.7,limit=1] at @s run function gameify:consume_item with entity @s
execute as @s[tag=CraftedPotion1] at @s as @e[type=item,nbt={Item:{id:"minecraft:fermented_spider_eye"}},distance=..0.7,limit=1] at @s run function gameify:consume_item with entity @s
execute as @s[tag=CraftedPotion1] at @s as @e[type=item,nbt={Item:{id:"minecraft:glistering_melon_slice"}},distance=..0.7,limit=1] at @s run function gameify:consume_item with entity @s
execute as @s[tag=CraftedPotion1] at @s as @e[type=item,nbt={Item:{id:"minecraft:resin_clump"}},distance=..0.7,limit=1] at @s run function gameify:consume_item with entity @s
execute as @s[tag=CraftedPotion1] at @s as @e[type=item,nbt={Item:{id:"minecraft:glow_ink_sac"}},distance=..0.7,limit=1] at @s run function gameify:consume_item with entity @s
execute as @s[tag=CraftedPotion1] at @s as @e[type=item,nbt={Item:{id:"minecraft:closed_eyeblossom"}},distance=..0.7,limit=1] at @s run function gameify:consume_item with entity @s
execute as @s[tag=CraftedPotion1] at @s as @e[type=item,nbt={Item:{id:"minecraft:pufferfish"}},distance=..0.7,limit=1] at @s run function gameify:consume_item with entity @s
execute as @s[tag=CraftedPotion1] at @s as @e[type=item,nbt={Item:{id:"minecraft:sugar"}},distance=..0.7,limit=1] at @s run function gameify:consume_item with entity @s
execute as @s[tag=CraftedPotion1] at @s as @e[type=item,nbt={Item:{id:"minecraft:sponge"}},distance=..0.7,limit=1] at @s run function gameify:consume_item with entity @s
execute as @s[tag=CraftedPotion1] at @s as @e[type=item,nbt={Item:{id:"minecraft:honeycomb"}},distance=..0.7,limit=1] at @s run function gameify:consume_item with entity @s
execute as @s[tag=CraftedPotion1] at @s as @e[type=item,nbt={Item:{id:"minecraft:glowstone_dust"}},distance=..0.7,limit=1] at @s run function gameify:consume_item with entity @s
execute as @s[tag=CraftedPotion1] at @s as @e[type=item,nbt={Item:{id:"minecraft:echo_shard"}},distance=..0.7,limit=1] at @s run function gameify:consume_item with entity @s
execute as @s[tag=CraftedPotion1] at @s as @e[type=item,nbt={Item:{id:"minecraft:rabbit_stew"}},distance=..0.7,limit=1] at @s run function gameify:consume_item with entity @s
execute as @s[tag=CraftedPotion1] at @s as @e[type=item,nbt={Item:{id:"minecraft:wither_rose"}},distance=..0.7,limit=1] at @s run function gameify:consume_item with entity @s
execute as @s[tag=CraftedPotion1] at @s as @e[type=item,nbt={Item:{id:"minecraft:netherite_scrap"}},distance=..0.7,limit=1] at @s run function gameify:consume_item with entity @s
execute as @s[tag=CraftedPotion1] at @s as @e[type=item,nbt={Item:{id:"minecraft:breeze_rod"}},distance=..0.7,limit=1] at @s run function gameify:consume_item with entity @s

execute as @s[tag=CraftedPotion1] at @s run data merge entity @s {Item:{components:{"minecraft:enchantments":{"gameify:potion3":1}}}}
execute as @s[tag=CraftedPotion1] at @s run data remove entity @s Item.components."minecraft:enchantments"."gameify:potion2"

execute as @s[tag=CraftedPotion1] at @s run particle effect{color:1} ~ ~ ~ 0 0 0 0.5 100 normal
execute as @s[tag=CraftedPotion1] at @s run particle effect{color:65344} ~ ~ ~ 0 0 0 0.5 100 normal
execute as @s[tag=CraftedPotion1] at @s run particle effect{color:255} ~ ~ ~ 0 0 0 0.5 100 normal
execute as @s[tag=CraftedPotion1] at @s run particle effect{color:16770560} ~ ~ ~ 0 0 0 0.5 100 normal
execute as @s[tag=CraftedPotion1] at @s run particle effect{color:16711680} ~ ~ ~ 0 0 0 0.5 100 normal
execute as @s[tag=CraftedPotion1] at @s run particle effect{color:11403519} ~ ~ ~ 0 0 0 0.5 100 normal
execute as @s[tag=CraftedPotion1] at @s run particle effect{color:16711892} ~ ~ ~ 0 0 0 0.5 100 normal
execute as @s[tag=CraftedPotion1] at @s run particle effect{color:16759552} ~ ~ ~ 0 0 0 0.5 100 normal

tag @s remove CraftedPotion1