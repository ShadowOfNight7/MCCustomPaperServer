execute as @s[tag=BreakerArrow,nbt={inGround:true}] at @s run fill ~-0.1 ~-0.1 ~-0.1 ~0.1 ~0.1 ~0.1 air

execute store result score @s posX run data get entity @s Motion[0] 10000
execute store result score @s posY run data get entity @s Motion[1] 10000
execute store result score @s posZ run data get entity @s Motion[2] 10000

scoreboard players set @s blank -1
execute as @s at @s if score @s posX matches ..-1 run scoreboard players operation @s posX *= @s blank
execute as @s at @s if score @s posY matches ..-1 run scoreboard players operation @s posY *= @s blank
execute as @s at @s if score @s posZ matches ..-1 run scoreboard players operation @s posZ *= @s blank

execute as @s at @s unless score @s posX matches 5000.. unless score @s posY matches 5000.. unless score @s posZ matches 5000.. run kill @s
kill @s[scores={time=25..}]
