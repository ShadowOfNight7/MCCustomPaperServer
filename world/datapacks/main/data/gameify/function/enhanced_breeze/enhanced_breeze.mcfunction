

execute as @s at @s unless block ~ ~-0.2 ~ #air if score @s random matches 0 rotated -90 0 positioned ^ ^ ^0.2 run summon breeze_wind_charge ~ ~1 ~ {Motion:[0.5d,-0.07d,0d]}
execute as @s at @s unless block ~ ~-0.2 ~ #air if score @s random matches 0 rotated 90 0 positioned ^ ^ ^0.2 run summon breeze_wind_charge ~ ~1 ~ {Motion:[-0.5d,-0.07d,0d]}
execute as @s at @s unless block ~ ~-0.2 ~ #air if score @s random matches 0 rotated 0 0 positioned ^ ^ ^0.2 run summon breeze_wind_charge ~ ~1 ~ {Motion:[0d,-0.07d,0.5d]}
execute as @s at @s unless block ~ ~-0.2 ~ #air if score @s random matches 0 rotated 180 0 positioned ^ ^ ^0.2 run summon breeze_wind_charge ~ ~1 ~ {Motion:[0d,-0.07d,-0.5d]}

# execute as @s at @s unless block ~ ~-0.2 ~ #air if score @s random matches 0 run summon breeze_wind_charge ~ ~1.8 ~ {Motion:[-0.4d,-0.05d,-0.4d]}
# execute as @s at @s unless block ~ ~-0.2 ~ #air if score @s random matches 0 run summon breeze_wind_charge ~ ~1.8 ~ {Motion:[-0.4d,-0.05d,0.4d]}
# execute as @s at @s unless block ~ ~-0.2 ~ #air if score @s random matches 0 run summon breeze_wind_charge ~ ~1.8 ~ {Motion:[0.4d,-0.05d,0.4d]}
# execute as @s at @s unless block ~ ~-0.2 ~ #air if score @s random matches 0 run summon breeze_wind_charge ~ ~1.8 ~ {Motion:[0.4d,-0.05d,-0.4d]}


execute as @s at @s if block ~ ~-0.2 ~ #air run scoreboard players set @s random 0
execute as @s at @s unless block ~ ~-0.2 ~ #air run scoreboard players set @s random 1
