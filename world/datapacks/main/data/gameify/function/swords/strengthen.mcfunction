execute as @s at @s store result score @s enchant.strengthen run data get entity @s SelectedItem.components."minecraft:enchantments"."gameify:strengthen"

attribute @s attack_damage modifier remove minecraft:1785368749352
execute as @s at @s if score @s enchant.strengthen matches 1 run attribute @s attack_damage modifier add minecraft:1785368749352 3 add_value
execute as @s at @s if score @s enchant.strengthen matches 2 run attribute @s attack_damage modifier add minecraft:1785368749352 6 add_value
execute as @s at @s if score @s enchant.strengthen matches 3 run attribute @s attack_damage modifier add minecraft:1785368749352 9 add_value
execute as @s at @s if score @s enchant.strengthen matches 4 run attribute @s attack_damage modifier add minecraft:1785368749352 12 add_value
execute as @s at @s if score @s enchant.strengthen matches 5 run attribute @s attack_damage modifier add minecraft:1785368749352 15 add_value
execute as @s at @s if score @s enchant.strengthen matches 6 run attribute @s attack_damage modifier add minecraft:1785368749352 18 add_value
execute as @s at @s if score @s enchant.strengthen matches 7 run attribute @s attack_damage modifier add minecraft:1785368749352 21 add_value
execute as @s at @s if score @s enchant.strengthen matches 8 run attribute @s attack_damage modifier add minecraft:1785368749352 24 add_value
execute as @s at @s if score @s enchant.strengthen matches 9 run attribute @s attack_damage modifier add minecraft:1785368749352 27 add_value
execute as @s at @s if score @s enchant.strengthen matches 10..254 run attribute @s attack_damage modifier add minecraft:1785368749352 30 add_value
execute as @s at @s if score @s enchant.strengthen matches 255 run attribute @s attack_damage modifier add minecraft:1785368749352 765 add_value
