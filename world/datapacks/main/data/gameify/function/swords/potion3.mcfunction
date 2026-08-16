execute as @s at @s store result score @s enchant.potion run random value 1..100

execute as @s at @s if score @s enchant.potion matches 1..40 store result score @s enchant.potion run random value -10..-1

execute as @s at @s if score @s enchant.potion matches -1 run effect give @s darkness 7 0 false
execute as @s at @s if score @s enchant.potion matches -2 run effect give @s hunger 10 7 false
execute as @s at @s if score @s enchant.potion matches -3 run effect give @s poison 10 3 false
execute as @s at @s if score @s enchant.potion matches -4 run effect give @s weakness 7 2 false
execute as @s at @s if score @s enchant.potion matches -5 run effect give @s[type=#undead] instant_health 1 2 false
execute as @s at @s if score @s enchant.potion matches -5 run effect give @s[type=!#undead] instant_damage 1 2 false
execute as @s at @s if score @s enchant.potion matches -6 run effect give @s blindness 4 0 false
execute as @s at @s if score @s enchant.potion matches -7 run effect give @s glowing 12 0 false
execute as @s at @s if score @s enchant.potion matches -8 run effect give @s nausea 7 0 false
execute as @s at @s if score @s enchant.potion matches -9 run effect give @s slowness 6 1 false
execute as @s at @s if score @s enchant.potion matches -10 run effect give @s mining_fatigue 15 2 false