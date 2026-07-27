# tellraw @a [{"score":{"name":"@s","objective":"health"}}]
execute as @s at @s store result score @s healthBefore run scoreboard players get @s health
execute as @s at @s run scoreboard players add @s health 2000000
scoreboard players set @s healthAfter 5
execute as @s at @s run scoreboard players operation @s health /= @s healthAfter
execute as @s at @s store result score @s healthAfter run data get entity @s Health 10000
scoreboard players operation @s healthAfter += @s healthBefore
execute as @s at @s store result entity @s Health double 0.0001 run scoreboard players operation @s healthAfter -= @s health
# tellraw @a [{"score":{"name":"@s","objective":"health"}}]
