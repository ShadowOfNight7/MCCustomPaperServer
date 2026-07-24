advancement revoke @s only gameify:placeblock

scoreboard players set @s posX 6
scoreboard players set @s posY 7
scoreboard players set @s posZ 6

execute as @s at @s positioned ^ ^ ^3 positioned ~-3 ~-3.5 ~-3 run function gameify:custom_crafting_detection1 with entity @s


execute as @e[tag=CustomCrafterInitial] at @s run fill ~ ~ ~ ~ ~ ~ dropper replace spawner

execute as @e[tag=CustomCrafterInitial] at @s align xyz run summon block_display ~-0.0005 ~-0.0005 ~-0.0005 {brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.001f,1.001f,1.001f]},block_state:{Name:"minecraft:respawn_anchor",Properties:{charges:"4"}}}

tag @e[tag=CustomCrafterInitial] remove CustomCrafterInitial

