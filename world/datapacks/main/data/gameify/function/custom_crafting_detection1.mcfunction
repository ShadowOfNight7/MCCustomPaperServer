execute as @s if score @s posY matches 0 if score @s posX matches 0 run scoreboard players remove @s posZ 1
execute as @s if score @s posY matches 0 if score @s posX matches 0 run scoreboard players set @s posY 5

execute as @s if score @s posX matches 0 run scoreboard players remove @s posY 1
execute as @s if score @s posX matches 0 run scoreboard players set @s posX 5

execute as @s if block ~ ~ ~ spawner{components:{"minecraft:custom_data":{custom_crafting:1}}} align xyz positioned ~0.5 ~ ~0.5 unless entity @e[tag=CustomCrafter,distance=..0.5] run summon marker ~ ~ ~ {Tags:["CustomCrafter","CustomCrafterInitial"],NoGravity:true}
# setblock ~ ~ ~ bedrock

execute as @s unless entity @e[tag=CustomCrafterInitial] run scoreboard players remove @s posX 1
execute as @s if entity @e[tag=CustomCrafterInitial] run scoreboard players set @s posZ 0

execute as @s if score @s posX matches ..0 if score @s posY matches ..0 if score @s posZ matches 1.. positioned ~-4 ~-4 ~1 run function gameify:custom_crafting_detection1 with entity @s
execute as @s if score @s posX matches ..0 if score @s posY matches 1.. if score @s posZ matches 1.. positioned ~-4 ~1 ~ run function gameify:custom_crafting_detection1 with entity @s
execute as @s if score @s posX matches 1.. if score @s posZ matches 1.. positioned ~1 ~ ~ run function gameify:custom_crafting_detection1 with entity @s
