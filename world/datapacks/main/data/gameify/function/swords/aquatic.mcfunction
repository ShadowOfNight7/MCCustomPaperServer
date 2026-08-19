execute as @s at @s store result score @s enchant.aquatic run data get entity @s SelectedItem.components."minecraft:enchantments"."gameify:aquatic"
execute as @s[nbt={SelectedItem:{id:"minecraft:trident"}}] at @s run scoreboard players operation @s enchant.aquatic += @s enchant.aquatic

attribute @s attack_damage modifier remove minecraft:1785368749353
execute as @s at @s if score @s enchant.aquatic matches 1 run attribute @s attack_damage modifier add minecraft:1785368749353 2 add_value
execute as @s at @s if score @s enchant.aquatic matches 2 run attribute @s attack_damage modifier add minecraft:1785368749353 4 add_value
execute as @s at @s if score @s enchant.aquatic matches 3 run attribute @s attack_damage modifier add minecraft:1785368749353 6 add_value
execute as @s at @s if score @s enchant.aquatic matches 4 run attribute @s attack_damage modifier add minecraft:1785368749353 8 add_value
execute as @s at @s if score @s enchant.aquatic matches 5 run attribute @s attack_damage modifier add minecraft:1785368749353 10 add_value
execute as @s at @s if score @s enchant.aquatic matches 6 run attribute @s attack_damage modifier add minecraft:1785368749353 12 add_value
execute as @s at @s if score @s enchant.aquatic matches 7 run attribute @s attack_damage modifier add minecraft:1785368749353 14 add_value
execute as @s at @s if score @s enchant.aquatic matches 8 run attribute @s attack_damage modifier add minecraft:1785368749353 16 add_value
execute as @s at @s if score @s enchant.aquatic matches 9 run attribute @s attack_damage modifier add minecraft:1785368749353 18 add_value
execute as @s at @s if score @s enchant.aquatic matches 10..254 run attribute @s attack_damage modifier add minecraft:1785368749353 20 add_value
execute as @s at @s if score @s enchant.aquatic matches 255.. run attribute @s attack_damage modifier add minecraft:1785368749353 510 add_value
execute as @s at @s if score @s enchant.aquatic matches 510.. run attribute @s attack_damage modifier add minecraft:1785368749353 1020 add_value

execute as @s at @s if score @s enchant.aquatic matches 3.. run effect give @s water_breathing 1 0 true

particle nautilus ~ ~1 ~ 0.55 0.55 0.55 0.05 1 normal