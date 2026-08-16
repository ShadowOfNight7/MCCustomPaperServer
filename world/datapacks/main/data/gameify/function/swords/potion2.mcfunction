execute as @s at @s store result score @s enchant.potion run random value 1..100

execute as @s at @s if score @s enchant.potion matches 1..30 store result score @s enchant.potion run random value -5..-1

execute as @s at @s if score @s enchant.potion matches -1 run effect give @s darkness 5 0 false
execute as @s at @s if score @s enchant.potion matches -2 run effect give @s hunger 10 6 false
execute as @s at @s if score @s enchant.potion matches -3 run effect give @s poison 7 2 false
execute as @s at @s if score @s enchant.potion matches -4 run effect give @s weakness 5 0 false
execute as @s at @s if score @s enchant.potion matches -5 run effect give @s[type=#undead] instant_health 1 1 false
execute as @s at @s if score @s enchant.potion matches -5 run effect give @s[type=!#undead] instant_damage 1 1 false