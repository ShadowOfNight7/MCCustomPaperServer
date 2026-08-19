execute as @s at @s store result score @s enchant.potion run random value 1..100

execute as @s at @s if score @s enchant.potion matches 1..20 run particle effect{"color":0,power:1.5} ~ ~1 ~ 0.7 0.7 0.7 0.3 25 normal
execute as @s at @s if score @s enchant.potion matches 1..20 store result score @s enchant.potion run random value -3..-1

execute as @s at @s if score @s enchant.potion matches -1 run effect give @s darkness 3 0 false
execute as @s at @s if score @s enchant.potion matches -2 run effect give @s hunger 7 4 false
execute as @s at @s if score @s enchant.potion matches -3 run effect give @s poison 5 1 false