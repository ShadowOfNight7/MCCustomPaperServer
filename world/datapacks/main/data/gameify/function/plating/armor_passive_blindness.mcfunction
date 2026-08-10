execute store result score @s random run random value 1..1000

execute as @s at @s if score @s armorPassive.absorption matches 1 if score @s random matches 1..50 on attacker run effect give @s blindness 1 0 false

execute as @s at @s if score @s armorPassive.absorption matches 2 if score @s random matches 1..50 on attacker run effect give @s blindness 2 0 false

execute as @s at @s if score @s armorPassive.absorption matches 3 if score @s random matches 1..80 on attacker run effect give @s blindness 2 0 false

execute as @s at @s if score @s armorPassive.absorption matches 4 if score @s random matches 1..80 on attacker run effect give @s blindness 3 0 false

execute as @s at @s if score @s armorPassive.absorption matches 5 if score @s random matches 1..120 on attacker run effect give @s blindness 3 0 false

execute as @s at @s if score @s armorPassive.absorption matches 6 if score @s random matches 1..200 on attacker run effect give @s blindness 4 0 false
