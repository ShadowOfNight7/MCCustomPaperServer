execute as @s at @s if score @s time = @s posX store result score @s random run random value 1..10
execute as @s at @s if score @s time = @s posX if score @s random matches 1 facing entity @p feet positioned 0.001 0.001 0.001 positioned ^ ^ ^0.6 run summon interaction ~ ~ ~ {Tags:["DragonFireballGuide"]}
execute as @s at @s if score @s time = @s posX if score @s random matches 2 facing entity @p feet positioned 0.001 0.001 0.001 positioned ^ ^ ^0.8 run summon interaction ~ ~ ~ {Tags:["DragonFireballGuide"]}
execute as @s at @s if score @s time = @s posX if score @s random matches 3 facing entity @p feet positioned 0.001 0.001 0.001 positioned ^ ^ ^1 run summon interaction ~ ~ ~ {Tags:["DragonFireballGuide"]}
execute as @s at @s if score @s time = @s posX if score @s random matches 4 facing entity @p feet positioned 0.001 0.001 0.001 positioned ^ ^ ^1.2 run summon interaction ~ ~ ~ {Tags:["DragonFireballGuide"]}
execute as @s at @s if score @s time = @s posX if score @s random matches 5 facing entity @p feet positioned 0.001 0.001 0.001 positioned ^ ^ ^1.4 run summon interaction ~ ~ ~ {Tags:["DragonFireballGuide"]}
execute as @s at @s if score @s time = @s posX if score @s random matches 6 facing entity @p feet positioned 0.001 0.001 0.001 positioned ^ ^ ^1.6 run summon interaction ~ ~ ~ {Tags:["DragonFireballGuide"]}
execute as @s at @s if score @s time = @s posX if score @s random matches 7 facing entity @p feet positioned 0.001 0.001 0.001 positioned ^ ^ ^1.8 run summon interaction ~ ~ ~ {Tags:["DragonFireballGuide"]}
execute as @s at @s if score @s time = @s posX if score @s random matches 8 facing entity @p feet positioned 0.001 0.001 0.001 positioned ^ ^ ^2 run summon interaction ~ ~ ~ {Tags:["DragonFireballGuide"]}
execute as @s at @s if score @s time = @s posX if score @s random matches 9 facing entity @p feet positioned 0.001 0.001 0.001 positioned ^ ^ ^2.2 run summon interaction ~ ~ ~ {Tags:["DragonFireballGuide"]}
execute as @s at @s if score @s time = @s posX if score @s random matches 10 facing entity @p feet positioned 0.001 0.001 0.001 positioned ^ ^ ^2.4 run summon interaction ~ ~ ~ {Tags:["DragonFireballGuide"]}
execute as @s at @s if score @s time = @s posX store result entity @s Motion[0] double 0.0001 run data get entity @e[tag=DragonFireballGuide,limit=1] Pos[0] 10000
execute as @s at @s if score @s time = @s posX store result entity @s Motion[1] double 0.0001 run data get entity @e[tag=DragonFireballGuide,limit=1] Pos[1] 10000
execute as @s at @s if score @s time = @s posX store result entity @s Motion[2] double 0.0001 run data get entity @e[tag=DragonFireballGuide,limit=1] Pos[2] 10000

execute as @s[scores={time=1}] at @s store result entity @s Motion[0] double 0.0001 run random value -4000..4000
execute as @s[scores={time=1}] at @s store result entity @s Motion[2] double 0.0001 run random value -4000..4000

execute as @s[scores={time=1}] at @s store result score @s posX run random value 30..80

execute as @s at @s if score @s time = @s posX run kill @e[tag=DragonFireballGuide]