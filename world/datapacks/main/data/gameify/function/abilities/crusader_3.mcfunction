execute as @s at @s run summon arrow ~ ~30 ~ {Tags:["ArrowRaining","ArrowRaining2"],Motion:[0d,-4d,0d]}
execute as @s at @s run summon arrow ~ ~27 ~ {Tags:["ArrowRaining","ArrowRaining2"],Motion:[0d,-3.5d,0d]}

execute as @e[tag=ArrowRaining2] at @s store result score @s random run random value 1..45
execute as @e[tag=ArrowRaining2] at @s if score @s random matches 1 run summon small_fireball ~ ~ ~ {Tags:["ArrowRaining","ArrowRaining2"],Motion:[0d,-2.5d,0d]}
execute as @e[tag=ArrowRaining2] at @s if score @s random matches 1 run kill @s

execute as @e[tag=ArrowRaining2,type=arrow] at @s store result score @s random run random value 1..5
execute as @e[tag=ArrowRaining2,type=arrow] at @s if score @s random matches 1 run data merge entity @s {crit:true}

execute as @e[tag=ArrowRaining2,type=arrow] at @s store result score @s random run random value 1..5
execute as @e[tag=ArrowRaining2,type=arrow] at @s if score @s random matches 1 run data merge entity @s {Fire:300s}

execute as @e[tag=ArrowRaining2,type=arrow] at @s store result score @s random run random value 1..5
execute as @e[tag=ArrowRaining2,type=arrow] at @s if score @s random matches 1 run data merge entity @s {crit:true}


execute as @e[tag=ArrowRaining2] at @s store result entity @s Motion[0] double 0.0001 run random value -3000..3000
execute as @e[tag=ArrowRaining2] at @s store result entity @s Motion[2] double 0.0001 run random value -3000..3000

execute as @e[tag=ArrowRaining2] at @s store result score @s posX run data get entity @s Pos[0] 10000
execute as @e[tag=ArrowRaining2] at @s store result score @s posY run data get entity @s Pos[1] 10000
execute as @e[tag=ArrowRaining2] at @s store result score @s posZ run data get entity @s Pos[2] 10000

execute as @e[tag=ArrowRaining2] at @s store result score @s random run random value -180000..180000
execute as @e[tag=ArrowRaining2] at @s store result entity @s Pos[0] double 0.0001 run scoreboard players operation @s posX += @s random
execute as @e[tag=ArrowRaining2] at @s store result score @s random run random value -100000..100000
execute as @e[tag=ArrowRaining2] at @s store result entity @s Pos[1] double 0.0001 run scoreboard players operation @s posY += @s random
execute as @e[tag=ArrowRaining2] at @s store result score @s random run random value -180000..180000
execute as @e[tag=ArrowRaining2] at @s store result entity @s Pos[2] double 0.0001 run scoreboard players operation @s posZ += @s random

execute as @e[tag=ArrowRaining2] at @s store result score @s random run random value 1..80
execute as @e[tag=ArrowRaining2] at @s if score @s random matches 1 run tag @s add ArrowRainingLightning

# execute as @e[tag=ArrowRaining2] at @s store result score @s random run random value 1..240
# execute as @e[tag=ArrowRaining2] at @s if score @s random matches 1 run tag @s add ArrowRainingExplode


tag @e[tag=ArrowRaining2] remove ArrowRaining2

execute as @s at @s as @a[distance=..36] at @s run effect give @s slowness 1 2 true

kill @s[scores={time=620..}]