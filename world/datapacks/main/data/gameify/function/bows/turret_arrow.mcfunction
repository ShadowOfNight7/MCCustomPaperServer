execute store result score @s posX run data get entity @s Motion[0] 10000
execute store result score @s posY run data get entity @s Motion[1] 10000
execute store result score @s posZ run data get entity @s Motion[2] 10000

execute as @s at @s unless score @s posX matches 5000.. unless score @s posY matches 5000.. unless score @s posZ matches 5000.. run kill @s
kill @s[scores={time=25..}]
